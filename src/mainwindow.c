#include "mainwindow.h"

struct mainwindow *mainwindow_init(struct mainwindow *self){
    self->window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    self->da_area = gtk_drawing_area_new();

    gtk_window_set_title(GTK_WINDOW(self->window), "tiled");
    //gtk_window_fullscreen(GTK_WINDOW(self->window));
    gtk_window_set_decorated(GTK_WINDOW(self->window), FALSE);
    gtk_window_maximize(GTK_WINDOW(self->window));
    
    gtk_container_add(GTK_CONTAINER(self->window), self->da_area);

    g_signal_connect(G_OBJECT(self->window), "destroy", G_CALLBACK(mainwindow_close), self);
    g_signal_connect(G_OBJECT(self->da_area), "draw", G_CALLBACK(mainwindow_draw), self);
    g_timeout_add(100, mainwindow_reorder, self);
    g_timeout_add(100, mainwindow_getpos, self);
    g_signal_connect(G_OBJECT(self->window), "screen-changed", G_CALLBACK(mainwindow_changed), self);

    //graph
    gtk_widget_set_hexpand(self->da_area, TRUE);
    gtk_widget_set_vexpand(self->da_area, TRUE);

    gtk_widget_show_all(self->window);

    //xdo
    self->xdo = xdo_new(NULL);
    xdo_get_focused_window_sane(self->xdo, &self->moving);
    g_print("%lu\n", self->moving);

    //layout
    dlist_init(&self->layout);
    dlist_push_back(&self->layout, &zone_init(malloc(sizeof(struct zone)), 0, 0, 800, 600)->node);

    //transparent
    gtk_widget_set_app_paintable(self->window, TRUE);
    self->supports_alpha = FALSE;

    return self;
}
void mainwindow_free(struct mainwindow *self){
    xdo_free(self->xdo);
    DLIST_POPEACH_CONT(struct zone, n, &self->layout, node){
        zone_free(n);
        free(n);
    }
    gtk_main_quit();
}

void mainwindow_draw(GtkWidget *widget, cairo_t *cr, gpointer data){
    struct mainwindow *self = (struct mainwindow*)data;
    GtkStyleContext *context;
    guint width, height;

    width = gtk_widget_get_allocated_width(self->da_area);
    height = gtk_widget_get_allocated_height(self->da_area);

    if(self->supports_alpha){
        cairo_save(cr);
        context = gtk_widget_get_style_context(self->da_area);
        gtk_render_background(context, cr, 0, 0, width, height);
        cairo_set_source_rgba(cr, 0, 0, 0, 0.5);
        cairo_set_operator(cr, CAIRO_OPERATOR_SOURCE);
        cairo_paint(cr);
        cairo_restore(cr);
    }
    else{
        context = gtk_widget_get_style_context(self->da_area);
        gtk_render_background(context, cr, 0, 0, width, height);
    }

    DLIST_FOREACH_CONT(struct zone, n, &self->layout, node){
        zone_draw(n, cr);
    }
}

void mainwindow_close(GtkWidget *widget, gpointer *data){
    struct mainwindow *self = (struct mainwindow*)data;
    mainwindow_free(self);
}

int mainwindow_reorder(void *data){
    struct mainwindow *self = (struct mainwindow*)data;
    xdo_raise_window(self->xdo, self->moving);
    g_print("%lu\n", self->moving);
    g_timeout_add(100, mainwindow_reorder, self);
    gtk_widget_queue_draw(self->window);
}

int mainwindow_getpos(void *data){
    struct mainwindow *self = (struct mainwindow*)data;
    int x, y, screen;
    xdo_get_mouse_location(self->xdo, &x, &y, &screen);
    g_timeout_add(100, mainwindow_getpos, self);
    g_print("%i, %i, %i\n", x, y, screen);

    DLIST_FOREACH_CONT(struct zone, n, &self->layout, node){
        if(zone_inside(n, x, y)){
            xdo_set_window_size(self->xdo, self->moving, n->width, n->height, 0);
            xdo_move_window(self->xdo, self->moving, n->x, n->y);
            break;
        }
    }
    gtk_widget_queue_draw(self->window);
}

void mainwindow_changed(GtkWidget *widget, GdkScreen *old_screen, gpointer data){
    struct mainwindow *self = (struct mainwindow*)data;
    GdkScreen *screen = gtk_widget_get_screen(self->window);
    GdkVisual *visual = gdk_screen_get_rgba_visual(screen);

    if(!visual){
        g_print("Screen does not support alpha channels\n");
        visual = gdk_screen_get_system_visual(screen);
        self->supports_alpha = FALSE;
    }
    else{
        g_print("Screen suppots alpha");
        self->supports_alpha = TRUE;
        gtk_widget_set_visual(widget, visual);
    }

}

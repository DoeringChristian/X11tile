#include "zone.h"

struct zone *zone_init(struct zone *self, uint x, uint y, uint width, uint height){
    self->x = x;
    self->y = y;
    self->width = width;
    self->height = height;
    return self;
}
void zone_free(struct zone *self){

}

void zone_draw(struct zone *self, cairo_t *cr){
    cairo_set_line_width(cr, 2);
    cairo_rectangle(cr, self->x, self->y, self->width, self->height);
    gdk_cairo_set_source_rgba(cr, &(GdkRGBA){.red = 0, .green = 100, .blue = 255, .alpha = 255});
    cairo_stroke(cr);
    gdk_cairo_set_source_rgba(cr, &(GdkRGBA){.red = 0, .green = 100, .blue = 255, .alpha = 50});
    cairo_stroke_preserve(cr);
    cairo_fill(cr);
}

uint8_t zone_inside(struct zone *self, uint x, uint y){
    return x > self->x && x < self->x+self->width && y > self->y && y < self->y+self->height;
}

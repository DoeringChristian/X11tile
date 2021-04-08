#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <xdo.h>
#include <unistd.h>
#include "mainwindow.h"
#include <gdk/gdkx.h>

int main(int argc, char **argv){
    gtk_init(&argc, &argv);

    struct xdo *x = xdo_new(NULL);
    Window win;
    xdo_get_focused_window_sane(x, &win);
    

    struct mainwindow mainwindow;

    mainwindow_init(&mainwindow);

    Window mw = gdk_x11_window_get_xid(gtk_widget_get_window(mainwindow.window));

    xdo_raise_window(x, win);
    xdo_free(x);

    gtk_main();

    return 0;
}


/*
int main(){
  
  struct xdo *x = xdo_new(NULL);
  
  Window win;
  
  xdo_get_focused_window_sane(x, &win);

  xdo_raise_window(x, win);
  
  xdo_set_window_size(x, win, 800, 600, 0);
  
  xdo_free(x);
  
  return 0;
}*/

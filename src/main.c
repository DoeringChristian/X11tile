#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <xdo.h>
#include <unistd.h>
#include "mainwindow.h"
#include <gdk/gdkx.h>
#include "layout.h"

int main(int argc, char **argv){
    gtk_init(&argc, &argv);
    
    struct mainwindow mainwindow;
    
    FILE *fp;

    if(argc < 0 || !(fp = fopen("/home/doeringc/Projects/tiled02/build/test.txt", "r"))){
        return 0;
    }

    mainwindow_init(&mainwindow, fp);

    g_print("test\n");

    gtk_main();

    fclose(fp);

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

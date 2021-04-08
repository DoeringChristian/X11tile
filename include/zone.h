#ifndef ZONE_H
#define ZONE_H

#include <gtk/gtk.h>
#include "dlist.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <cairo.h>

typedef unsigned int uint;

struct zone{
    struct dlist node;
    uint x, y, width, height;
};

struct zone *zone_init(struct zone *self, uint x, uint y, uint width, uint height);
void zone_free(struct zone *self);

void zone_draw(struct zone *self, cairo_t *cr);
uint8_t zone_inside(struct zone *self, uint x, uint y);

#endif //ZONE_H

#ifndef LAYOUT_H
#define LAYOUT_H

#include "dlist.h"
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <zone.h>
#include <gtk/gtk.h>

enum layout_states{
    START,
};

struct dlist *layout_init(struct dlist *self, FILE *fp, uint screen_widht, uint screen_height);
void layout_free(struct dlist *self);

#endif //LAYOUT_H

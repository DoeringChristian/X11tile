#ifndef LAYOUT_H
#define LAYOUT_H

#include "dlist.h"

enum layout_states{
    START,
};

struct dlist *layout_init(struct dlist *self, char *src);
void layout_free(struct dlist *self);

#endif //LAYOUT_H

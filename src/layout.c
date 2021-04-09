#include "layout.h"

struct dlist *layout_init(struct dlist *self, FILE *fp, uint screen_width, uint screen_height){
    char name[100];
    double x, y, width, height;
    /*while(0 < fscanf(fp, "-zone: \
                            name = \"%100[0-9a-zA-Z]\"%*[ \n]\
                            x = %lf \
                            y = %lf \
                            width = %lf \
                            height = %lf ", name, &x, &y, &width, &height)){*/
#if 1
    while(fscanf(fp, "-zone: name = \"%100[0-9a-zA-Z]\" ", name) > 0 &&
            fscanf(fp, " x = %lf ", &x) >= 0 &&
            fscanf(fp, " y = %lf ", &y) >= 0 &&
            fscanf(fp, " width = %lf ", &width) > 0 &&
            fscanf(fp, " height = %lf ", &height)){
        char *name_zone = malloc(sizeof(char)*(strlen(name)+1));
        strcpy(name_zone, name);
        dlist_push_back(self, &zone_init(malloc(sizeof(struct zone)), name_zone, (uint)(x*screen_width), (uint)(y*screen_height), (uint)(width*screen_width), (uint)(height*screen_height))->node);
        g_print("name: %s, x: %d, y: %d, widht: %d, height: %d\n", name_zone, (uint)(x*screen_width), (uint)(y*screen_height), (uint)(width*screen_width), (uint)(height*screen_height));
        g_print("rel: x: %lf, y: %lf, width: %lf, height: %lf file_pos: %li\n", x, y, width, height, ftell(fp));
    }
#else
    printf("test: %d\n", fscanf(fp, "-zone:%*[ \n]"));
    fgets(name, 100, fp);
    g_print("test: %s\n", name);
    //if(fscanf(fp, "-zone: ") > 0 )
    //    g_print("zone\n");
    if(fscanf(fp, " name = \"%100[0-9a-zA-Z]\" ", name) > 0)
        g_print("name\n");
    if(fscanf(fp, " x = %lf ", &x) >= 0)
        g_print("x\n");
    if(fscanf(fp, " y = %lf ", &y) >= 0)
        g_print("y\n");
    if(fscanf(fp, " width = %lf ", &width) > 0)
        g_print("width\n");
    if(fscanf(fp, " height = %lf ", &height) >= 0)
        g_print("height\n");
#endif

    return self;
}
void layout_free(struct dlist *self){
    DLIST_POPEACH_CONT(struct zone, n, self, node){
        free(n->name);
        zone_free(n);
        free(n);
    }
}



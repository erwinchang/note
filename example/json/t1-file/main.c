#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

#include "json.h"


void getValByKey(json_object* jobj, const char *sname)
{
    json_object *pval =NULL;
    enum json_type type;
    pval = json_object_object_get(jobj, sname);

    if(NULL != pval){
        type = json_object_get_type(pval);
        switch(type)
        {
            case json_type_string:
                printf("key:%s, value:%s\n",sname,json_object_get_string(pval));
                break;
            case json_type_int:
                printf("key:%s, value:%d\n",sname,json_object_get_int(pval));
                break;
            default:
                printf("default: key:%s\n",sname);
                break;
        }
    }
}

int main(void)
{
    json_object *pobj = NULL;
    pobj = json_object_from_file("/root/t1.json");
    getValByKey(pobj,"green");
    json_object_object_del(pobj,"red");
    json_object_object_add(pobj,"black",json_object_new_string("#000"));
    json_object_object_add(pobj,"iblack",json_object_new_int(0));
    getValByKey(pobj,"iblack");

    json_object_to_file("/tmp/t1-new.json",pobj);
    return 0;
}

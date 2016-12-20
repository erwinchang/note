#include <gtk/gtk.h>

gboolean motion_event_handler(
        GtkWidget *widget, GdkEventMotion *event, gpointer data){

    char pos[20];

    sprintf(pos, "(%d, %d)", (int) event->x, (int) event->y);
    gtk_window_set_title(GTK_WINDOW(widget),pos);

    return FALSE;
}

int main(int argc, char *argv[]){
    GtkWidget *window;

    gtk_init(&argc, &argv);

    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);

    g_signal_connect(GTK_OBJECT(window),"destory",
            G_CALLBACK(gtk_main_quit),NULL);

    gtk_widget_add_events(window, GDK_POINTER_MOTION_MASK);

    g_signal_connect(GTK_OBJECT(window), "motion_notify_event",
            G_CALLBACK(motion_event_handler),NULL);

    gtk_widget_show(window);

    gtk_main();

    return 0;
}

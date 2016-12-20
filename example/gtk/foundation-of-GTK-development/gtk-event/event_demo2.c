#include <gtk/gtk.h>

void button_clicked_callback(GtkWidget *button, gpointer data){
    g_print("clicked process\n");
}

gboolean button_press_callback(
        GtkWidget *button, GdkEvent *event, gpointer data){
    GdkEventType type = event->type;

        g_print("button_press_event (x:%d,y:%d)\n",
                (gint)event->button.x, (gint) event->button.y);
    return TRUE;
}

int main(int argc, char *argv[]){
    GtkWidget *window;
    GtkWidget *button;

    gtk_init(&argc,&argv);
    window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(window),"Hello GTK+!");

    button = gtk_button_new_with_label("click me");
    gtk_container_add(GTK_CONTAINER(window),button);

    g_signal_connect(GTK_OBJECT(button), "button_press_event",
                G_CALLBACK(button_press_callback),NULL);

    g_signal_connect(GTK_OBJECT(button), "clicked",
                G_CALLBACK(button_clicked_callback),NULL);

    g_signal_connect(GTK_OBJECT(button), "destroy",
                G_CALLBACK(gtk_main_quit),NULL);

    gtk_widget_show(window);
    gtk_widget_show(button);

    gtk_main();

    return 0;
}

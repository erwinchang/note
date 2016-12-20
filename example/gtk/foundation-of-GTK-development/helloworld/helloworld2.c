#include <gtk/gtk.h>

static void destroy (GtkWidget*, gpointer);
static gboolean delete_event (GtkWidget *, GdkEvent *, gpointer);

int main(int argc,
        char *argv[])
{
    GtkWidget *window, *label;

    gtk_init(&argc,&argv);

    window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title (GTK_WINDOW (window), "Hello World");
    gtk_container_set_border_width (GTK_CONTAINER (window),10);
    gtk_widget_set_size_request (window, 200, 100);

    /* Connect the main window to the destory and delete-event signal */
    g_signal_connect (G_OBJECT(window), "destroy",
            G_CALLBACK(destroy), NULL);

    g_signal_connect (G_OBJECT (window), "delete_event",
            G_CALLBACK(delete_event), NULL);

    /* Create a new GtkLabel widget that is selectable */
    label = gtk_label_new ("Hello World");
    //label = gtk_label_new (NULL);
    //gtk_label_set_markup(GTK_LABEL(label),"<span style=\"italic\">Hello World</span>");
    //gtk_label_set_markup(GTK_LABEL(label),"<span foreground='blue' size='x-large'>Hello World</span>");
    gtk_label_set_selectable (GTK_LABEL (label), TRUE);

    /* Add the label as a child widget of the window. */
    gtk_container_add (GTK_CONTAINER (window), label);
    gtk_widget_show_all (window);

    gtk_main();
    return 0;
}

/*Stop the GTK+ main loop function when the window is destroyed. */
static void
destroy (GtkWidget *window,
        gpointer data)
{
    gtk_main_quit();
}

/* Return FALSE to destroy the widget. By return TRUE, you can cancel
 * a delete-event */
static gboolean
delete_event (GtkWidget *window,
        GdkEvent *event,
        gpointer data)
{
    return FALSE;
}


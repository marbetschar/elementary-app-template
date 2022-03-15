/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
*/

public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.yourusername.yourrepositoryname",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var counter_widget = new CounterWidget();

        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = _("Hello World")
        };
        
        main_window.add (counter_widget);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
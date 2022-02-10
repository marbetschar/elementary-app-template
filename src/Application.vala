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
        var counter = new Counter ();
        var counter_label = new Gtk.Label ("") {
            expand = true
        };

        counter.bind_property ("value", counter_label, "label", BindingFlags.SYNC_CREATE, null, null);

        var increment_button = new Gtk.Button.with_label ("+") {
            width_request = 64
        };
        var decrement_button = new Gtk.Button.with_label ("-") {
            width_request = 64
        };

        increment_button.clicked.connect (() => {
            counter.increment ();
        });

        decrement_button.clicked.connect (() => {
            counter.decrement ();
        });

        var grid = new Gtk.Grid () {
            expand = true
        };
        grid.add (decrement_button);
        grid.add (counter_label);
        grid.add (increment_button);

        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = _("Hello World")
        };
        main_window.add (grid);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
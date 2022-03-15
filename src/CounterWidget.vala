/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
*/

public class CounterWidget : Gtk.Grid {

    construct {
        expand = true;

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

        add (decrement_button);
        add (counter_label);
        add (increment_button);
    }
}
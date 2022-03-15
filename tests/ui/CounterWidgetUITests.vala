/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
*/

int main(string[] args) {
    Gtk.test_init (ref args);

    Test.add_func("/UITests/CounterWidget/init", () => {
        var widget = new CounterWidget ();

        var increment_button = Gtk.test_find_widget (widget, "+", typeof (Gtk.Button));
        assert_true (increment_button != null);

        var decrement_button = Gtk.test_find_widget (widget, "-", typeof (Gtk.Button));
        assert_true (decrement_button != null);

        var counter_label = Gtk.test_find_widget (widget, "0", typeof (Gtk.Label));
        assert_true (counter_label != null);
    });

    Test.add_func("/UITests/CounterWidget/increment", () => {
        var window = new Gtk.Window ();
        var widget = new CounterWidget ();
        window.add (widget);
        window.show_all ();

        var increment_button = (Gtk.Button) Gtk.test_find_widget (widget, "+", typeof (Gtk.Button));
        assert_true (increment_button != null);
        increment_button.clicked ();

        var counter_label = Gtk.test_find_widget (widget, "1", typeof (Gtk.Label));
        assert_true (counter_label != null);
    });

    Test.add_func("/UITests/CounterWidget/decrement", () => {
        var window = new Gtk.Window ();
        var widget = new CounterWidget ();
        window.add (widget);
        window.show_all ();

        var decrement_button = (Gtk.Button) Gtk.test_find_widget (widget, "-", typeof (Gtk.Button));
        assert_true (decrement_button != null);
        decrement_button.clicked ();

        var counter_label = Gtk.test_find_widget (widget, "-1", typeof (Gtk.Label));
        assert_true (counter_label != null);
    });

    return Test.run();
}
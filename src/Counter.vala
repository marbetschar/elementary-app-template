/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
*/

class Counter : GLib.Object {

    public int value { get; private set; }

    public void increment () {
        value += 1;
    }

    public void decrement () {
        value -= 1;
    }
}
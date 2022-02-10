/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
*/

int main(string[] args) {
    Test.init (ref args);

    Test.add_func("/Counter/init", () => {
        var counter = new Counter ();
        assert_true (0 == counter.value);
    });

    Test.add_func("/Counter/increment", () => {
        var counter = new Counter ();
        counter.increment ();
        assert_true (1 == counter.value);
    });

    Test.add_func("/Counter/decrement", () => {
        var counter = new Counter ();
        counter.decrement ();
        assert_true (-1 == counter.value);
    });

    return Test.run();
}
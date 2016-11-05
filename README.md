# bootstrap-monitor
Bootstrap 4 monitoring system designed to help tracking class changes.

Note this is just a report starter and a convenience wrapper for
[diff-css](https://github.com/fantasyui-com/diff-css), comments welcome.

# Installation

run the install task to install all dependencies (manually install node 7)

    make install

# Usage

Just run make, it will download some zip files the first time, so it will take a few seconds.

    make

run ```make json``` to use a json reporter.

# Example Report

    $ make
    diff-css alpha-4.css alpha-5.css
    Comparing [alpha-4.css] against [alpha-5.css]
    Older has 687 selectors
    Newer has 706 selectors

    List of alpha-4.css classes removed from alpha-5.css:

    .img-circle
    .img-rounded
    .m-a-0
    .m-a-1
    .m-a-2
    .m-a-3
    .m-b-0
    .m-b-1
    ...

    List of new classes added to alpha-5.css:

    .align-baseline
    .align-bottom
    .align-middle
    .align-text-bottom
    .align-text-top
    .align-top
    .col-lg
    .col-md
    .col-sm
    .col-xl
    .col-xs
    ...

view actual report [alpha-4-vs-alpha-5.md](alpha-4-vs-alpha-5.md)

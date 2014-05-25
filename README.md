# dotfiles

These are my configuration files for various programs.
Snippets come from all sorts of places and I try to give
proper credit where due.

## Installation

The recommended way to install these dotfiles on a new machine is to clone this
repo using Git and to link the files using RCM.

Install Git by running the following command.

    sudo apt-get install -y git

Install RCM by following the [instructions in the RCM
Readme](https://github.com/thoughtbot/rcm#Installation).

Then run the following commands to finish the installation.

    git clone https://github.com/Koronen/dotfiles ~/.dotfiles
    ~/.dotfiles/script/bootstrap
    rcup

### FASD

To enable quick file and directory access, please [install FASD](https://github.com/clvv/fasd).

### Powerline fonts

To install the Powerline fonts, please see instructions on the
[Powerline docs](https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation).

### Solarized colorscheme

In order for the solarized colorscheme to work properly,
please load the palette into your terminal emulator.

 * [gnome-terminal-colors-solarized](https://github.com/sigurdga/gnome-terminal-colors-solarized)

## License

Copyright (C) 2011-2014 by Victor Koronen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

# AllWize Boards Arduino IDE Integration

Boards definition and custom bootloaders for:

### AllWize K2 ###
  
  * Wiki Page: http://wiki.allwize.io/index.php?title=Allwize_K2
  * Github repository: https://github.com/AllWize/AllWizeK2-hardware
  * Store: https://www.allwize.io/product-page/the-allwize-k2

![AllWize K2](http://wiki.allwize.io/images/thumb/5/59/20190504_231200s.jpg/800px-20190504_231200s.jpg)

## Installing with Boards Manager

Starting with 1.6.4, Arduino allows installation of third-party platform packages using Boards Manager. 

* Install the current upstream Arduino IDE at the 1.8.7 level or later. The current version is on the Arduino website.
* Start Arduino and open the Preferences window.
* Enter https://raw.githubusercontent.com/AllWize/allwize-boards/master/package_allwize_boards_index.json into the Additional Board Manager URLs field. You can add multiple URLs, separating them with commas.
* Open Boards Manager from Tools > Board menu and install "Allwize SAMD Boards (32-bits ARM Cortex-M0+)"
* Don't forget to select your AllWize board from Tools > Board menu after installation.

## License

Most of the code in this repository is licensed under Lesser GPL 2.1 by Arduino LCC.
For the rest:

Copyright (C) 2018-2019 by AllWize ([http://allwize.io](http://allwize.io))

AllWize library is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

AllWize library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with AllWize library.  If not, see <http://www.gnu.org/licenses/>.

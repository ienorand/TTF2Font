TTF2Font is a utility program designed to create font bitmaps for Cube Engine
	games, it works by taking a Truetype font and building it into a set of
	coordinates in an image. It was created by Quinton "quin" Reeves and
	Lee "eihrul" Salzman, to assist Joshua L. "verbalshadow" Blocher in his
	creation of content for Blood Frontier.

Contents

    * 1 Download
    * 2 Usage
          o 2.1 -?
          o 2.2 -hS
          o 2.3 -fS
          o 2.4 -nS
          o 2.5 -iN
          o 2.6 -sN
          o 2.7 -pN
          o 2.8 -dN
          o 2.9 -oN
          o 2.10 -gN
          o 2.11 -qN
          o 2.12 -cN
    * 3 Changes
          o 3.1 v0.1
          o 3.2 v0.2
          o 3.3 v0.3
    * 4 Licenses
		  o 4.1 Source Code License
		  o 4.2 Font License

Download

	Please see http://bloodfrontier.com/TTF2Font for further information.

Usage

	The program will create two files upon proper execution, based on the name
	of the font you provide it. Should you wish to use this as your default
	font in game, you will need to rename the config file "font.cfg" (and
	optionally, rename the image "font.png") and then update the config file
	accordingly. The font will not work in the game as output by the program,
	you must edit it.

	Below are the command line parameters that allow control over the
	operation of the program.

-?
	Shows the usage help for the program.

-hS
	Sets the home directory to S, which defaults to the current directory (".")
	This is an alternative location in which to look for files, and also output
	the files the program creates.
	
-fS
	Specifies the path to the Truetype font to use. This argument is required
	for proper operation.
	
-nS
	Provides the name of the output as S, which defaults to "default". The file
	names, and "font name" will be named with this.
	
-iN
	Sets the initial dimensions for the generated image to N, which defaults
	to "512". If the program exceeds this size it will increase this value
	until it is able to produce a working image. Images may only be powers of
	two in size, if it is not, the program will adjust it automatically.
	
-sN
	Defines the point size of the font to use to N, which defaults to "56".
	
-pN
	Adds N pixels of padding around each character, which defaults to "1".
	This is useful if pixels "bleed" into the characters around it. The
	generated dimensions of each character will not include this space when
	displayed in game.
	
-dN
	Create a shadow behind each character with an offset of N, which defaults
	to "2". This helps make characters more readable when the background is
	bright, while also creating a nice depth effect.
	
-oN
	Use an outline around the entire character for a shadow if N, which defaults
	to "1". This uses the depth shadow argument to determine its size.
	
-gN
	Sets the game which you are making the font for to N (range: 0..2), which
	defaults to "0" (no game). Valid values are:

    * 0: No game, neutral file output which must be edited
    * 1: Sauerbraten (and derivatives)
    * 2: AssaultCube
    * 3: Blood Frontier
	
-qN
	Makes Truetype fonts render with quality N (range: 0..2), which defaults
	to "2". A value of "2" will antialias characters it renders, "1" will do
	a simple blend on them, while "0" will not enhance them at all.
	
-cN
	Compresses the generated PNG image at level N (range: 0..9), which
	defaults to "1" (or "Best Speed"). Higher values will compress the image
	more at the expense of longer loading times. 
	
Changes

v0.1
    * initial release 

v0.2
    * alpha blending fixes
    * -w arg to supress win32 msg boxes 

v0.3
    * -o arg to use an outline around the glyph
    * -g arg to set output game format
    * -n arg to set the name of the output 

Licenses

Source Code
	Blood Frontier is based on the Sauerbraten game engine, both of which are
	covered under the ZLIB license. You may use the source code so long as you
	obey this license, for further information see:

		http://www.opensource.org/licenses/zlib-license.php

	Blood Frontier, Copyright (C) 2006-2008
		Tony "acord" Cord, Quinton "quin" Reeves

	Sauerbraten, Copyright (C) 2001-2008
		Wouter "aardappel" van Oortmerssen, Lee "eihrul" Salzman

	This software is provided 'as-is', without any express or implied
	warranty.  In no event will the authors be held liable for any damages
	arising from the use of this software.

	Permission is granted to anyone to use this software for any purpose,
	including commercial applications, and to alter it and redistribute it
	freely, subject to the following restrictions:

	1. The origin of this software must not be misrepresented; you must not
	   claim that you wrote the original software. If you use this software
	   in a product, an acknowledgment in the product documentation would be
	   appreciated but is not required.
	2. Altered source versions must be plainly marked as such, and must not be
	   misrepresented as being the original software.
	3. This notice may not be removed or altered from any source distribution.


	LICENSE NOTES

	The license covers the source code found in this directory of the
	archive, the included enet network library is covered by an MIT-style license,
	which is however compatible with the above license for all practical purposes.

	Game media included in the game (maps, textures, sounds, models etc.)
	are NOT covered by this license, and may have individual copyrights and
	distribution restrictions (see individual readmes).

Included Fonts
	Fonts are (c) Bitstream (see below). DejaVu changes are in public domain.
	Glyphs imported from Arev fonts are (c) Tavmjong Bah (see below)

	Bitstream Vera Fonts Copyright

	Copyright (c) 2003 by Bitstream, Inc. All Rights Reserved. Bitstream Vera is
	a trademark of Bitstream, Inc.

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of the fonts accompanying this license ("Fonts") and associated
	documentation files (the "Font Software"), to reproduce and distribute the
	Font Software, including without limitation the rights to use, copy, merge,
	publish, distribute, and/or sell copies of the Font Software, and to permit
	persons to whom the Font Software is furnished to do so, subject to the
	following conditions:

	The above copyright and trademark notices and this permission notice shall
	be included in all copies of one or more of the Font Software typefaces.

	The Font Software may be modified, altered, or added to, and in particular
	the designs of glyphs or characters in the Fonts may be modified and
	additional glyphs or characters may be added to the Fonts, only if the fonts
	are renamed to names not containing either the words "Bitstream" or the word
	"Vera".

	This License becomes null and void to the extent applicable to Fonts or Font
	Software that has been modified and is distributed under the "Bitstream
	Vera" names.

	The Font Software may be sold as part of a larger software package but no
	copy of one or more of the Font Software typefaces may be sold by itself.

	THE FONT SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF COPYRIGHT, PATENT,
	TRADEMARK, OR OTHER RIGHT. IN NO EVENT SHALL BITSTREAM OR THE GNOME
	FOUNDATION BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, INCLUDING
	ANY GENERAL, SPECIAL, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES,
	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
	THE USE OR INABILITY TO USE THE FONT SOFTWARE OR FROM OTHER DEALINGS IN THE
	FONT SOFTWARE.

	Except as contained in this notice, the names of Gnome, the Gnome
	Foundation, and Bitstream Inc., shall not be used in advertising or
	otherwise to promote the sale, use or other dealings in this Font Software
	without prior written authorization from the Gnome Foundation or Bitstream
	Inc., respectively. For further information, contact: fonts at gnome dot
	org. 

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

	The program will create two files upon proper execution, based on the
	name of the font you provide it. Should you wish to use this as your
	default font in game, you will need to rename the config file "font.cfg"
	(and optionally, rename the image "font.png") and then update the config
	file accordingly. The font will not work in the game as output by the
	program, you must edit it.

	Below are the command line parameters that allow control over the
	operation of the program.

-?
	Shows the usage help for the program.

-hS
	Sets the home directory to S, which defaults to the current directory
	(".")
	This is an alternative location in which to look for files, and also
	output the files the program creates.

-fS
	Specifies the path to the Truetype font to use. This argument is
	required for proper operation.

-nS
	Provides the name of the output as S, which defaults to "default". The
	file names, and "font name" will be named with this.

-iN
	Sets the initial dimensions for the generated image to N, which defaults
	to "512". If the program exceeds this size it will increase this value
	until it is able to produce a working image. Images may only be powers
	of two in size, if it is not, the program will adjust it automatically.

-sN
	Defines the point size of the font to use to N, which defaults to "56".

-pN
	Adds N pixels of padding around each character, which defaults to "1".
	This is useful if pixels "bleed" into the characters around it. The
	generated dimensions of each character will not include this space when
	displayed in game.

-dN
	Create a shadow behind each character with an offset of N, which
	defaults to "2". This helps make characters more readable when the
	background is bright, while also creating a nice depth effect.

-oN
	Use an outline around the entire character for a shadow if N, which
	defaults to "1". This uses the depth shadow argument to determine its
	size.

-gN
	Sets the game which you are making the font for to N (range: 0..2),
	which defaults to "0" (no game). Valid values are:

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

v0.3.1
    * GitHub repo
    * Copyright clarification & cleanup
    * Manpage

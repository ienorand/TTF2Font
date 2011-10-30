CXXOPTFLAGS= -O3 -fsigned-char -fomit-frame-pointer -ffast-math -fno-strict-aliasing
TINCLUDES= -Ishared `sdl-config --cflags`
TCXXFLAGS= -Wall -DTTF2FONT $(CXXOPTFLAGS) $(TINCLUDES)

TTF_LIBS= -L/usr/X11R6/lib `sdl-config --libs` -lSDL_image -lSDL_ttf -lpng -lz
TTF_OBJS= \
	shared/tools-ttf.o \
	shared/ttf2font-ttf.o

default: all

clean: clean-ttf

clean-ttf:
	@rm -fv $(TTF_OBJS) ttf2font

%-ttf.o:
	$(CXX) $(TCXXFLAGS) -c -o $@ $(subst -ttf.o,.cpp,$@)

ttf: $(TTF_OBJS)
	$(CXX) $(TCXXFLAGS) -o ttf2font $(TTF_OBJS) $(TTF_LIBS)
	strip ttf2font

install-ttf: ttf
	cp -v ttf2font ../ttf2font
	chmod +x ../ttf2font

install: install-ttf

all: ttf

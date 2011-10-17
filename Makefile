all: example

example: example.pas paycheck.pas
	fpc example.pas

clean:
	-rm example
	-rm *.o
	-rm *.ppu
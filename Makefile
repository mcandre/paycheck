all: example

example: example.pas paycheck.pas
	fpc example.pas

clean:
	-rm example
	-rm example.exe
	-rm *.o
	-rm *.ppu

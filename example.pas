program Example;
uses
	Paycheck;
begin
	write('Random integer: ');
	writeln(GenInt());

	write('Random boolean: ');
	writeln(GenBool());
	
	write('Random character: ');
	writeln(GenChar());
	
	write('Random string: ');
	writeln(GenString());

	{ ... }
end.
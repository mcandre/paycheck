unit Paycheck;
interface
function GenInt () : integer;
function GenBool() : boolean;
function GenChar() : char;
{ ... }
implementation
function GenInt () : integer;
begin
	GenInt := Random(256);
end;

function GenBool() : boolean;
begin
	GenBool := Random(2) = 0;
end;

function GenChar() : char;
begin
	GenChar := chr(Random(128));
end;

{ ... }

initialization
	Randomize();
end.
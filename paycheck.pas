unit Paycheck;
interface
function GenInt () : integer;
function GenBool() : boolean;
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

{ ... }

initialization
	Randomize();
end.
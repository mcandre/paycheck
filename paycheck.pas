unit Paycheck;
interface
function GenInt () : integer;

{ ... }

implementation

function GenInt () : integer;
begin
	GenInt := Random(256);
end;

{ ... }

initialization
	Randomize();
end.
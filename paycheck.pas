unit Paycheck;
interface
type
	generic TArray<T> = array of T;
	generic TFn<T> = function() : T;
function GenInt () : TFn<integer>;
function GenBool() : boolean;
function GenChar() : char;
function GenArray(gen : TFn<T>) : TArray<T>;
function GenString() : string;
{ ... }
implementation
function GenInt () : TFn<integer>;
begin
	result := function()
	begin
		result := Random(256);
	end;
end;

function GenBool() : boolean;
begin
	GenBool := Random(2) = 0;
end;

function GenChar() : char;
begin
	GenChar := chr(Random(128));
end;

function GenArray(gen : TFn<T>) : TArray<T>;
var
	arr : array;
	len : integer;
	i : integer;
begin
	len : Random(100);

	setlength(arr, len);

	for i := 0 to len - 1 do
		begin
			arr[i] := gen();
		end;

	GenArray := arr;
end;

function GenString() : string;
begin
	GenString := GenArray(&GenChar);
end;

{ ... }

initialization
	Randomize();
end.

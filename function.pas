program exFunction;
var
a, b, c, min, ret, i: integer;

function max(num1, num2: integer): integer;
	var
	result: integer;

	begin
		if (num1 > num2) then
			result := num1
		else
			result := num2;
		max := result;
	end;

function fibonacci(n: integer): integer;
	begin
		if n=1 then
			fibonacci := 0
		else if n=2 then
		  fibonacci := 1
		else
		  fibonacci := fibonacci(n-1) + fibonacci(n-2);
	end;

procedure findMin(x, y, z: integer; var m: integer);
	begin
		if x < y then
			m:= x
		else
			m:= y;
		if z < m then
			m:= z;
	end; { end of procedure findMin }

(*main*)
begin
	a := 100;
	b := 200;
	c := 300;

	ret := max(a, b);
	writeln( 'Max of 100 and 200 is : ', ret );

	for i:= 1 to 10 do
		write(fibonacci (i), '  ');
	writeln('');

	writeln(' Enter three number: ');
	readln( a, b, c );
	findMin( a, b, c, min );
	writeln(' Minimum: ', min );
end.

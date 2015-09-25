decl
	integer n;
enddecl

integer main(){
	//print ("Enter n for odd");
	//read (n);
	n = Create("even.dat");
	if (n == 0) then
		print("Create success");
	endif;
	n = Open("even.dat");
	if (n != -1) then
		print("Open success");
	endif;
	integer j;
	j = 1;
	while (j <= 20) do
		if (j % 2 == 0) then
			n = Write(0, j);
		endif;
	j=j+1;
	endwhile;
	if (j > 21) then
		print ("Write success");
	endif;
	n = Close(0);
	if (n == 0) then
		print("Close success");
	endif;
	return 0;
}

decl
	integer n;
enddecl

integer main(){
	print ("Enter n for odd");
	read (n);
	integer j;
	j = 1;
	while (j <= n) do
		if (j % 2 == 1) then
			print (j);
		endif;
	j=j+1;
	endwhile;
	return 0;
}

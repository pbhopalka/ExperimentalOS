decl
	integer n;
enddecl

integer main(){
	print ("Enter n");
	read (n);
	integer j;
	j = 1;
	while (j <= n) do
		if (j % 2 == 0) then
			print (j);
		endif;
	j=j+1;
	endwhile;
	return 0;
}

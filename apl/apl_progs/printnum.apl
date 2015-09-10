decl
	integer n;
enddecl

integer main(){
	print ("Enter n");
	read (n);
	integer j;
	j = 0;
	while (j < n) do
		print (j);
		j=j+1;
	endwhile;
	return 0;
} 

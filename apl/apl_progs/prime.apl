decl
	integer n;
enddecl

integer main(){
//	read (n);
n=20;
	integer i, count, j;
	j = 2;
	while (j <= n) do
		i =  1;
		count = 0;
		while (i <= j) do
			if (j % i == 0) then
				count=count+1;
			endif;
			i = i+1;
		endwhile;
		if (count == 2) then
			print(j);
		endif;
		j = j+1;
	endwhile;
	return 0;
}

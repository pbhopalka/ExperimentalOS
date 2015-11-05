integer main(){
	integer a,b;
	a = Fork();
	print("After fork");
	b = 0;
	while (b < 10) do
		print(b);
		b = b + 1;
	endwhile;
	return 0;
}

integer main(){
	integer status, fd;
	status = Create ("sorting.dat");
	fd = Open ("sorting.dat");
	integer counter;
	counter = 15;
	while (counter <= 40) do
		status = Write (fd, counter);
		counter = counter + 5;
	endwhile;
	counter = -15;
	while (counter >= -40) do
		status = Write (fd, counter);
		counter = counter - 5;
	endwhile;
	status = Close (fd);
	return 0;
}

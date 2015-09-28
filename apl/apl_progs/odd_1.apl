integer main(){
	integer status, fd;
	status = Create ("sorting.dat");
	fd = Open("sorting.dat");
	status = Write (fd, 3);
	status = Write (fd, 2);
	status = Write (fd, 8);
	status = Write (fd, 5);
	status = Write (fd, 9);
	status = Write (fd, 1);
	status = Write (fd, 4);
	status = Close(fd);
	return 0;
}

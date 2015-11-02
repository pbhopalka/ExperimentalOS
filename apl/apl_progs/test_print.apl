integer main()
{
	print("STARTED");
	integer pid;
	pid = Fork();
	if (pid == -1) then
		print("ERR1");
	endif;
	print("Hello");
	pid = Fork();
	if (pid == -1) then
		print("ERR2");
	endif;
	print("2");
	pid = Fork();
	if (pid == -1) then
		print("ERR3");
	endif;
	print("3");
	pid = Fork();
	if (pid == -1) then
		print("ERR4");
	endif;

	//pid = Exec("print.xsm");

	return 0;
}

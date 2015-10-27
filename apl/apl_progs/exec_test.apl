integer main()
{
  integer pid;
  integer a;
  //a = Open("anotherfile.dat");
breakpoint;
  pid = Fork();
  if (pid == -2) then
    a = Exec("odd_1.xsm");
    Exit();
  endif;
  print(2);
	print(4);
	print(6);
	print(8);
	print(10);
	print(12);
	print(14);
	print(16);
	print(18);
	print(20);
  //print("Parent exit");
  return 0;
}

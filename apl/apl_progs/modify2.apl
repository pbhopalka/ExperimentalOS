//Program to 

integer main()
{
  integer status;
  integer fd1;
  integer n;
  string a;
  fd1 = Open ("modify.txt");
  status = 0;
  n = 0;
  while (status == 0) do
    status = Read (fd1, a);
    if (a == "") then
      break;
    endif;
    n = n + 1;
  endwhile;
  status = Seek(fd1, -2);
  while (n >= 0) do
    n = n - 1;
    status = Read (fd1, a);
    print (a);
    status = Seek(fd1, -2);
  endwhile;
  status = Close (fd1);
  return 0;
}

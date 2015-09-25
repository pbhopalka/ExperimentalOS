// Program to take an input n and write numbers from 1 to n into a file

decl
  integer n;
enddecl

integer main()
{
  read (n);
  integer status;
  status = Create ("modify.txt");
  integer fd1;
  fd1 = Open("modify.txt");
  integer i;
  i = 1;
  while (i <= n) do
    status = Write(fd1, i);
    i = i + 1;
  endwhile;
  status = Close(fd1);
  return 0;
}

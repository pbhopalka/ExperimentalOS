decl
  integer a;
enddecl

integer main()
{
  integer fd1;
  integer fd2;
  integer fd3;
  fd1 = Open ("odd.dat");
  fd2 = Open ("even.dat");
  a = Create ("mergeFile.dat");
  fd3 = Open ("mergeFile.dat");
  integer i;
  integer b;
  i = 0;
  while (i < 20) do
    a = Read (fd1, b);
    a = Write (fd3, b);
    a = Read (fd2, b);
    a = Write(fd3, b);
    i = i + 1;
  endwhile;
  a = Close (fd1);
  a = Close (fd2);
  a = Close (fd3);
  return 0;
}

decl
  integer a;
enddecl

integer main()
{
  a = Open ("odd.dat");
  a = Open ("even.dat");
  a = Create ("mergeFile.dat");
  a = Open ("mergeFile.dat");
  integer i;
  integer b;
  i = 0;
  while (i < 20) do
    a = Read (0, b);
    a = Write (2, b);
    a = Read (1, b);
    a = Write(2, b);
    i = i + 1;
  endwhile;
  a = Close (0);
  a = Close (1);
  a = Close (2);
  return 0;
}

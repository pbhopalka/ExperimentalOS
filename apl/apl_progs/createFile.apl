decl
    integer status;
enddecl

integer main()
{
   integer pid, a, fd1, fd2, fd3, q;
   a = Create("file1.dat");
   fd1 = Open("file1.dat");
   a = Seek(fd1, 0);
   integer i;
   i = 1;
   while (i < 2000) do
     a = Write(fd1, i);
     //print(i);
     i = i + 1;
   endwhile;
   a = Seek(fd1, 0);
   i = 0;
   integer b;
   q = Read(fd1, b);
   while (q != -1) do
     q = Read(fd1, b);
     print(b);
   endwhile;
   return 0;
}

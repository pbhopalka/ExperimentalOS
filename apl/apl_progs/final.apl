integer main(){
  integer pid, a, fd1, fd2, fd3, q;
  a = Create("file1.dat");
  fd1 = Open("file1.dat");
  a = Seek(fd1, 0);
  integer i;
  i = 1;
  while (i < 2000) do
    a = Write(fd1, i);
    i = i + 2;
  endwhile;
  a = Seek(fd1, 0);
  pid = Fork();
  pid = Fork();
  pid = Fork();
  pid = Fork();
  pid = Fork();

  // We will only write in with processes 5, 10, 20 and 30

  if (Getpid() == 5) then
    a = Create("1.dat");
    fd2 = Open("1.dat");
  endif;
  if (Getpid() == 10) then
    a = Create("2.dat");
    fd2 = Open("2.dat");
    a = Seek(fd2, 0);
  endif;
  if (Getpid() == 20) then
    a = Create("3.dat");
    fd2 = Open("3.dat");
    a = Seek(fd2, 0);
  endif;
  if (Getpid() == 30) then
    a = Create("4.dat");
    fd2 = Open("4.dat");
    a = Seek(fd2, 0);
  endif;
  if (Getpid() == 0) then
    Exit();
  endif;
  integer b;
  if (Getpid() == 5 || Getpid() == 10 || Getpid() == 20 || Getpid() == 30) then
    i = 1;
    q = Read(fd1, b);
    while (q != -1) do
      if (Getpid() == 5) then //to introduce asymmetry
        i = 1;
        while (i < 10) do
          i = i + 1;
        endwhile;
      endif;
      a = Write(fd2, b);
        breakpoint;
      q = Read(fd1, b);
        breakpoint;
    endwhile;
  endif;
  print("Done");
  return 0;
}

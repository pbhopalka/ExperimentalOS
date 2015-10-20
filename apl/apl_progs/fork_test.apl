integer main()
{
  integer pid;
  integer a;
  a = Open("anotherfile.dat");
  print ("Before fork");
breakpoint;
  pid = Fork();
  print ("After fork");
  print("First exit");
  Exit();
  print("Second exit");
  return 0;
}

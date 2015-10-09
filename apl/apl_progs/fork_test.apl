integer main()
{
  integer pid;
  integer a;
  a = Open("anotherfile.dat");
  print ("Before fork");
  pid = Fork();
  print ("After fork");
  return 0;
}

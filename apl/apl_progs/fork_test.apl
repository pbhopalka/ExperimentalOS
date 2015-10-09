integer main()
{
  integer pid;
  print ("Before fork");
  pid = Fork();
  print ("After fork");
  return 0;
}

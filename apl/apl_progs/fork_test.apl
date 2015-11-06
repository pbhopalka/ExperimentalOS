integer main()
{
  integer pid;
  integer a;
  //a = Open("anotherfile.dat");
  print ("Before fork");
breakpoint;
  pid = Fork();
  if (pid == -2) then
    print ("Child1");
    Exit();
  endif;
  print ("Parent");
  pid = Fork();
  print ("After fork 1");
//  pid = Fork(); //Some error in forking twice simultaneously
  if (pid == -2) then
    print ("Child2");
    Exit();
  endif;
  print("Parent1");
  print("Parent2");
  return 0;
}

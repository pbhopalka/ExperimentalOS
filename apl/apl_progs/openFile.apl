decl
    integer status;
enddecl

integer main()
{
  status = Open("myfile.dat");
  print (status);
  if (status == 0) then
    print ("File opened");
  endif;
  status = Close(0);
  print (status);
  if (status == 0) then
    print("File closed");
  endif;
  status = Delete("myfile.dat");
  print (status);
  if (status == 0) then
    print ("File deleted");
  endif;
  return 0;
}

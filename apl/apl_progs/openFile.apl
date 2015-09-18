decl
    integer status;
enddecl

integer main()
{
  status = Open("myfile.dat");
  print (status);
  if (status != -1) then
    print ("myfile opened");
  endif;
  status = Open("anotherfile.dat");
  print (status);
  if (status != -1) then
    print ("anofile opened");
  endif;
  status = Close(0);
  print (status);
  if (status == 0) then
    print("myFile closed");
  endif;
  status = Delete("anotherfile.dat");
  print (status);
  if (status == 0) then
    print ("anoFile deleted");
  endif;
  status = Delete("myfile.dat");
  print (status);
  if (status == 0) then
    print ("myFile deleted");
  endif;
  status = Close(1);
  print (status);
  if (status == 0) then
    print("anoFile closed");
  endif;
  status = Delete("anotherfile.dat");
  print (status);
  if (status == 0) then
    print ("anoFile deleted");
  endif;
  return 0;
}

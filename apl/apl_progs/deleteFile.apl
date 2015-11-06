decl
    integer status;
enddecl

integer main()
{
   status = Open("anotherfile.dat");
   if (status != -1) then
    print("File opened");
   endif;
   status = Delete("anotherfile.dat");
   print (status);
   return 0;
}

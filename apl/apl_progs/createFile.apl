decl
    integer status;
enddecl

integer main()
{
   status = Create("myfile.dat");
   print (status);
   status = Create("anotherfile.dat");
   print (status);
   return 0;
}

decl
    integer status;
enddecl

integer main()
{
   status = Open("myfile.dat");
   print (status);
   status = Close("myfile.dat");
   return 0;
}

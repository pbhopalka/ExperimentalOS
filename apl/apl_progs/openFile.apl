decl
    integer status;
enddecl

integer main()
{
   status = Open("myfile.dat");
   print (status);
   return 0;
}

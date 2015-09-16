decl
  integer a;
enddecl

integer main()
{
	string b;
	// Word read will be in b
	// Assume fileDescriptor=0
	a = Write(0, a);
  if (a == 0) then
    print("Write Success");
  endif;
  a = Seek(0, 10);
  if (a == 0) then
    print("Seek Success");
  endif;
  a = Read(0,b);
  if (a == 0) then
    print("Read Success");
  endif;
	return 0;
}

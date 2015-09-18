decl
  integer a;
enddecl

integer main()
{
	string b;
  string p;
  p = "hello world";
  a = Open("myfile.dat");
  if (a != -1) then
    print("File opened");
  endif;
	a = Write(0, p);
  if (a == 0) then
    print("Write Success");
  endif;
  a = Seek(0, 10);
  if (a == 0) then
    print("Seek Success");
  endif;
  a = Seek (0, 0);
  a = Read(0,b);
  if (a == 0) then
    print(b);
  endif;
	return 0;
}

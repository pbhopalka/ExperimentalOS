decl
  integer a;
enddecl

integer main()
{
	string b;
  string p;
  string q;
  p = "hello world";
  q = "second line";
  a = Open("myfile.dat");
  if (a != -1) then
    print("myFile opened");
  endif;
  a = Open("anotherfile.dat");
  if (a != -1) then
    print("myFile opened");
  endif;
	a = Write(0, p);
  a = Write(0, q);
  if (a == 0) then
    print("Write 0 Success");
  endif;
  a = Write(1, p);
  a = Write(1, q);
  if (a == 0) then
    print("Write 1 Success");
  endif;
  a = Seek(0, 1);
  if (a == 0) then
    print("Seek Success");
  endif;
  a = Read(0,b);
  if (a == 0) then
    print(b);
  endif;
  a = Read (1,b);
  if (a == 0) then
    print(b);
  endif;
	return 0;
}

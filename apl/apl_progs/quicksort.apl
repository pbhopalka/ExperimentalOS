decl
  integer n, a[20];
  integer qSort(integer s, e);
enddecl

integer qSort(integer s, e)
{
  integer i, j;
  integer t, k, status;
  if(e > s) then
  i=s-1;
  j=s;
  print("Came here");
  k = a[e];
	while (j <= e) do
	  if (a[j] <= k) then
      t = a[i+1];
			a[i+1] = a[j];
			a[j] = t;
			i = i + 1;
		endif;
		j = j + 1;
	endwhile;
  print("Recursion");
	status = qSort(s,i-1);
	status = qSort(i+1,e);
  endif;
  return 0;
}

integer main()
{
  integer status;
  integer fd;
  string b;
  integer c;
  status = 0;
  fd = Open("sorting.dat");
  while (status == 0) do
    status = Read (fd, b);
    if (b == "") then
      break;
    endif;
    n = n+1;
  endwhile;
  status = Seek(fd, 0);
  integer counter;
  counter = 0;
  while (counter < n) do
    status = Read(fd, c);
    a[counter] = c;
    counter = counter + 1;
  endwhile;
  print ("Array created");
  status = qSort(0, n-1);
  print("Sorting done");
  status = Seek(fd, 0);
  counter = 0;
  while (counter < n) do
    c = a[counter];
    status = Write(fd, c);
    counter = counter + 1;
  endwhile;
  status = Close (fd);
  return 0;
}

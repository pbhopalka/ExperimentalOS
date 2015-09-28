decl
  integer n, fd;
  integer qSort(integer s, e);
enddecl

integer qSort(integer s, e)
{
  integer i, j;
  integer t, k, status, p, q, r;

  //p = a[j], q = a[i+1], r = t;

  if(e > s) then
    i=s-1;
    j=s;
    status = Seek(fd, e);
    status = Read(fd, k); //k = a[e];
	  while (j <= e) do
      status = Seek(fd, j);
      status = Read(fd, p);
	    if (p <= k) then
        status = Seek(fd, i+1);
        status = Read(fd, t);
        //t = a[i+1];
        status = Seek(fd, i+1);
        status = Write(fd, p);
			  //a[i+1] = a[j];
			  status = Seek(fd, j);
        status = Write(fd, t);
        //a[j] = t;
			   i = i + 1;
		  endif;
		  j = j + 1;
	 endwhile;
	 status = qSort(s,i-1);
	 status = qSort(i+1,e);
  endif;
  return 0;
}

integer main()
{
  integer status;
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
  status = qSort(0, n-1);
  status = Close (fd);
  return 0;
}

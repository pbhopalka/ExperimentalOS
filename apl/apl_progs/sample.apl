integer main()
{
	integer childpid, retval, input;
	childpid = Fork();
	//print("Done");
  //childpid = -2;
	if(childpid == -2) then
		retval = Exec("sample.xsm");
	else
		while(childpid != -1) do
			//print("Parent");
			print(childpid);
			//read (input);
		endwhile;
	endif;
  return 0;
}

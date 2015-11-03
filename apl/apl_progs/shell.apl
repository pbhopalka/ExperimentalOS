integer main(){
  string input;
  integer pid;
  print ("Welcome to PB's OS");
  while (input != "exit") do
    print ("$->");
    read (input);
    if (input == "exit") then
      break;
    endif;
    pid = Fork();
    if (pid == -1) then
      print("Fork not working");
    endif;
    if (pid != -2 && pid != -1) then
      pid = Wait(pid);
    endif;
    if (pid == -2) then
      pid = Exec(input);
      if (pid == -1) then
        print("Invalid command");
        Exit();
      endif;
    endif;
  endwhile;
  return 0;
}

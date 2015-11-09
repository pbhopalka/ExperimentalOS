#Modification Question

When a parent spawns a child process, all its opened file instances are copied.
Now, when a read/write operation is made on the file, the seek location of the
running process will change and so should the seek location on all its child processes as well as the processes that it is spawned from. 

Basically the seek position should be global for all parent and child processes.

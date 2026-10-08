# To display processes runing 
ps 

# to display information for every process -ef mean "e" for all and "f" for full listing 
ps -ef

#to display processes in BSD format
ps aux

# to serach for a process 
ps -ef | grep  ssh # this pipes the out from ps and search for ssh using grep

ps -ef | grep NetworkManager #this search for NetworkManager using the output from ps -ef


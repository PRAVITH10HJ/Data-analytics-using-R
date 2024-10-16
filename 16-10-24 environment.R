newenv=new.env()
newenv$x=1
newenv$y=1:10
newenv$y
newenv$z=10
newenv$z
ls()
pravith=new.env()
pravith$a="nice"
pravith$b="bold"
ls()
pravith$x #no variable  x is present in pravith so it shows null
newenv$x
search()
ls(newenv) #these show the variables in the environment 
ls(pravith)
?rm()
rm(pravith) #this deletes the environment
rm
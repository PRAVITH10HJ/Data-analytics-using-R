install.packages("XML")
library("XML")
?system.file
xml=system.file("extdata","options.xml",package = "learningr")#the first arguments are the files that are gonna be used
xml
r=xmlParse(xml)#this read the extracted data from xml
r
#to read html file use html parse 
xmlTreeParse(xml)
View(r)#the xml data cant be viewed by view function
View(xml)

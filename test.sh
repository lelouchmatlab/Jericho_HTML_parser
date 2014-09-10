#!/bin/bash

url_1="http://en.wikipedia.org/wiki/Basketball"     #  Wekipedia
url_2="http://www.bbc.com/news/world-europe-29114297" # BBC news
url_3="http://www.amazon.com/"     # Amazon	
url_4="http://en.wikipedia.org/wiki/Computer_science" #Wekipedia

for i in 1 2 3 4; do
eval url=\$url_$i
java -cp apache-log4j-1.2.17/*.jar:commons-logging-1.2/*.jar:slf4j-1.7.7/*.jar:../bin/  ExtractText $url ${i}_text.txt
done 

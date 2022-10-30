#!/bin/bash
#######    Unpack     #########
#######    Itay Haike #########
FILE=(*.{zip,bz2,cmpr,gz})

COUNT=0

function unpack (){

 if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1     
             		  ((COUNT++))
             		  ;;
             *.tar.gz)    tar xzf $1     
             		   ((COUNT++))
             		   ;;
             *.bz2)       bunzip2 $1     
             	          ((COUNT++))
             		   ;;
             *.rar)       rar x $1       
             		   ((COUNT++))
             		   ;;
             *.gz)        gunzip $1      
             		   ((COUNT++))
             		   ;;
             *.tar)       tar xf $1
                          ((COUNT++))
                          ;;
             *.tbz2)      tar xjf $1     
             		   ((COUNT++))
             		   ;;
             *.tgz)       tar xzf $1     
             		   ((COUNT++))
             		   ;;
             *.zip)       unzip $1       
             	           ((COUNT++))
             	           ;;
             *.Z)         uncompress $1  
             	           ((COUNT++))
             	           ;;
             *.7z)        7z x $1    
             		   ((COUNT++))
             		   ;;
             *)           echo "$1 is not an archive file. "
                  ;;
         esac
     else
         echo "!!!Error $1 is not a vaild file!!!"
     fi
}

function repeat (){

  if [ -d ]; 
	
	then 
	
	 for d in */; do
  	  FOLDER="$d" 
  	  cd $FOLDER
  

  	  for filename in *.{zip,bz2,cmpr,gz} ; do
  	  unpack $filename
  	  done
	 done
	 
	fi
	
	
	 echo " $COUNT -  archives decompressed "
}


unpack "$FILE"

repeat


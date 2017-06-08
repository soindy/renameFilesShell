function ergodic(){ 
    if [ -d $1 ] 
    then
        cd $1
    fi
    for file in ` ls $1`  
    do  
        if [ -d $1"/"$file ]  
        then  
            ergodic $1"/"$file  
            cd $1
        else  
        #    echo $file ${file:9}  
        # echo $file
        # delete hash file name
        mv $file `echo $file|sed 's/^\([0-9a-z]*\.\)\(.*\..*\)/\2/g'` 
        fi  
    done  
}  

INIT_PATH="/Users/soindy/Desktop/slim"  
ergodic $INIT_PATH  

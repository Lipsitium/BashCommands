#Compile and Execute
ce(){
        arg1=$1 
        arg2=$2
        arg3="exe"
        last="${@: -1}"
        directory="./"
        if [[ "${arg1/d}" == "-m" ]]; then
                arg3=${last%.s}
        fi
        if [[ "${arg1/m}" == "-d" ]]; then
                directory=$2
        fi
        if [[ ! -e "${directory%/}/${last%.s}.s" ]]; then
                echo "ERROR: not assembly file"
                return 1
        fi
        gcc -nostdlib -o "${directory%/}/$arg3" "${directory%/}/${last%.s}.s"
        "${directory%/}/${arg3}" 

}


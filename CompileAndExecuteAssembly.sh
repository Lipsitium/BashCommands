#Simple command to compile and execute assembly files
#Copyright (C) 2026  Lipsitium

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <https://www.gnu.org/licenses/>.




#Compile and Execute
ce(){

        last=${@: -1}
        last=${last%.s}
        directory="."
        if [[ "${1/m}" == "-d" ]]; then
                directory=${2%/}
        fi
        exe="$directory/exe"
        file="$directory/$last.s"

        if [[ "${1/d}" == "-m" ]]; then
                exe="$directory/$last"
        fi
        if [[ ! -e $file ]]; then
                echo "ERROR: not an assembly file"
                return 1
        fi

        gcc -nostdlib -o $exe $file
        $exe 
}


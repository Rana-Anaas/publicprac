!#/bin/bash
 is_balanced() {

   local s="$1"
   local -a stack=()

   for ((i=0; i<${#s}; i++)); do
        char= "${s:i:1}"

        if[[ "$char" == "(" || "$char" == "{" || "$char" == "["]]; then
           stack+=($char)
        fi   

        if[[ "$char" == ")" || "$char" == "}" || "$char" == "]"]]; then

           if[[${stack[@]} -eq 0 ]];   then
           echo "false"
           return
        fi

        top="${stack[-1]}"
        stack=("${stack[@]:0:${#stack[@]}-1}") 


        if [[ "$char" == ")" && "$top" != "(" ]] || \
                  [[ "$char" == "}" && "$top" != "{" ]] || \
                  [[ "$char" == "]" && "$top" != "[" ]]; then
                  echo "false"
                return
                 fi
            fi
        done

         if [[ ${#stack[@]} -eq 0 ]]; then
        echo "true"
        else
        echo "false"
        fi
 }    

 is_balanced "$1"  #my script
 #newly edit script
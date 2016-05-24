[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

###-tns-completion-start-###
if [ -f /Users/mikael.niva/.tnsrc ]; then 
    source /Users/mikael.niva/.tnsrc 
fi

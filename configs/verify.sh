#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'

main(){

    # if code --version >/dev/null && git --version >/dev/null && node --version >/dev/null && npm --version >/dev/null && eslint --version >/dev/null && (tree --version >/dev/null || tree.com --version >/dev/null) && cat ~/.gitconfig >/dev/null ; then
    if code --version >/dev/null && git --version >/dev/null && node --version >/dev/null && npm --version >/dev/null && cat ~/.gitconfig >/dev/null ; then
        echo -e "${GREEN}Verificación correcta!"
    else
        echo -e "${RED}Algo salió mal!"
    fi
    
    tput init
}

main

## Full/Raw: curl -Ls https://raw.githubusercontent.com/entertechschool/setup-guide/main/configs/verify.sh | bash
## Actual: curl -Ls https://bit.ly/enter-setup-verify-sh-1 | bash

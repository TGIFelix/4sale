#!/bin/bash
Color_off='\033[0m'
Color1='\033[0;35m'
Color2='\033[1;36m'
# }}}
fancyprint () {
    printf '%b\n' "$1$2$Color_off" >&2
}
# }}}
clear
echo ""
fancyprint ${Color1} "███████╗ ██████╗ ██████╗     ███████╗ █████╗ ██╗     ███████╗"
fancyprint ${Color1} "██╔════╝██╔═══██╗██╔══██╗    ██╔════╝██╔══██╗██║     ██╔════╝"
fancyprint ${Color1} "█████╗  ██║   ██║██████╔╝    ███████╗███████║██║     █████╗  "
fancyprint ${Color1} "██╔══╝  ██║   ██║██╔══██╗    ╚════██║██╔══██║██║     ██╔══╝  "
fancyprint ${Color1} "██║     ╚██████╔╝██║  ██║    ███████║██║  ██║███████╗███████╗"
fancyprint ${Color1} "╚═╝      ╚═════╝ ╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝"
fancyprint ${Color2} "                                   github.com/tgifelix/4sale "
echo ""
PS3='➡ '
options=("Build & Deploy" "List domains" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "Build & Deploy")
        #felix.surf
            sed -i '' '2s/^.*$/	let domainForSale = "felix.surf";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ felix.surf
        #northsea.surf
            sed -i '' '2s/^.*$/	let domainForSale = "northsea.surf";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ northsea.surf
        #noordzee.surf
            sed -i '' '2s/^.*$/	let domainForSale = "noordzee.surf";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ noordzee.surf
        #zandvoort.surf
            sed -i '' '2s/^.*$/	let domainForSale = "zandvoort.surf";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ zandvoort.surf
        #zandfornia.com
            sed -i '' '2s/^.*$/	let domainForSale = "zandfornia.com";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ zandfornia.com
        #clickguest.com
            sed -i '' '2s/^.*$/	let domainForSale = "clickguest.com";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ clickguest.com
        #statusaway.com
            sed -i '' '2s/^.*$/	let domainForSale = "statusaway.com";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ statusaway.com
        #ontbijt.club
            sed -i '' '2s/^.*$/	let domainForSale = "ontbijt.club";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ ontbijt.club
        #webdev.party
            sed -i '' '2s/^.*$/	let domainForSale = "webdev.party";/g' src/App.svelte 
            yarn build
            surge $PWD/public/ webdev.party
        #done
            clear
            echo ""
            fancyprint ${Color2} " ✔ Deployed: https://www.felix.surf"
            fancyprint ${Color2} " ✔ Deployed: https://www.northsea.surf"
            fancyprint ${Color2} " ✔ Deployed: https://www.noordzee.surf"
            fancyprint ${Color2} " ✔ Deployed: https://www.zandvoort.surf"
            fancyprint ${Color2} " ✔ Deployed: https://www.zandfornia.com"
            fancyprint ${Color2} " ✔ Deployed: https://www.clickguest.com"
            fancyprint ${Color2} " ✔ Deployed: https://www.statusaway.com"
            fancyprint ${Color2} " ✔ Deployed: https://www.ontbijt.club"
            fancyprint ${Color2} " ✔ Deployed: https://www.webdev.party"
            echo ""
            echo "1) Build & Deploy"            
            echo '2) List domains'
            echo '3) Exit'
            ;;
        "List domains")
            surge list
            ;;
        "Exit")
            exit 0
            ;;
        *) fancyprint ${Color1} "invalid option $REPLY";;
    esac
done

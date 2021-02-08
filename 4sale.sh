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
            fancyprint ${Color2} " ✔ Deployed: http://www.felix.surf"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.northsea.surf"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.noordzee.surf"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.zandvoort.surf"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.zandfornia.com"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.clickguest.com"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.statusaway.com"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.ontbijt.club"
            sleep 0.5
            fancyprint ${Color2} " ✔ Deployed: http://www.webdev.party"
            echo ""
            exit 0
	    ;;
        "List domains")
            surge list
            ;;
        "Exit")
            exit 0
            ;;
        *) fancyprint ${Color1} "$REPLY is not an option.";;
    esac
done

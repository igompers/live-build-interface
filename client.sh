#!/bin/bash

# install dependencies
sudo apt install livebuild espeak terminator

# set build type
target_build_type="amd64-generic"
target_build_conf="amd64-generic.sh"

# set local path
local="$(pwd)"

# specify target data
target_uid="$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)"
target_build_label=""$target_build_type"-"$target_uid""

main () {
    # prepare build environment
    mkdir -p ""$local"/Builds/"$target_build_label""
    cp ""$local"/Resources/"$target_build_conf"" ""$local"/Builds/"$target_build_label/""
    cd ""$local"/Builds/$target_build_label"

    # configure build environment
    sh ./"$target_build_conf"

    # load packages
    cat ""$local"/Resources/Config-Templates/package-lists/live.list.chroot" >> ""$local"/Builds/$target_build_label/config/package-lists/live.list.chroot"

    # load hooks
    cp -r ""$local"/Resources/Config-Templates/hooks/" ""$local"/Builds/$target_build_label/config/"

    # load skeleton
    cp -r ""$local"/Resources/Config-Templates/includes.chroot/" ""$local"/Builds/$target_build_label/config/"
    
    # clear cache and deploy build
    sudo lb clean
    sudo lb build

    # handle logging
    mv ""$local"/build-information.txt" ""$local"/Builds/$target_build_label/"
    touch ""$local"/build-information.txt"

    # notify user of completed build
    notify-send -u critical -t 20000 Build Complete && espeak build complete
}
main

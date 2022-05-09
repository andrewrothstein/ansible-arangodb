#!/usr/bin/env bash
set -e
DIR=~/Downloads
MIRROR=https://download.arangodb.com

dl()
{
    local major_ver=$1
    local minor_ver=$2
    local patch_ver=$3
    local os1=$4
    local os2=$5
    local app1=$6
    local app2=$7
    local file="${app2}-${os2}-${major_ver}.${minor_ver}.${patch_ver}.tar.gz"
    local url="${MIRROR}/arangodb${major_ver}${minor_ver}/Community/${os1}/${file}"
    local lfile="${DIR}/${file}"
    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi
    printf "      # %s\n"  $url
    printf "      %s: sha256:%s\n" $app1 $(sha256sum $lfile | awk '{print $1}')
}

dl_ver () {
    local major_ver=$1
    local minor_ver=$2
    local patch_ver=$3
    printf "  '%s.%s.%s':\n" $major_ver $minor_ver $patch_ver

    printf "    linux:\n"
    dl $major_ver $minor_ver $patch_ver Linux linux server arangodb${major_ver}
    dl $major_ver $minor_ver $patch_ver Linux linux client arangodb${major_ver}-client
    printf "    macos:\n"
    dl $major_ver $minor_ver $patch_ver MacOSX macos server arangodb${major_ver}
    dl $major_ver $minor_ver $patch_ver MacOSX macos client arangodb${major_ver}-client
}

dl_ver 3 9 0
dl_ver 3 9 1

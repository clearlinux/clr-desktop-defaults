#!/bin/bash
# 
# Copyright (c) 2016-2019 Intel Corporation
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

if [[ -e "$HOME/.clr_configured_desktop" ]]; then
    exit 0
fi

declare -A DESKTOP_FILES=(
    ["xfce4-terminal.desktop"]="/usr/share/applications/xfce4-terminal.desktop"
)

REQUIRED_DIRS=( "$HOME/Desktop" )

function install_files()
{
    local tgtdir="$1"
    local perm="$2"
    declare -n files=$3

    for target_path in "${!files[@]}"; do
        local source_path="${files["${target_path}"]}";
        if [[ ! -e "${source_path}" ]]; then
            continue;
        fi
        local fpath="${tgtdir}/${target_path}"
        if [[ ! -e "${fpath}" ]]; then
            install -D -m "$perm" "${source_path}" "${fpath}"
        fi
    done
}

function install_dirs()
{
    declare -n rdirs=$1
    for i in "${rdirs[@]}"; do
        if [[ ! -d "${i}" ]]; then
            install -D -d -m 00755 "${i}"
        fi
    done
}

# Ensure base dirs
install_dirs REQUIRED_DIRS

# Shortcuts, etc.
install_files "$HOME/Desktop" 00755 DESKTOP_FILES

echo "1" > "$HOME/.clr_configured_desktop" 

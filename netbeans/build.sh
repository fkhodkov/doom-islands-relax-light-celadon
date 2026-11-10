#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
output="$script_dir/Islands-Relax-Light-Celadon-NetBeans.zip"
build_dir=$(mktemp -d)

cleanup() {
    case "$build_dir" in
        /tmp/*) rm -rf -- "$build_dir" ;;
    esac
}
trap cleanup EXIT HUP INT TERM

cp -R "$script_dir/profile/config" "$build_dir/config"
find "$build_dir/config" -exec touch -t 200001010000 {} +
(cd "$build_dir" && zip -X -q -r theme.zip config)
mv -- "$build_dir/theme.zip" "$output"
printf '%s\n' "Built $output"

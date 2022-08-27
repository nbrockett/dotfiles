echo "Writing explicitly installed packages to .pkglist.txt ..."

filename="$HOME/.pkglist.txt"

# Write a header
echo $(date) > $filename
echo "##################################" >> $filename

# list explicitly installed packages
xbps-query --list-manual-pkgs >> $filename

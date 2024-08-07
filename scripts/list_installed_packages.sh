#!/bin/bash

# Script to list all installed packages with their version, installed size (MBs),
# and homepage.
#
# The output is formatted as a markdown table.

# Usage:
#   chmod +x list_installed_packages.sh
#   ./list_installed_packages.sh

dpkg-query -Wf '${Package}\t${Version}\t${Installed-Size}\t${Homepage}\n' |
	awk '
BEGIN {
    # Print the header of the markdown table
    print "| Package | Version | Installed Size (MBs) | Homepage |";
    print "|---------|---------|----------------------|----------|";
}
{
    # Print each package information in markdown table format
    printf "| %s | %s | %-21.2f | %s |\n", $1, $2, $3/1024, $4;
}
'

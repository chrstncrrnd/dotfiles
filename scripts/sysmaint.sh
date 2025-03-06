#!/bin/bash



# Credits:
# This is a combinations of scripts from:
# https://github.com/rupertl/arch-maint?tab=BSD-3-Clause-1-ov-file
# https://github.com/kurealnum/dotfiles/blob/main/.config/scripts/sysmaintenance.sh 
# https://fernandocejas.com/blog/engineering/2022-03-30-arch-linux-system-maintance/


# Maintenance script for Arch Linux systems, intended to be run
# weekly. Should be run as root to do cleanup tasks; if run as normal
# user will still print some useful information.

separator()
{
    echo "======================================================================"
}

sectionStart()
{
    echo
    separator
    echo
    echo "$1"
    echo
}

separator
echo -n "arch-maint report for `hostname` on `date`"

sectionStart "SYSTEM"
uname -a
echo
uptime

sectionStart "FAILED SERVICES"
systemctl --failed

sectionStart "HIGH PROFILE LOG ENTRIES"
journalctl --no-pager -p 0..3 -xn

sectionStart "UPDATING SYSTEM"
yay -Syu

sectionStart "UPDATING FLATPAKS"
flatpak update -y

sectionStart "REMOVE ORPHANED PACKAGES"
if [[ ! -n $(yay -Qdt) ]]; then
    echo "No orphans to remove."
else
    yay --noconfirm -Rns $(yay -Qdtq)
fi

sectionStart "CLEARING PACMAN CACHE"
pacman_cache_space_used="$(du -sh /var/cache/pacman/pkg/)"
paccache -r
echo "Space saved: $pacman_cache_space_used" 

sectionStart "OPTIMISE PACKAGE DATABASE"
pacman-optimize --nocolor


sectionStart "CLEARING ~/.cache"
home_cache_used="$(du -sh ~/.cache)"
rm -rf ~/.cache/
echo "Spaced saved: $home_cache_used"

echo "Clearing system logs"
journalctl --vacuum-time=7d

separator
echo
echo "Report completed at `date`"

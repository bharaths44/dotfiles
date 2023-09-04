dconf dump / > saved_settings.dconf
dnf history userinstalled > packages.txt && flatpak list --app >> packages.txt

date=$(date '+%d-%m-%Y %H:%M')
/usr/bin/git --git-dir=/home/bharaths/dotfiles/ --work-tree=/home/bharaths add -u
/usr/bin/git --git-dir=/home/bharaths/dotfiles/ --work-tree=/home/bharaths commit -m "Backed up on $date"
/usr/bin/git --git-dir=/home/bharaths/dotfiles/ --work-tree=/home/bharaths push -u origin main

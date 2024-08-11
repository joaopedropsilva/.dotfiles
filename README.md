# .dotfiles

## Run setup

1. Install dependencies
    - git
    - ansible
    - python-passlib
2. Clone .dotfiles using HTTPS
3. run .dotfiles/setup/run.sh

## Future features and fixes

- Make a cron job to backup .vault daily
- Make github remote update ansible task after ssh setup
- Sudoers file update (roles/system)
- aur.yml ansible task with msedge setup
- Create display ansible role
- Fix tmux_cht.sh is broken, nothing is displayed after search 
- Simplify bashrc sourcing
- Add screenshot bind
- Implement a display brightness control
    https://wiki.archlinux.org/title/laptop
- Touchpad driver check


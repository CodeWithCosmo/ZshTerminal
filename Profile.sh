# Fail on any command.
set -eux pipefail

# Install plug-ins (you can git-pull to update them later).
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting)
(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)

# Replace the configs with the saved one.
sudo cp configs/.zshrc ~/.zshrc

# Color Theme
dconf load /org/gnome/terminal/legacy/profiles:/:26393dd5-118b-4e78-9b4d-2d58c0acf6b6/ < configs/terminal_profile.dconf

# Add it to the default list in the terminal
add_list_id=26393dd5-118b-4e78-9b4d-2d58c0acf6b6
old_list=$(dconf read /org/gnome/terminal/legacy/profiles:/list | tr -d "]")

if [ -z "$old_list" ]
then
	front_list="["
else
	front_list="$old_list, "
fi

new_list="$front_list'$add_list_id']"
dconf write /org/gnome/terminal/legacy/profiles:/list "$new_list" 
dconf write /org/gnome/terminal/legacy/profiles:/default "'$add_list_id'"

# Switch the shell.
chsh -s $(which zsh)

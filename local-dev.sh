dnf update -y
dnf install -y gnome-tweaks vim zsh tilix tmux snapd fira-code-fonts util-linux-user autojump-zsh
ln -s /var/lib/snapd/snap /snap


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# not priveleged
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add zsh-autosuggestion to plugins

git clone git@github.com:ryanoasis/nerd-fonts.git .nerd-fonts
chmod +x ./.nerd-fonts/install.sh Fira Code
./.nerd-fonts/install.sh Fira Code
 


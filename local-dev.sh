dnf update -y
dnf install -y gnome-tweaks vim zsh tilix tmux snapd fira-code-fonts util-linux-user autojump-zsh fedora-workstation-repositories hub
dnf config-manager --set-enabled google-chrome
dnf install -y google-chrome
ln -s /var/lib/snapd/snap /snap

git config --global user.name "mleader"
git config --global user.email "mleader@redhat.com"


# install python build dependencies
dnf install -y make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel python3-devel



sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# not priveleged
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add zsh-autosuggestion to plugins

git clone git@github.com:ryanoasis/nerd-fonts.git .nerd-fonts
chmod +x ./.nerd-fonts/install.sh Fira Code
./.nerd-fonts/install.sh Fira Code

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv
 
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc


# get julia latest stable binary 
# https://julialang.org/downloads/platform/#linux_and_freebsd

# gpg https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.2-linux-x86_64.tar.gz.asc
# regular https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.2-linux-x86_64.tar.gz

mkdir $HOME/.local/jl
tar -xvzf julia-x.y.z-linux_x86_64.tar.gz -C $HOME/.local/jl
ln --symbolic $HOME/.local/jl/julia-x.y.z-linux_x86_64/bin/julia $HOME/.local/bin/julia
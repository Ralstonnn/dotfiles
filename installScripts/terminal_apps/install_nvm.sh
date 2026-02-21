########################
# INSTALL NVM AND NODE #
########################
if [ ! -d  $HOME/.nvm ]; then
    cd ~/Downloads/
    mv ~/.zshrc ~/.zshrc.nvm-bak
    touch ~/.zshrc
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    cd
    rm ~/.zshrc
    mv ~/.zshrc.nvm-bak ~/.zshrc
    source ~/.zshrc
fi
if [ ! -x "$(command -v node)" ]; then
    nvm install node
fi
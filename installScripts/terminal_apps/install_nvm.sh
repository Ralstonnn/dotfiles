########################
# INSTALL NVM AND NODE #
########################
if [ ! -d  $HOME/.nvm ]; then
    cd $HOME/Downloads/

    SHELL_FILE=$HOME/.zshrc
    if [ ! -f $SHELL_FILE ]; then
	    SHELL_FILE=$HOME/.bashrc
    fi

    mv $SHELL_FILE $SHELL_FILE.nvm-bak
    touch $SHELL_FILE
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    cd
    rm $SHELL_FILE
    mv $SHELL_FILE.nvm-bak $SHELL_FILE
    source $SHELL_FILE
fi
if [ ! -x "$(command -v node)" ]; then
    nvm install node
fi

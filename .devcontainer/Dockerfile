FROM node:18-bullseye

USER root

RUN apt-get update && \
    apt-get install -y \
    
    # utility used to download files from the Internet.
    wget \
    
    # Utilities for connecting to remote servers via SSH
    openssh-client \

    # Installs Z shell as an alternative to bash with 
    # improved functionality, better user experience, 
    # increased productivity and customization.
    zsh \

    # This is done to keep the docker image size small by removing the `/var/lib/apt/lists/` 
    && rm -rf /var/lib/apt/lists/*

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
    && mkdir /commandhistory \
    && touch /commandhistory/.zsh_history \
    && chown -R node /commandhistory \
    && echo "$SNIPPET" >> "/home/node/.zshrc"


USER node 


# Oh My ZSH - INSTALLATION
RUN cd ~ && wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh && sh install.sh
RUN /bin/zsh ~/.zshrc
RUN cd ~ .oh-my-zsh/custom/plugins/ && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN cd ~ .oh-my-zsh/custom/plugins/ && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
RUN cp -r ~/.oh-my-zsh/plugins/fzf ~/.oh-my-zsh/custom/plugins

FROM ubuntu

MAINTAINER Stenn Kool <stennkool@gmail.com>

RUN apt-get update && apt-get -y install zsh wget postgresql-client-common unzip tar coreutils mariadb-client-core-10.0 links irssi netcat dnsutils knot-host iputils-ping net-tools mc supervisor git composer ruby rubygems-integration python python-pip vim curl php-fpm php-mcrypt php-json php-pgsql php-mysql php-curl && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install requests

RUN git clone https://github.com/stennkool/vimrc ~/.vim_runtime

RUN sh ~/.vim_runtime/install_awesome_vimrc.sh

RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc && chsh -s /bin/zsh
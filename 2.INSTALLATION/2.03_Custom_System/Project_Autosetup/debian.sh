#!/bin/bash

group=$(groups | grep -o 'sudo');

echo -e "\e[36;1m
	▓█████▄ ▓█████  ▄▄▄▄    ██▓███   ▒█████    ██████
	▒██▀ ██▌▓█   ▀ ▓█████▄ ▓██░  ██▒▒██▒  ██▒▒██    ▒
	░██   █▌▒███   ▒██▒ ▄██▓██░ ██▓▒▒██░  ██▒░ ▓██▄
	░▓█▄   ▌▒▓█  ▄ ▒██░█▀  ▒██▄█▓▒ ▒▒██   ██░  ▒   ██▒
	░▒████▓ ░▒████▒░▓█  ▀█▓▒██▒ ░  ░░ ████▓▒░▒██████▒▒
	 ▒▒▓  ▒ ░░ ▒░ ░░▒▓███▀▒▒▓▒░ ░  ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
	  ░ ▒  ▒  ░ ░  ░▒░▒   ░ ░▒ ░       ░ ▒ ▒░ ░ ░▒  ░ ░
	   ░ ░  ░    ░    ░    ░ ░░       ░ ░ ░ ▒  ░  ░  ░
	      ░       ░  ░ ░                   ░ ░        ░
	       ░                   ░
\e[0m";

while [ "$voltar" != "n" ]
 do

echo "
              |--------------------------------------------------|
              |                      Menu                        |
              |--------------------------------------------------|
              | 1) Atualizar o sistema                           |
              | 2) Adiconar non-free ou contrib/non-free         |
              | 3) Instalar Ufw                                  |
              | 4) Instalar Build-essential                      |
              | 5) Instalar Atom                                 |
              | 6) Instalar Telegram                             |
              | 7) Instalar Ruby Gems                            |
              | 8) Instalar Jekyll                               |
              | 9) Instalar NodeJs                               |
              | 10) Instalar Vim                                 |
              | 11) Instalar Tmux                                |
              | 12) Instalar Inkscape                            |
              | 13) Instalar Gimp                                |
              | 14) Instalar Audacity                            |
              | 15) Instalar Kdenlive                            |
              | 16) Instalar Vlc                                 |
              | 17) Instalar Chromium                            |
              | 18) Instalar Terminal do XFCE                    |
              | 19) Instalar Compose                             |
              | 20) Instalar LAMP                                |
              | 21) Instalar sudo                                |
              |--------------------------------------------------|
              |             Pressioner (q) para sair             |
              |--------------------------------------------------|
"

if [ $group != 'sudo' ]
then
	echo -e '\n\e[31;1m Pacote SUDO não encontrado. Escolha a opção 21 para instalação\n \e[0m';
fi

read -p "Escolha uma das opções: " opcao

  case $opcao in

    1) sudo apt update -y && sudo apt upgrade -y
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    2) clear
       echo "
             |--------------------------------------------------|
             |               Escolha uma Opção                  |
             |--------------------------------------------------|
             | 1) - Adiconar contrib e non-free                 |
             | 2) - Adicionar non-free                          |
             |--------------------------------------------------|
             |             Pressioner (q) para sair             |
             |--------------------------------------------------|
             "
          read -p "Escolha uma das opções: " sourcelist

          case $sourcelist in
            1) sudo sed -i 's/main/main contrib non-free/g' /etc/apt/sources.list ;;
            2) sudo sed -i 's/main/main non-free/g' /etc/apt/sources.list ;;

            q|Q) exit ;;

            *) echo "Só tem dá opção 1 e 2"
            read -p "Escolha uma das opções: " sourcelist;;
          esac
    echo -e;
    read -p "SoucerList atualizadar, deseja voltar para o menu inicial ? [S/N]" voltar
    clear;;

    3) sudo apt install ufw && sudo ufw enable
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    4) sudo apt install build-essential
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    5) cd /tmp &&
       wget -cO atom.deb https://atom.io/download/deb &&
       sudo dpkg -i atom.deb &&
	   sudo apt -f install &&
	   sudo dpkg -i atom.deb
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    6) cd /tmp &&
      wget -O telegram.tar.xz https://telegram.org/dl/desktop/linux &&
      sudo tar -xJf telegram.tar.xz -C /opt/ &&
      cd /opt/Telegram/ &&
      ./Telegram
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    7) cd /tmp &&
        wget https://rubygems.org/pages/download -O version.html &&
        Version=$(cat version.html | grep tgz | tr / " " | tr '"' " " | cut -d- -f2 | cut -d" " -f1) &&
        sudo apt install build-essential ruby-full &&
        wget -c https://rubygems.org/rubygems/rubygems-$Version &&
        tar -xf rubygems-$Version &&
        cd rubygems-* &&
        sudo ruby setup.rb  &&
        gem --version
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    8) cd /tmp &&
        wget https://rubygems.org/pages/download -O version.html &&
        Version=$(cat version.html | grep tgz | tr / " " | tr '"' " " | cut -d- -f2 | cut -d" " -f1) &&
        sudo apt install build-essential ruby-full &&
        wget -c https://rubygems.org/rubygems/rubygems-$Version &&
        tar -xf rubygems-$Version &&
        cd rubygems-* &&
        sudo ruby setup.rb  &&
        sudo gem install jekyll bundler &&
        jekyll -v
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    9) cd /tmp &&
       wget https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions &&
       Version=$(cat index.html | grep 'Alternatively' | tr -d [a-zA-Z] | awk '{print $3}' | cut -d: -f1 | head -n1) &&
       sudo apt install curl build-essential &&
       curl -sL https://deb.nodesource.com/setup_$Version.x | sudo -E bash - &&
       sudo apt install nodejs &&
       node -v
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    10) sudo apt install vim
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    11) sudo apt install tmux
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    12) sudo apt install inkscape
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    13) sudo apt install gimp
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    14) sudo apt install audacity
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    15) sudo apt install kdenlive
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    16) sudo apt install vlc
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    17) sudo apt install chromium
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    18) sudo apt install xfce4-terminal
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    19) EXPECTED_SIGNATURE=$(wget -q -O - https://composer.github.io/installer.sig)
        php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
        ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

        if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
        then
            >&2 echo 'ERROR: Invalid installer signature'
            rm composer-setup.php
            exit 1
        fi

        php composer-setup.php --quiet
        RESULT=$?
        rm composer-setup.php
        sudo mv composer.phar /usr/local/bin/composer
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    20) sudo apt update -y &&
        sudo apt upgrade -y &&
        sudo apt install apache2 -y &&
        sudo apt install mariadb-server -y &&
        sudo apt install php7.0 libapache2-mod-php7.0 php7.0-mysql -y &&
        sudo systemctl restart apache2
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    21) su &&
        apt install sudo -y &&
        adduser $USER sudo
    echo -e;
    read -p "Programa instalado, deseja escolher outra opção ? [S/N]" voltar
    clear;;

    q|Q) exit ;;

     *) echo "Só tem dá opção 1 até 21"
     echo -e;
     read -p "Deseja voltar para o menu ? [S/N]" voltar
     clear;;
   esac

done

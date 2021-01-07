#!/bin/bash

#Bu Programm Koddunyam.net tarafindan düzenlenmistir.
#Programin kullanimi ve yayilim haklari tamamen
#halka aciktir. Lütfen icerikleri degistireceksenizde
#alinti oldugunu belirtiniz.
#
#Programlarin cogu yeni sistemler yüzünden snap paketleri
#ile calismaktadir.
#
#Bu Script "sudo" komutu ile calistirilmalidir. Aksi halde
#hata verecektir ve cikis yapacaktir. Bilgiler ve kullanim
#Scriptin icinde bulunmaktadir. Ilk karsiniza cikan sorguda
#"K" komutu ile komutlari sorgulayabilirsiniz.

#
# ::: DEGISKEN TANIMI :::
#

grup1='terminal'
paket11='Terminator'
paket12='Zsh Terminali'
paket13='Oh-My-Zsh'
paket14='Powerlevel10k'
paket15='Vim'
paket16='Emacs'
paket17='Htop'
paket18='Locate'
paket19='Git'
paket110='Neofetch'
paket111='Screenfetch'
paket112='LinuxLogo'

grup2='komunikasyon-iletisim'
paket21='Discord'
paket22='Rambox'
paket23='Firefox-ESR'
paket24='Chromium'
paket25='Vivaldi'

grup3='programmlama'
paket31='VS-Code'
paket32='Atom'
paket33='PyCharm'
paket34='Eclipse'
paket35='KomodoIDE'
paket36='QT-Creator'
paket37='Java'

grup4='remote-islemler'
paket41='Teamviewer-32bit'
paket42='Teamviewer-64bit'
paket43='OpenVPN'
paket44='WireGuard'
paket45='ssh'
paket46='TightVncServer'
paket47='Remmina'
paket48='FileZilla'
paket49='DropBox'
paket410='Adb'

grup5='göresel-arayüz'
paket51='Gnome-Tweaks-Tools'
paket52='Gimp'
paket53='Blender'
paket54='Inkscape'
paket55='Pinta'
paket56='Photopea'
paket57='Freemind'
paket58='DrawioApp'

grup6='güvenlik'
paket61='Timeshift'
paket62='KeepassXC'
paket63='Ufw'
paket64='Nmap'
paket65='Wireshark'
paket66='MacChanger'
paket67='ProxyChains'
paket68='Aircrack-ng'
paket69='Netcat'
paket610='EtherApe'
paket611='Kismet'
paket612='Metasploit'

grup7='office'
paket71='LibreOffice'
paket72='Xournall'
paket73='CherryTree'
paket74='Zim'
paket75='Notepadqq'
paket76='TexStudio'
paket77='Wps'

grup8='virtualserver & DB'
paket81='Virtualbox'
paket82='Apachee2'
paket83='Sql-lite'
paket84='MySql'

grup9='music-video'
paket91='Vlc'
paket92='Audacity'
paket93='Spotify'
paket94='Obs-Studio'
paket95='KdenLive'
paket96='Kazam'
paket97='Openshot'
paket98='Kodi'

grup10='Oyun'
paket101='Steam'
paket102='PlayOnLinux'
paket103='Lutris'

# ::: Degisken Fonksiyonlari ::: #

fbildiri (){
	clear
	paket='paket'$grup$secim
	echo $paket yuklenmeye baslayacaktir..
	sleep 2
}

fyuklendi (){
	clear
	echo $paket yüklendi... Ana Menüye geciliyor...
	sleep 2
	main
}

#
###########################################
#    ::: DEGISKEN TANIMLARI BITTI :::
###########################################
#

#
##########################################
#    ::: PAKET YUKLEME ISLEMLERI ::::
##########################################
#

# ::: Grup 1 ::: #
#Terminator
fterminator (){
	fbildiri
	apt install terminator
	fyuklendi
}
# ::: zsh Terminali ::: #
fterminator (){
	fbildiri
	apt install zsh
	fyuklendi
}
# ::: git Komutu ::: #
fgit (){
	fbildiri
	apt install git
	fyuklendi
}
# ::: locate Komutu ::: #
flocate (){
	fbildiri
	apt install mlocate
	fyuklendi
}
# ::: Htop Araci ::: #
fhtop (){
	fbildiri
	apt install htop
	fyuklendi
}
# ::: NeoFetch ::: #
fneofetch (){
	fbildiri
	apt install neofetch
	fyuklendi
}
# ::: ScreenFetch ::: #
fscreenfetch (){
	fbildiri
	apt install screenfetch
	fyuklendi
}
# ::: LinuxLogo ::: #
flinuxlogo (){
	fbildiri
	apt install linuxlogo
	fyuklendi
}
# ::: Vim :::: #
fvim (){
	fbildiri
	apt install vim
	fyuklendi
}
# ::: Emacs ::: #
femacs (){
	fbildiri
	apt install emacs
	fyuklendi
}
# ::: oh-my-zsh ::: #
fohmyzsh (){
	fbildiri
	apt install wget
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	fyuklendi
}
# ::: PowerLevel10k ::: #
fpowerlevel (){
	fbildiri
	apt install git
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
~/powerlevel10k
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
	fyuklendi
}

# ::: Grup 2 ::: #

# ::: Discord ::: #
fdiscord (){
	fbildiri
	mkdir ~/rahatol
	wget https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb > \
~/rahatol/d
	dpkg -i ~/rahatol/discord-0.0.13.deb
	apt install libc++1
	apt --fix-broken install
	dpkg -i ~/rahatol/discord-0.0.13.deb
	fyuklendi
}
# ::: Rambox ::: #
frambox (){
	fbildiri
	apt install snapd
	snap install core
	snap install rambox
	fyuklendi
}
# ::: chromium ::: #
fchromium (){
	fbildiri
	apt install chromium
	fyuklendi
}
# ::: firefox-esr ::: #
ffirefox (){
	fbildiri
	apt install firefox-esr
	fyuklendi
}
# ::: Vivaldi ::: #
fvivaldi (){
	fbildiri
	mkdir ~/vivaldi
	wget https://downloads.vivaldi.com/stable/vivaldi-stable_3.5.2115.81-1_amd64.deb > ~/vivaldi/v
	dpkg -i vivaldi-stable_3.5.2115.81-1_amd64.deb
	fyuklendi
}
# ::: Grup3 ::: #

# ::: vs-code ::: #
fvscode (){
	fbildiri
	mkdir ~/rahatol
	wget https://az764295.vo.msecnd.net/stable/ea3859d4ba2f3e577a159bc91e3074c5d85c0523/code_1.52.1-1608136922_amd64.deb
\ > ~/rahatol
	dpkg -i ~/rahatol/code_1.52.1-1608136922_amd64.deb
	fyuklendi
}
# ::: atom ::: #
fatom (){
	fbildiri
	mkdir ~/rahatol
	wget https://atom-installer.github.com/v1.53.0/atom-amd64.deb > ~/rahatol/i
	dpkg -i ~/rahatol/atom-amd64.deb
	apt install libconf-2-4
	apt --fix-broken install
	dpkg -i ~/rahatol/atom-amd64.deb
	fyuklendi
}
# ::: pycharm ::: #
fpycharm (){
	fbildiri
	mkdir ~/pycharm
	wget \
https://download-cf.jetbrains.com/python/pycharm-community-2020.3.2.tar.gz \
 > ~/pycharm/i
	gunzip pycharm-community-2020.3.2.tar.gz
	export PATH=~/pycharm/pycharm-community-2020.3.2/bin:$PATH
	fyuklendi
}
# ::: eclipse ::: #
feclipse (){
	fbildiri
	mkdir ~/eclipse
	wget \
https://ftp.fau.de/eclipse/oomph/epp/2020-12R/eclipse-inst-jre-linux64.tar.gz \
 > ~/eclipse/e
	gunzip eclipse-inst-jre-linux64.tar.gz
	~/eclipse/eclipse-installer/eclipse-inst
	fyuklendi
}
# ::: geany ::: #
fgeany (){
	fbildiri
	apt install geany
	fyuklendi
}
# ::: qt-creator ::: #
fqtcreator (){
	fbildiri
	mkdir ~/qt
	wget \
https://d13lb3tujbc8s0.cloudfront.net/onlineinstallers/qt-unified-linux-x64-4.0.1-online.run
\ > ~/qt/q
	~/qt/qt-unified-linux-x64-4.0.1-online.run
	fyuklendi
}
# ::: Java ::: #
fjava (){
	fbildiri
	apt install javascript-common
	fyuklendi
}

# ::: grup4 ::: #
# ::: teamviewer-32bit ::: #
fteamviewer32 (){
	fbildiri
	mkdir ~/pycharm
	wget \
https://download-cf.jetbrains.com/python/pycharm-community-2020.3.2.tar.gz \
 > ~/pycharm/i
	gunzip pycharm-community-2020.3.2.tar.gz
	export PATH=~/pycharm/pycharm-community-2020.3.2/bin:$PATH
	fyuklendi
}
# ::: teamviewer-64bit ::: #
fteamviewer64 (){
	fbildiri
	mkdir ~/pycharm
	wget \
https://download.teamviewer.com/download/linux/teamviewer_amd64.deb \
 > ~/teamviewer/t
	dpkg -i teamviewer_amd64.deb
	apt install qml-module-qtquick2
	apt install qml-module-qtquick-layouts
	apt --fix-broken install
	dpkg -i teamviewer_amd64.deb
	fyuklendi
}
# ::: openvpn ::: #
fopenvpn (){
	fbildiri
	apt install openvpn
	fyuklendi
}
# ::: wireguard ::: #
fwireguard (){
	fbildiri
	sh -c "echo 'deb http://deb.debian.org/debian/ unstable main' >>
/etc/apt/sources.list.d/unstable.list"
	apt update
	apt install wireguard
	fyuklendi
}
# ::: adb ::: #
fadb (){
	fbildiri
	apt install adb
	fyuklendi
}
# ::: ssh ::: #
fssh (){
	fbildiri
	apt install ssh
	fyuklendi
}
# ::: tightvnc ::: #
ftightvnc (){
	fbildiri
	apt install tightvncserver
	fyuklendi
}
# ::: remmina ::: #
fremmina (){
	fbildiri
	apt install remmina
	fyuklendi
}
# ::: filezilla ::: #
ffilezilla (){
	fbildiri
	sudo apt install filezilla
	fyuklendi
}
# ::: dropbox ::: #
fdropbox (){
	fbildiri
	mkdir ~/dropbox
	wget \
https://linux.dropbox.com/packages/ubuntu/dropbox_2020.03.04_amd64.deb \
 > ~/dropbox/d
	dpkg -i ~/dropbox/dropbox_2020.03.04_amd64.deb
	fyuklendi
}

# ::: göresel-arayüz ::: #
# ::: gnome-tweaks :::#
ftweaks (){
	fbildiri
	apt install gnome-tweaks
	apt install gnome-tweak-tool
	fyuklendi
}
# ::: drawio ::: #
fdrawio (){
	fbildiri
	apt install snapd
	snap install core
	snap install drawio
	fyuklendi
}
# ::: freemind ::: #
ffreemind (){
	fbildiri
	apt install snapd
	snap install core
	snap install freemind
	fyuklendi
}
# ::: inkscape ::: #
finkscape (){
	fbildiri
	apt install inkscape
	fyuklendi
}
# ::: gimp ::: #
fgimp (){
	fbildiri
	apt install gimp
	fyuklendi
}
# ::: blender ::: #
fblender (){
	fbildiri
	apt install blender
	fyuklendi
}
# ::: pinta ::: #
fpinta (){
	fbildiri
	apt install snapd
	snap install core
	snap install pinta
	fyuklendi
}
# ::: Krita ::: #
fkrita (){
	fbildiri
	apt install krita
	fyuklendi
}

# ::: Güvenlik ::: #
# ::: keepassxc ::: #
fkeepass (){
	fbildiri
	apt install keepassxc
	fyuklendi
}
# ::: ufw ::: #
fufw (){
	fbildiri
	apt install ufw
	fyuklendi
}
# ::: timeshift ::: #
ftimeshift (){
	fbildiri
	apt install timeshift
	fyuklendi
}
# ::: nmap ::: #
fnmap (){
	fbildiri
	apt install nmap
	fyuklendi
}
# ::: wireshark ::: #
fwireshark (){
	fbildiri
	apt install wireshark
	fyuklendi
}
# ::: macchanger ::: #
fmacchanger (){
	fbildiri
	apt install macchanger
	fyuklendi
}
# ::: proxychains ::: #
fproxychains (){
	fbildiri
	apt install proxychains
	fyuklendi
}
# ::: kismet-ekler ::: #
fkismet (){
	fbildiri
	apt install kismet
	fyuklendi
}
# ::: aircrack-ng ::: #
faircrack (){
	fbildiri
	apt install aircrack-ng
	fyuklendi
}
# ::: netcat ::: #
fnetcat (){
	fbildiri
	apt install netcat
	fyuklendi
}
# ::: meta-sploit ::: #
fmetasploit (){
	clear
	echo
	echo " ############################################## "
	echo " ++++++++++++++++++++++++++++++++++++++++++++++ "
	echo " ------------                      ------------ "
	echo "             METASPLOIT YUKLENECEK              "
	echo " -----------                       ------------ "
	echo " ++++++++++++++++++++++++++++++++++++++++++++++ "
	echo " -----------                       ------------ "
	echo "  Yukleme bitince >  msfconsole  < komutu ile   "
	echo "   Metasploit'i kullanmaya baslayabilirsiniz    "
	echo " ---------------------------------------------- "
	echo "        ---Lutfen bilincle kullaniniz---        "
	echo " ---------------------------------------------- "
	echo
	sleep 5
	clear
	cd /tmp
	curl \
https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb
\ > msfinstall
	chmod +x msfinstall
	./msfinstall
	msfdb init
	fyuklendi
}
# ::: etherape ::: #
fetherape (){
	fbildiri
	apt install etherape
	fyuklendi
}
# ::: Office ::: #
# ::: libreoffice ::: #
flibreoffice (){
	fbildiri
	apt install libreoffice
	fyuklendi
}
# ::: xournall ::: #
fxournall (){
	fbildiri
	apt install -y xournal
	fyuklendi
}
# ::: texstudio ::: #
ftexstudio (){
	fbildiri
	apt install -y texstudio
	fyuklendi
}
# ::: zim ::: #
fzim (){
	fbildiri
	apt install -y zim
	fyuklendi
}
# ::: notepadqq ::: #
fnotepadqq (){
	fbildiri
	apt install -y notepadqq
	fyuklendi
}
# ::: cherrytree ::: #
fcherrytree (){
	fbildiri
	apt install snapd
	apt install core
	snap install cherrytree
	fyuklendi
}
# ::: WPS ::: #
fwps (){
	fbildiri
	mkdir ~/wps
	wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/9719/wps-office_11.1.0.9719.XA_amd64.deb > ~/wps/w
	dpkg -i wps-office_11.1.0.9719.XA_amd64.deb
	fyuklendi
}

# ::: virtualserver & DB ::: #
# ::: virtualbox ::: #
fvirtualbox (){
	fbildiri
	wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
	add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
	apt update
	apt install -y virtualbox-6.0
	fyuklendi
}

# ::: sql-lite ::: #
fsqllite (){
	fbildiri
	apt install -y sqlite
	fyuklendi
}
# ::: mysql ::: #
fmysql (){
	fbildiri
	apt install -y mysql-common
	fyuklendi
}
# ::: apache2 ::: #
fapachee (){
	fbildiri
	apt install -y apache2
	apt install -y apache2-utils
	fyuklendi
}

# ::: music-video ::: #
# ::: vlc ::: #
fvlc (){
	fbildiri
	apt install -y vlc
	fyuklendi
}
# ::: obs-studio ::: #
fobs (){
	fbildiri
	apt install -y obs-studio
	fyuklendi
}
# ::: openshot ::: #
fopenshot (){
	fbildiri
	apt install -y openshot
	fyuklendi
}
# ::: kdenlive ::: #
fkdenlive (){
	fbildiri
	apt install -y kdenlive
	fyuklendi
}
# ::: kodi ::: #
fkodi (){
	fbildiri
	apt install snapd
	snap install core
	snap install mir-kiosk-kodi
	fyuklendi
}
# ::: spotify ::: #
fspotify (){
	fbildiri
	apt install snapd
	snap install core
	snap install spotify
	fyuklendi
}
# ::: kazam ::: #
fkazam (){
	fbildiri
	sudo apt install kazam
	fyuklendi
}
# ::: audacity ::: #
faudacity (){
	fbildiri
	apt install audacity
	fyuklendi
}
# ::: Oyun ::: #
# ::: Steam ::: #
fsteam (){
	fbildiri
	dpkg --add-architecture i386
	apt update
	apt install wget gdebi-core libgl1-mesa-dri:i386 libgl1-mesa-glx:i386
	cd /tmp && wget http://media.steampowered.com/client/installer/steam.deb
	gdebi steam.deb
	fyuklendi
}
# ::: PlayOnlinux ::: #
fplayonlinux (){
	fbildiri
	apt install -y playonlinux
	fyuklendi
}
# ::: lutris ::: #
flutris (){
	fbildiri
	add-apt-repository ppa:lutris-team/lutris
	apt update
	apt install -y lutris
	fyuklendi
}

#
########################################################
#      :::  GRUP ICERIK MENU FONKSIYONLARI :::
########################################################
#

fonksiyon1 (){
	clear
	echo " Grup 1: Terminal              "
	echo
	echo " 1) Terminator                 "
	echo " 2) Zsh                        "
	echo " 3) Oh-my-zsh                  "
	echo " 4) Powerlevel10k (zsh tema)   "
	echo " 5) Vim                        "
	echo " 6) Emacs                      "
	echo " 7) htop                       "
	echo " 8) locate                     "
	echo " 9) git                        "
	echo "10) neofetch                   "
	echo "11) screenfetch                "
	echo "12) linuxlogo                  "
	echo
	echo " 'g': Geri 'h<sayi>': Aciklama "
	echo
	grup=1
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') fterminator;;
	'2') fzsh;;
	'3') fohmyzsh;;
	'4') fpowerlevel;;
	'5') fvim;;
	'6') femacs;;
	'7') fhtop;;
	'8') flocate;;
	'9') fgit;;
	'10') fneofetch;;
	'11') fscreenfetch;;
	'12') flinuxlogo;;
	'h1')echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h2') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h3') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h4') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h5') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h6') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h7') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h8') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h9') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h10') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h11') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h12') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'g'|'G') echo ;;
	*) echo ' *************************** '
	  echo '     >>> HATALI GIRIS <<<    '
	  echo ' --------------------------- '
	  sleep 2
	  fonksiyon1;;
	esac
main
}

fonksiyon2 (){
	clear
	echo " Grup 2: Komunikasyon ve       "
	echo "         Iletisim              "
	echo
	echo " 1) Discord                    "
	echo " 2) Rambox  *S                 "
	echo " 3) Firefox                    "
	echo " 4) Chromium                   "
	echo " 5) Vivaldi                    "
	echo
	echo " 'g': Geri 'h<sayi>': Yardim        "
	echo
	grup=2
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') fdiscord;;
	'2') frambox;;
	'3') ffirefox;;
	'4') fchromium;;
	'5') fvivaldi;;
	'h1') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h2') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h3') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h4') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h5') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'g'|'G') echo;;
	*) clear
	  echo ' *************************** '
	  echo '     >>> HATALI GIRIS <<<    '
	  echo ' --------------------------- '
	  sleep 2
	  fonksiyon2;;
	esac
main
}

fonksiyon3 (){
	clear
	echo " Grup 3: Programlama           "
	echo
	echo " 1) Visual Studio Code         "
	echo " 2) Atom                       "
	echo " 3) PyCharm                    "
	echo " 4) Eclipse                    "
	echo " 5) Komodo IDE                 "
	echo " 6) QT Creator                 "
	echo " 7) Java SDE                   "
	echo
	echo " 'g': Geri 'h<sayi>': Yardim        "
	echo
	grup=3
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') fvscode;;
	'2') fatom;;
	'3') fpycharm;;
	'4') feclipse;;
	'5') fkomodo;;
	'6') fqtcreator;;
	'7') fjava;;
	'h1')echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h2') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h3') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h4') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h5') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h6') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h7') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'g'|'G') echo;;
	*) clear
				echo ' *************************** '
				echo '     >>> HATALI GIRIS <<<    '
				echo ' --------------------------- '
				sleep 2
				fonksiyon3;;
	esac
main
}

fonksiyon4 (){
	clear
	echo " Grup 4: Remote Islemler       "
	echo
	echo " 1) Teamviewer 32bit           "
	echo " 2) Teamviewer 64bit           "
	echo " 3) OpenVPN                    "
	echo " 4) Wireguard                  "
	echo " 5) ssh                        "
	echo " 6) tightvnc                   "
	echo " 7) Remmina                    "
	echo " 8) File Zilla                 "
	echo " 9) Dropbox                    "
	echo "10) Adb (Telefon Remote)       "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	grup=4
	read -p ' Seciminizi girin: ' secim
	case $secim in
	 '1') fteamviewer32;;
	 '2') fteamviewer64;;
	 '3') fopenvpn;;
	 '4') fwireguard;;
	 '5') fssh;;
	 '6') ftightvpn;;
	 '7') fremmina;;
	 '8') ffilezilla;;
	 '9') fdropbox;;
	 '10') fadb;;
	 'h1')echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h2') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h3') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h4') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h5') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h6') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h7') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h8') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h9') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'h10') echo "Bu fonksiyon yakinda gelecek"
		 sleep 3;;
	 'g'|'G') echo ;;
	 *) echo ' *************************** '
		 echo '     >>> HATALI GIRIS <<<    '
		 echo ' --------------------------- '
		 sleep 2
		 fonksiyon4;;
	 esac
main
}

fonksiyon5 (){
	clear
	echo " Grup 5: Görsel & Arayüz       "
	echo
	echo " 1) Gnome Tweaks               "
	echo " 2) Gimp                       "
	echo " 3) Blender                    "
	echo " 4) Inkscape                   "
	echo " 5) Pinta                      "
	echo " 6) Photopea                   "
	echo " 7) Freemind                   "
	echo " 8) Draw.io App Linux          "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	grup=5
	read -p ' Seciminizi girin: ' secim
	case $secim in
	 '1') ftweaks;;
	 '2') fgimp;;
	 '3') fblender;;
	 '4') finkscape;;
	 '5') fpinta;;
	 '6') fphotopea;;
	 '7') ffreemind;;
	 '8') fdrawio;;
	 'h1')echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h2') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h3') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h4') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h5') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h6') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h7') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h8') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'g'|'G') echo ;;
 	*) echo ' *************************** '
 	  echo '     >>> HATALI GIRIS <<<    '
 	  echo ' --------------------------- '
 	  sleep 2
 	  fonksiyon5;;
 	esac
main
}

fonksiyon6 () {
	clear
	echo " Grup 6: Güvenlik              "
	echo
	echo " 1) Timeshift                  "
	echo " 2) KeePassXC                  "
	echo " 3) Ufw                        "
	echo " 4) Nmap                       "
	echo " 5) Wireshark                  "
	echo " 6) MacChanger                 "
	echo " 7) ProxyChains                "
	echo " 8) Aircrack-ng                "
	echo " 9) Netcat                     "
	echo "10) Etherape                   "
	echo "11) Kismet                     "
	echo "12) Metasploit                 "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	grup=6
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') ftimeshift;;
	'2') fkeepassxc;;
	'3') fufw;;
	'4') fnmap;;
	'5') fwireshark;;
	'6') fmacchanger;;
	'7') fproxychains;;
	'8') faircrack;;
	'9') fnetcat;;
	'10') fetherape;;
	'11') fkismet;;
	'12') fmetasploit;;
	'h1')echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h2') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h3') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h4') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h5') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h6') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h7') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h8') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h9') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h10') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h11') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h12') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'g'|'G') echo ;;
 	*) echo ' *************************** '
 	  echo '     >>> HATALI GIRIS <<<    '
 	  echo ' --------------------------- '
 	  sleep 2
 	  fonksiyon6;;
 	esac
main
}

fonksiyon7 (){
	clear
	echo " Grup 7: Office & Not Alma     "
	echo
	echo " 1) LibreOffice                "
	echo " 2) Xournall++                 "
	echo " 3) CherryTree *S              "
	echo " 4) Zim                        "
	echo " 5) Notepadqq                  "
	echo " 6) TexStudio                  "
	echo " 7) WPS                        "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	grup=7
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') flibreoffice;;
	'2') fxournall;;
	'3') fcherrytree;;
	'4') fzim;;
	'5') fnotepadqq;;
	'6') ftexstudio;;
	'7') fwps;;
	'h1') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h2') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h3') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h4') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h5') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h6') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'h7') echo "Bu fonksiyon yakinda gelecek"
			sleep 3;;
	'g'|'G') echo ;;
	*) echo ' *************************** '
	  echo '     >>> HATALI GIRIS <<<    '
	  echo ' --------------------------- '
	  sleep 2
	  fonksiyon7;;
	esac
main
}

fonksiyon8 (){
	grup=8
	clear
	echo " Grup 8: V.Server & DB         "
	echo
	echo " 1) VirtualBox                 "
	echo " 2) Apachee2                   "
	echo " 3) Sql-lite                   "
	echo " 4) My-SQL                     "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') fvirtualbox;;
	'2') fapachee;;
	'3') fsqllite;;
	'4') fmysql;;
	'h1')echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h2') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h3') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h4') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'g'|'G') echo ;;
	*) echo ' *************************** '
 	  echo '     >>> HATALI GIRIS <<<    '
 	  echo ' --------------------------- '
 	  sleep 2
 	  fonksiyon8;;
 	esac
main
}

fonksiyon9 (){
	grup=9
	clear
	echo " Grup 9: Müzik & Video        "
	echo
	echo " 1) VLC                       "
	echo " 2) Audacity                  "
	echo " 3) Spotify  *S               "
	echo " 4) Obs Studio                "
	echo " 5) Kdenlive                  "
	echo " 6) Kazam                     "
	echo " 7) Openshot                  "
	echo " 8) Kodi *S                   "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') fvlc;;
	'2') faudacity;;
	'3') fspotify;;
	'4') fobs;;
	'5') fkdenlive;;
	'6') fkazam;;
	'7') fopenshot;;
	'8') fkodi;;
	'h1')echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h2') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h3') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h4') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h5') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h6') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h7') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h8') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h9') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h10') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h11') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'h12') echo "Bu fonksiyon yakinda gelecek"
 		sleep 3;;
 	'g'|'G') echo ;;
 	*) echo ' *************************** '
 	  echo '     >>> HATALI GIRIS <<<    '
 	  echo ' --------------------------- '
 	  sleep 2
 	  fonksiyon9;;
 	esac
main
}

fonksiyon10 (){
	grup=10
	clear
	echo " Grup10: Oyun Eklenti "
	echo
	echo " 1) Steam             "
	echo " 2) Play On Linux     "
	echo " 3) Lutris            "
	echo
	echo " 'g': Geri 'h': Yardim        "
	echo
	read -p ' Seciminizi girin: ' secim
	case $secim in
	'1') fsteam;;
	'2') fplayonlinux;;
	'3') flutris;;
	'h1')echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h2') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'h3') echo "Bu fonksiyon yakinda gelecek"
		sleep 3;;
	'g'|'G') echo ;;
	*) echo ' *************************** '
	  echo '     >>> HATALI GIRIS <<<    '
	  echo ' --------------------------- '
	  sleep 2
	  fonksiyon1;;
	esac
main
}

#
#                   ::: Kullanim Kilavuzu :::
#
# Kullanim kilavuzu fonksiyonKx seklinde sayfalara ayrilmistir.
# Burada icerik sayfalari arasinda gecisler de fonksiyonlar
# sayesinde yapilmistir.
#

fonksiyonK1 (){
	echo "             KODDUNYAM.NET'IN SUNAR...            "
	echo "                                                  "
	echo " OTOMATIK UYGULAMA YUKLEYICI KULLANIM KILAVUZU:   "
	echo "                                                  "
	echo " Karsiniza cikan menü'den ulasmak istediginiz     "
	echo " Uygulama Grubu'nu seciniz. Bunun icin sayi'yi    "
	echo " girmeniz yeterlidir.                             "
	echo "                                                  "
	echo " Dilediginiz Grubun icerigini görmek icin sayi'yi "
	echo " tiklamaniz yeterlidir. Grubun icerik listesi     "
	echo " acilacaktir. Sectiginiz Grubun icerisindeki      "
	echo " Uygulamalar'i sectiginiz anda 'Y' yada '1' ile   "
	echo " Yukleme islemini baslatirsiniz, 'G' yada '2' ile "
	echo " Geriye dönebilir ve 'H'-'3' ile Bilgi Penceresini"
	echo " acabilirsiniz.                                   "
	echo "                                                  "
	echo "                                                  "
	echo "  <Siradaki sayfaya gecmek icin bir tusa basin>   "
	echo "                                                  "
	read a
	if [ $a=* ] ;then
	 clear
	 fonksiyonK2
	fi
}

fonksiyonK2 () {
	echo " Sayfa:2                                          "
	echo
	echo " Uygulamalar'in yaninda bulun '*S' Simgesi paketin"
	echo " SnapCraft ile kullanildigini gösterir. Snap      "
	echo " komutu yüklü degil ise otomatik olarak yüklene-  "
	echo " cektir.                                          "
	echo
	echo " Paketler hakkinda bilgi icin lutfen paket'i secin"
	echo " ve 'H' yada '3' tusuna basip bilgi edinin. Daha  "
	echo " fazla bilgi icin komutun 'man' sayfalarina       "
	echo " basvurmaniz gerekmektedir.                       "
	echo
	echo " Soru, istekler icin veya bulunan hatalar icin    "
	echo " admin@koddunyam.net üzerinden ulasabilirsiniz.   "
	echo
	echo
	echo " <Siradaki sayfaya gecmek icin bir tusa basin>    "
	echo
	read a
	if [ $a=* ] ;then
	 clear
	 fonksiyonK3
	fi
}

fonksiyonK3 () {
	echo " Sayfa:3                                          "
	echo
	echo "                --ICERIKLER--                     "
	echo
	echo "grup1='terminal'                                  "
	echo "paket11='terminator'                              "
	echo "paket12='zsh'                                     "
	echo "paket13='git'                                     "
	echo "paket14='mlocate'                                 "
	echo "paket15='htop'                                    "
	echo "paket16='neofetch'                                "
	echo "paket17='screenfetch'                             "
	echo "paket18='linuxlogo'                               "
	echo "paket19='vim'                                     "
	echo "paket110='emacs'                                  "
	echo "paket111='oh-my-zsh'                              "
	echo "paket112='powerlevel10k'                          "
	echo
	read a
	if [ $a=* ] ;then
 	 clear
 	 fonksiyonK4
	fi
}

fonksiyonK4 () {
	echo "Sayfa:4                                    "
	echo
	echo "grup2='komunikasyon-iletisim'              "
	echo "paket21='discord'                          "
	echo "paket22='rambox'                           "
	echo "paket23='chromium'                         "
	echo "paket24='firefox-esr'                      "
	echo
	echo "grup3='programmlama'                       "
	echo "paket31='vs-code'                          "
	echo "paket32='atom'                             "
	echo "paket33='pycharm'                          "
	echo "paket34='eclipse'                          "
	echo "paket35='komodo-ide'                       "
	echo "paket36='geany'                            "
	echo "paket37='qt-creator'                       "
	echo
	echo
	read a
	if [ $a=* ] ;then
 	 clear
 	 fonksiyonK5
	fi
}

fonksiyonK5 () {
	echo "Sayfa:5                                    "
	echo
	echo " grup4='remote-islemler'                   "
	echo " paket41='teamviewer-32bit'                "
	echo " paket42='teamviewer-64bit'                "
	echo " paket43='openvpn'                         "
	echo " paket44='wireguard'                       "
	echo " paket45='adb'                             "
	echo " paket46='ssh'                             "
	echo " paket47='tightvnc'                        "
	echo " paket48='remmina'                         "
	echo " paket49='filezilla'                       "
	echo " paket410='google-drive'                   "
	echo " paket411='dropbox'                        "
	read a
	if [ $a=* ] ;then
 	 clear
 	 fonksiyonK6
	fi
}

fonksiyonK6 () {
	echo "Sayfa:6                                    "
	echo
	echo " grup5='göresel-arayüz'                    "
	echo " paket51='gnome-tweaks'                    "
	echo " paket52='drawio'                          "
	echo " paket53='freemind'                        "
	echo " paket54='inkscape'                        "
	echo " paket55='gimp'                            "
	echo " paket56='blender'                         "
	echo " paket57='pinta'                           "
	echo " paket58='photopea'                        "
	echo " paket59='Krita'                           "
	read a
	if [ $a=* ] ;then
 	 clear
 	 fonksiyonK7
	fi
}


fonksiyonK7 () {
	echo "Sayfa:7                                    "
	echo
	echo " grup6='güvenlik'                          "
	echo " paket61='keepassxc'                       "
	echo " paket62='ufw'                             "
	echo " paket63='timeshift'                       "
	echo " paket64='nmap'                            "
	echo " paket65='wireshark'                       "
	echo " paket66='macchanger'                      "
	echo " paket67='proxychains'                     "
	echo " paket68='kismet-ekler'                    "
	echo " paket69='airmon-gz'                       "
	echo " paket610='aireplay-ng'                    "
	echo " paket611='aircrack-ng'                    "
	echo " paket612='netcat'                         "
	echo " paket613='meta-sploit'                    "
	echo " paket614='etherape'                       "
	echo " paket681='kismet'                         "
	echo " paket682='kismet-capture-common'          "
	echo " paket683='kismet-capture-linux-bluetooth' "
	echo " paket684='kismet-capture-linux-wifi'      "
	echo " paket685='kismet-core'                    "
	echo " paket686='kismet-plugins'                 "
	read a
	if [ $a=* ] ;then
 	 clear
 	 fonksiyonK8
	fi
}


fonksiyonK8 () {
	echo "Sayfa:8                                "
	echo
	echo " grup7='office'                        "
	echo " paket71='libreoffice'                 "
	echo " paket72='xournall++'                  "
	echo " paket73='texstudio'                   "
	echo " paket74='zim'                         "
	echo " paket75='notepad-plus-plus'           "
	echo " paket76='tritiumnote'                 "
	echo " paket77='cherrytree'                  "
	echo " paket78='tagspaces'                   "
	echo " grup8='virtualserver & DB'            "
	echo " paket81='virtualbox'                  "
	echo " paket82='android-bulcam'              "
	echo " paket83='sql-lite'                    "
	echo " paket84='mysql'                       "
	echo " paket85='apache2'                     "
	read a
	if [ $a=* ] ;then
 	 clear
 	 fonksiyonK9
	fi
}


fonksiyonK9 () {
	echo "Sayfa:9                                "
	echo
	echo " grup9='music-video'                   "
	echo " paket91='vlc'                         "
	echo " paket92='obs-studio'                  "
	echo " paket93='openshot'                    "
	echo " paket94='kdenlive'                    "
	echo " paket95='kodi'                        "
	echo " paket96='spotify'                     "
	echo " paket97='kazam'                       "
	echo " paket98='audacity'                    "

	echo " grup10='oyun'                         "
	echo " paket101='steam'                      "
	echo " paket102='playonlinux'                "
	echo " paket103='lutris'                     "
	read a
	if [ $a=* ] ;then
 	 clear
 	 main
	fi
}

#
##########################################################
#                ::: MAIN SCRIPT :::
##########################################################
#

menu (){
	clear
	echo
	echo " Grup 1: Terminal Uygulamalari              "
	echo " Grup 2: Komunikasyon-Iletisim Uygulamalari "
	echo " Grup 3: Programlama Uygulamalari           "
	echo " Grup 4: Remote Islem Uygulamalari          "
	echo " Grup 5: Görsel & Arayüz Uygulamalari       "
	echo " Grup 6: Güvenlik Uygulamalari              "
	echo " Grup 7: Office & Not Alim Uygulamalari     "
	echo " Grup 8: V.Server, Emulator & Database      "
	echo " Grup 9: Müzik & Video Uygulamalari         "
	echo " Grup10: Oyunlar icin gerekli Uygulamalar   "
	echo " Bilgi : Kullanim kilavuzu icin ->'K'       "
	echo " Cikis : Cikmak icin -> 'Q' veya 'C'        "
	echo
}

main (){
	echo
	echo " ########################################## "
	echo " ------------------------------------------ "
	echo " **********                     *********** "
	echo " #####>>>   KODDUNYAM.NET SUNAR   <<<###### "
	echo " ..........                     ........... "
	echo " ****************************************** "
	echo
	menu

	read -p ' Lütfen bir Grup Numarasi giriniz(1-10): ' no

	case $no in
		'1') fonksiyon1;;
		'2') fonksiyon2;;
		'3') fonksiyon3;;
		'4') fonksiyon4;;
		'5') fonksiyon5;;
		'6') fonksiyon6;;
		'7') fonksiyon7;;
		'8') fonksiyon8;;
		'9') fonksiyon9;;
		'10') fonksiyon10;;
		'K'|'k')fonksiyonK1;;
		'c'|'C'|'Q'|'q')
		echo;;
		*)
		echo " Hatali Giris Yaptiniz! Lutfen tekrar deneyin"
		sleep 2
		menu;;
	esac
}

#
##################################################################
#                    ::: END MAIN SCRIPT :::
##################################################################
#

#
########################################################
#       :::   FONKSIYONLAR DUZENLEME BITTI   :::
########################################################
#

#
########################################################
#       :::   PROGRAMM KARSILAMA MESAJI    :::
########################################################
#
clear
echo
echo
echo "               /********************\            "
echo "   >|**********                      ****+++     "
echo '   |    Kolay Paket Kurulum Yoneticisi  |||_     '
echo "    ***----------------------------------***-    "
echo "          OO                         OO          "
echo
echo " Paket icerikleri ve tanimlar Paket yuklenmeden  "
echo " karsiniza cikacaktir. Lutfen dikkatle okuyun!   "
echo
echo " Paketlerin yaninda '*S' bulunan icerikler       "
echo " SnapCraft tarafindan yüklenecektir. Sectiginiz  "
echo " Paket Snap Paketi ise Snap otomatik yüklenir!   "
echo
echo " Kategorilerin icindeki Yardim bölümü daha aktif "
echo " edilmedi. Bilmediginiz paketleri yüklemeyiniz.  "
echo
echo " Kolay gelsin!                                   "
echo
echo " *********************************************** "
echo
read -p ' Devam etmek icin bir tusa basiniz!' a
if [ $a=* ] ;then
 clear
fi

#
###########################################
#   :::   SUDO KULLANICI DENETIMI   :::
######VVVVVVVVVVVVVVVVVVVVVVVVVVVVV########
#

if (( $EUID!=0)); then
i=5
	while [ $i -gt 0 ]
	do
	clear
	echo
	echo
	echo ' ################   SUDO HATASI   #################'
	echo
	echo "  O_  Bu Skripti 'sudo' ile calistirmaniz gerekiyor"
	echo "  |   Skript kapanacak lütfen tekrar 'sudo' ile    "
	echo " /\   calistiriniz.                                "
	echo
	echo " ##############>>>  KAPATILIYOR  <<<###############"
	((i--))
	echo
	echo " Program $i saniye icinde kapanacaktir..           "
	sleep 1
	done
exit
fi
#
########################################################
# ::: SUDO KULLANILMADIYSA PROGRAM KAPITILACAKTIR! :::
########################################################
#

#
##################################################
#  ::: SUDO KULLANIMIYLA SCRIPT BASLAYACAK :::
##################################################
#

main

#
# :::  FONKSIYON-GRUPLARI KONTROLU SONA ERDI  :::
# :::            PROGRAM KAPANIS             :::
#

i=5
while [ $i -gt 0 ]
 do
 clear
 echo " -----------------------------------------------"
 echo
 echo
 echo " +++++++++>   Cikis yapiliyor...   <++++++++++++"
 echo
 echo
 echo " #####>  Koddunyam.net Sitesine Bekleriz  <#####"
 echo
 echo
 echo " -----------------------------------------------"
 echo
 ((i--))
 echo " Program $i saniye icinde kapanacaktir.."
 sleep 1
done

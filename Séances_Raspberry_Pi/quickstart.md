# Démarrage rapide avec la Raspberry Pi

Afin pouvoir réaliser une multitude de projets à l’aide de la Raspberry Pi, il est nécessaire d’en apprendre un minimum au sujet de cet ordinateur monocarte.

## <a name="kesako"></a> Kesako ?

<img alt="Logo Raspberry Pi" src="/Séances_Raspberry_Pi/quickstart_content/logo.svg" width=180 align="left">

[Raspberry Pi](https://www.raspberrypi.com/) est une fondation qui produit des __ordinateurs monocartes__, mais aussi des __cartes de développement à microcontrôleur__ (comme celles produites par Arduino, mais ici, seul les ordinateurs nous intéressent). À l’instar d’Arduino, Raspberry Pi produit aussi des cartes destinées à l’__industrie__ (principalement les _compute modules_) et vise principalement le secteur de l’__éducation__ (en proposant des kits, des projets, etc.).

Raspberry Pi a monopole dans le monde des ordinateurs monocarte (aussi appelé _SBC_, pour _single board computer_ en anglais), mais des alternatives existent. Toutefois, ces SBC alternatifs sont moins bien supportés, ce qui a d’ailleurs donné naissance au projet [armbian](https://www.armbian.com/) qui propose des images Linux plus récentes pour ces cartes, mais avec quelques limitations.

<p style="text-align: center;"><img alt="Projet d’écran holographique sur une Raspberry" src="/Séances_Raspberry_Pi/quickstart_content/project_holo.png" width=300 align="center">
</p>

Raspberry Pi n’est __pas toujours la solution à tous nos problèmes__, mais cela permet d’avoir une bonne introduction à Linux et à l’électronique.

## <a name="carte"></a> La carte Raspberry Pi (RPi)

Le focus de ce guide se porte sur les ordinateurs monocartes (et donc pas sur les cartes de développement à base de microcontrôleur), que l’on appelle communément Raspberry Pi.

<p style="text-align: center;"><img alt="Carte Raspberry Pi 4" src="/Séances_Raspberry_Pi/quickstart_content/rpi4.png" width=300 align="center">
</p>

Comme on peut le voir ci-dessus, la carte est bien fournie en connecteurs. On retrouve un connecteur __USB C__ qui sert uniquement à l’alimentation de la carte, deux connecteurs __micro HDMI__, un connecteur __audio__, 4 ports __USB A__ (dont deux USB 3.0), un port __Ethernet__, un __connecteur pour raccorder une caméra__, __un autre pour raccorder un écran__, des __broches d’entrée sortie__, un __lecteur pour une carte [micro SD](https://fr.wikipedia.org/wiki/Carte_SD#La_carte_microSD)__ (en dessous de la carte) et une carte réseau sans fil.

La RPi via le système d’exploitation (ou _OS_ pour _Operating System_ en anglais) peut interagir avec ces entrées et sorties. Le système d’exploitation est un __ensemble de programmes complexes__ qui apportent un niveau d’abstraction important pour faciliter l’utilisation de la carte. Le système d’exploitation est en général installé sur une carte micro SD. Cependant, des alternatives existent, car __les cartes micro SD ne sont pas fiables pour cet usage sur du long terme__. C’est pourquoi certaines personnes installent l’OS sur un SSD ou dans une mémoire interne à la carte (RPi ou équivalent) quand elle existe. Ci-dessous, le _compute module 4_ (_CM4_) peut être équipé d’une mémoire flash (ici, il ne l’est pas).

<p style="text-align: center;"><img alt="Compute module 4  de Raspberry Pi" src="/Séances_Raspberry_Pi/quickstart_content/cm4.jpg" width=300 align="center">
</p>

La RPi permet donc de faire tourner __un voire plusieurs programmes en même temps__ qui peuvent ou non interagir avec les entrées sorties de la carte. Le niveau de complexité étant plus important que pour une carte Arduino, la __consommation électrique__ se voit aussi plus importante (en général autour de __[6 W à 9 W](https://raspberrypi.stackexchange.com/a/114245) avec un usage intensif__). Cependant, pour des projets nécessitant l’utilisation de caméra en temps réel, ce type de petit ordinateur est idéal (dans l’image ci-dessous, une carte RPi Zero est utilisée).

<p style="text-align: center;"><img alt="Carte Raspberry Pi Zero" src="/Séances_Raspberry_Pi/quickstart_content/project_zerocam.jpg" width=300 align="center">
</p>

Contrairement à la plupart des cartes Arduino, il n’y a ici pas de limitation quant au langage de programmation utilisable. Par simplicité ce guide couvrira l’utilisation de __Python__ afin d’interagir avec les entrées/sorties (_GPIO_, pour _General Purpose Input Output_ en anglais). En revanche, les RPi n’embarque __pas de CAN__ (Convertisseur Analogique Numérique ou _ADC_ pour _Analog Digital Converter_ en anglais), ce qui nous empêche de mesurer des tensions directement avec la carte. Mais des __entrées sorties numériques fonctionnant en 3,3 V__ (niveau logique haut) sont belles et bien présentes sur la carte. __Le niveau de tension logique maximal est de 3,3 V !__

<!-- ## <a name="carte"></a> Exemples de projets -->

## <a name="os_install"></a> Installation du système d’exploitation (OS)

Avant de pouvoir utiliser la Raspberry Pi, vous devez obligatoirement (à moins de faire tourner votre programme directement avec [FreeRTOS](https://github.com/TImada/raspi4_freertos) ou encore [Rust](https://blog.adafruit.com/2016/01/22/raspberry-pi-bare-metal-programming-with-rust-piday-raspberrypi-raspberry_pi/)) installer un OS (système d’exploitation ou _operating system_).

Plusieurs choix s’offrent à vous, soit vous savez quel OS installer (une distribution particulière de Linux, _android_ ou encore Windows), soit vous débutez et dans ce cas, __Raspberry Pi OS__ est là pour vous.

Afin d’installer cet OS, il vous faut le fichier "d’installation", que l’on appelle __[image disque](https://fr.wikipedia.org/wiki/Image_disque)__. Cette image (disque) contient tous les fichiers du système d’exploitation et aussi la [table de partitionnement](https://fr.wikipedia.org/wiki/Table_de_partitionnement) à utiliser pour ce système d’exploitation. L’avantage d’utiliser une image est que l’installation sera strictement la même sur toutes les RPi, mais aussi que l’image peut être __modifiée et redistribuée facilement__. Les utilisateurs avancés peuvent modifier des images de Raspberry Pi OS (ou autre OS compatible) afin de distribuer plus facilement leur application spécialisée (e.g. le projet [My Naturewatch](https://github.com/interactionresearchstudio/NaturewatchCameraServer) qui permet à ses utilisateurs de construire une caméra d’observation de la faune). Mais, il ne faut pas être un expert pour modifier les images que vous installez sur la RPi. En effet, [Raspberry Pi Imager](https://www.raspberrypi.com/software/), permet de choisir directement une image puis de l’écrire (de la grave ou encore de la _flasher_) sur une carte micro SD tout en changer des paramètres de l’image.

### <a name="os_install_rpi_imager"></a> Installation

Installation de [Raspberry Pi Imager](https://www.raspberrypi.com/software/), lancement de l’application.

1. choix de l’OS ;
2. sélection de la __carte (micro) SD__ (la taille de la carte doit être de __minimum 8 Go__) ;
3. modification des préférences :
   1. modification de l’`hostname` ;
   2. activation de SSH (avec une __clef publique__ ou avec un __mot de passe__) ;
   3. changement du __nom d’utilisateur__ et du __mot de passe__ ;
   4. configuration du __Wi-Fi__ (__SSID, mot de passe et pays__) ;
   5. configuration du __fuseau horaire__ et de la __langue du clavier__.

Ou en images :

<p style="text-align: center;"><img alt="installation_rpi" src="/Séances_Raspberry_Pi/quickstart_content/installation.gif" width=700 align="center">
</p>

Le programme va ensuite __écrire__ sur la carte (micro) SD et __vérifier__ l’écriture.

### <a name="os_install_first_start"></a> Premier démarrage

Avant de démarrer la Raspberry Pi, insérez la carte (micro) SD dans le lecteur de la carte Raspberry Pi. Ensuite, brancher les périphériques (clavier, souris, écran, câble réseau, etc.) et finalement branchez l’alimentation de la carte RPi. Le premier démarrage est plus long (plus d’une minute en fonction de la carte RPi utilisée).



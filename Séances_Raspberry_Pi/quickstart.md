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

La RPi via le système d’exploitation (ou _OS_ pour _Operating System_ en anglais) peut interagir avec ces entrées et sorties. Le système d’exploitation est un __ensemble de programmes complexes__ qui apportent un niveau d’abstraction important pour faciliter l’utilisation de la carte. Le système d’exploitation est en général installé sur une carte micro SD. Cependant, des alternatives existent, car __les cartes micro SD ne sont pas fiables pour cet usage sur du long terme__. C’est pourquoi certaines personnes installent l’OS sur un SSD ou dans une mémoire interne à la carte (RPi ou équivalent) quand elle existe.

La RPi permet donc de faire tourner __un voire plusieurs programmes en même temps__ qui peuvent ou non interagir avec les entrées sorties de la carte. Le niveau de complexité étant plus important que pour une carte Arduino, la __consommation électrique__ se voit aussi plus importante (en général autour de __5 W à 9 W__ avec un usage intensif). Cependant, pour des projets nécessitant l’utilisation de caméra en temps réel, ce type de petit ordinateur est idéal (dans l’image ci-dessous, une carte RPi Zero est utilisée).

<p style="text-align: center;"><img alt="Carte Raspberry Pi Zero" src="/Séances_Raspberry_Pi/quickstart_content/project_zerocam.jpg" width=300 align="center">
</p>

Contrairement à la plupart des cartes Arduino, il n’y a ici pas de limitation quant au langage de programmation utilisable. Par simplicité ce guide couvrira l’utilisation de __Python__ afin d’interagir avec les entrées/sorties (_GPIO_, pour _General Purpose Input Output_ en anglais). En revanche, les RPi n’embarque __pas de CAN__ (convertisseur analogique numérique), ce qui nous empêche de mesurer des tensions directement avec la carte. Mais des __entrées sorties numériques fonctionnant en 3,3 V__ (niveau logique haut) sont belles et bien présentes sur la carte. __Le niveau de tension logique maximal est de 3,3 V !__

<!-- ## <a name="carte"></a> Exemples de projets -->

## <a name="os_install"></a> Installation du système d’exploitation
Pi Installer

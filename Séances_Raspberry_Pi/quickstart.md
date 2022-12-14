# Démarrage rapide avec la Raspberry Pi

Afin pouvoir réaliser une multitude de projets à l'aide de la Raspberry Pi, il est nécessaire d'en apprendre un minimum au sujet de cet ordinateur monocarte.

## <a name="kesako"></a> Kesako ?

<img alt="logo Raspberry Pi" src="/quickstart_content/logo.svg" width=180 align="left">

[Raspberry Pi](https://www.raspberrypi.com/) est une fondation qui produit des ordinateurs monocartes, mais aussi des cartes de développement à micro-contrôleur (comme celles produites par Arduino, mais ici, seul les ordinateurs nous intéressent). À l'instar d'Arduino, Raspberry Pi produit aussi des cartes destinées à l'industrie (principalement les _compute modules_) et vise le secteur de l'éducation (en proposant des kits, des projets, etc.).

Raspberry Pi a monopole dans le monde des ordinateurs monocarte (aussi appelé _SBC_, pour _single board computer_ en anglais), mais des alternatives existent. Toutefois ces SBC alternatifs sont moins bien supportés, ce qui a d'ailleurs donné naissance au projet [armbian](https://www.armbian.com/) qui propose des images Linux plus récentes pour ces cartes, mais avec quelques limitations.

<p style="text-align: center;"><img alt="Projet d'écran holographique sur une Raspberry" src="/quickstart_content/project_holo.png" width=300 align="center">
</p>

Raspberry Pi n'est par toujours la solution à tous nos problèmes, mais cela permet d'avoir une bonne introduction à Linux et à l'électronique.

## <a name="carte"></a> La carte Raspberry Pi (RPi)

Le focus de ce guide se porte sur les ordinateurs monocartes (et donc pas sur les cartes de développment à base de micro-contrôleur), que l'on appelle communément Raspberry Pi.

<p style="text-align: center;"><img alt="Carte Raspberry Pi 4" src="/quickstart_content/rpi4.png" width=300 align="center">
</p>

Comme on peut le voir ci-dessus, la carte est bien fournie en connecteurs. On retrouve un connecteur USB C qui sert uniquement à l'alimentation de la carte, deux connecteurs micro HDMI, un connecteur audio, 4 port USB (dont deux USB 3.0), un port Ethernet, un connecteur pour raccorder une caméra, un autre pour raccorder un écran, des broches d'entrée sortie, un lecteur pour une carte [micro SD](https://fr.wikipedia.org/wiki/Carte_SD#La_carte_microSD) (en dessous de la carte) et une carte réseau sans fil.

La RPi via le système d'exploitation (ou _OS_ pour _Operating System_ en anglais) peut interagir avec ces entrées et sorties.

Le système d'exploitation est un ensemble de programme complexes qui apportent un niveau d'abstraction important pour faciliter l'utilisation de la carte. Le système d'exploitation est en général installé sur une carte micro SD. Cependant, des alternatives existent, car les cartes micro SD ne sont pas fiables pour cet usage sur du long terme. C'est pourquoi certaines personnes installent l'OS sur un SSD ou dans une mémoire interne à la carte (RPi ou équivalent) quand elle existe.

La RPi permet donc de faire tourner un voire plusieurs programmes qui peuvent ou non interagir avec les entrées sorties de la carte.

Contrairement à la plupart des cartes Arduino, il n'y a ici pas de limitation quant au langage de programmation utilisable. Par simplicité ce guide couvrera l'utilisation de Python afin d'interagir avec les entréess/sorties (_GPIO_)

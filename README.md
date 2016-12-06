# dev-vm-workstation
Build et utilisation de la VM Vagrant pour disposer des outils de développement sans se prendre la tête.

## build (Linux ONLY)

Ce sous projet contient le build [Hashicorp Packer](https://www.packer.io/) afin de constituer les box Vagrant (VirtualBox).

Sous linux, afin de constituer un build il suffit de lancer le script **build.sh** et d'attendre.

Le résultat sera a uploader dans [Atlas](https://atlas.hashicorp.com/boxes/search) dans l'organisation ARIG.

## Use (tous OS)

Ce sous projet contient le nécéssaire pour instancier un machine virtuel de développement pour les projets de l'association.

Il faut installer les points suivant :
* [Télécharger Vagrant](https://www.vagrantup.com/downloads.html)
* [Télécharger VirtualBox](https://www.virtualbox.org/wiki/Downloads) (ne pas oublié Extension Pack)

*NB : Sous linux utiliser le package manager natif est préférable.*

Une fois les outils installé dans le répertoire *use* lancer les commandes suivantes :
* vagrant up
..* Si la VM n'éxiste pas elle est créer et provisionné par Ansible
..* Si la VM a déja été lancer au préalable, elle sera juste démarré
* vagrant halt : Stop la VM en cours d'éxécution
* vagrant destroy : Détruit la VM
* vagrant provision : Permet de relancer la provision Ansible sur une VM déja provisionné (permet de mettre a jour si il y a des changement de playbook / roles)

Les montages suivant sont automatiquement instancier :
* /vagrant : Le répertoire courant (use)
* /vagrant_workspaces : L'intégralité du Workspace GIT ARIG (a condition que dev-wm-workstation soit bien récupérer depuis le workspace et non de manière isolé)

Bon développement.

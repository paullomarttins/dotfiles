# Dotfiles

Minhas configurações básicas no ambiente i3wm e mais algumas coisas!!

### Requisitos:

Antes de inciar a restauração dos dotfiles, instale os pacotes básicos necessários em pkglist.txt.

```
# pacman -S --needed - < pkglist.txt 
```

Para listar e salvar seus packages no pacman faça:

```
$ pacman -Qqe > pkglist.txt
```
### Configuração do dotfiles com Git:

Restaurando os dotfiles em uma nova instalação de sistema:

```
$ git clone --bare <git-repo-url> $HOME/.dotfiles
```
```
$ alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
```
```
$ dotfiles checkout
```
```
$ dotfiles config --local status.showUntrackedFiles no
```

Caso nunca tenha configurado o dotfiles no sistema, siga o processo inicial dentro da pasta home:

```
$ git init --bare ~/.dotfiles
```
```
$ alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
```
```
$ dotfiles config status.showUntrackedFiles no
```

#### Referências:

[pacman/Tips and tricks](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks)

[dotfiles](https://wiki.archlinux.org/title/Dotfiles)

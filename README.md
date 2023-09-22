<h1 align="center">🍢 dotfiles</h1>

![kde](https://i.imgur.com/pAoAO5C.png)
 
### For your infomation 📋
- **DE** : KDE Plasma ✨ (*Recommended*)
	- **Font** : CaskaydiaCove Nerd Font
	- **Cursor**: Simple (Gruvbox Dark)
	- **Global Theme**: GruvboxPlasma

- **Tools shown** : [`neofetch`](https://github.com/dylanaraps/neofetch), [`neovim`](https://github.com/neovim/neovim), [`cowsay`](https://github.com/piuccio/cowsay), [`bottom`](https://github.com/ClementTsang/bottom), [`colorscripts`](https://gitlab.com/dwt1/shell-color-scripts)

## 📦 Installing Packages
To make things work, install the basic packages by `cd`-ing into the **`pkglist/`** directory. Feel free to list your desired packages in **`pkglist.txt`**

- After customizing the **`pkglist.txt`**, execute the installation script using the following command:
    ```bash
    sudo ./install_pkg.sh
    ```

This will install the **minimum packages** that you'll require for the dotfiles to work properly.

## 📁 Copying the dotfiles

To install these dotfiles, you'll need `git` and GNU `stow`. Follow these steps:

1. **Clone the Repository** 📦

   Clone this repository into your home directory (`~`) using `git`:

   ```bash
   cd && git clone https://github.com/TrueMyst/dotfiles.git
   ```

2. **Symlink the Dotfiles** ⚡

   Use `stow` to symlink the dotfiles you want:

   - To **symlink** everything (except the README):

     ```bash
     cd ~/dotfiles && stow */
     ```

   - To symlink **specific configurations**:

     ```bash
     cd ~/dotfiles && stow config1 config2 config3
     ```

Replace `config1`, `config2`, `config3`, etc., with the names of the configurations you want to install.

## 👋 Contributing
Feel free to contribute and improve these configurations. If you have suggestions, please submit a pull request. Your contributions are greatly appreciated!


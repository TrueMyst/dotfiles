<h1 align="center">🍢 dotfiles</h1>

![kde](https://i.imgur.com/pAoAO5C.png)
 
### For your infomation 📋
- **DE** : KDE Plasma ✨ (*Recommended*)
	- **Font** : CaskaydiaCove Nerd Font
	- **Cursor**: Simple (Gruvbox Dark)
	- **Global Theme**: GruvboxPlasma

- **Tools shown** : [`neofetch`](https://github.com/dylanaraps/neofetch), [`neovim`](https://github.com/neovim/neovim), [`cowsay`](https://github.com/piuccio/cowsay), [`bottom`](https://github.com/ClementTsang/bottom), [`colorscripts`](https://gitlab.com/dwt1/shell-color-scripts)

This will install the **minimum packages** that you'll require for the dotfiles to work properly.

## 📁 Copying the dotfiles

To install these dotfiles, you'll need **`git`** and GNU **`stow`**. Follow these steps:

-  Clone this **repository** into your home directory (`~`) using **`git`**: 

   ```bash
   cd && git clone https://github.com/TrueMyst/dotfiles.git
   ```

## 📦 Installing Packages
To make things work, install the basic packages by **`cd`**-ing into the **`pkglist/`** directory. Feel free to list your desired packages in **`pkglist.txt`**

- After customizing the **`pkglist.txt`**, execute the installation script using the following command:
    ```bash
    sudo ./install_pkg.sh
    ```

## ⚡ Stow the Dotfiles

#### ⓘ  Make sure to backup your existing configuration files in your `.config/` or else it wouldn't be able work properly
---
   Use **`stow`** to symlink the dotfiles you want:

   - To **stow** everything (except the **README**):

     ```bash
     cd ~/dotfiles && stow */
     ```

   - To stow **specific configurations**:

     ```bash
     cd ~/dotfiles && stow config1 config2 config3
     ```

Replace `config1`, `config2`, `config3`, etc, with the names of the configurations you want to install.

## 👋 Contributing
Feel free to contribute and improve these configurations. If you have suggestions, please submit a pull request. Your contributions are greatly appreciated!

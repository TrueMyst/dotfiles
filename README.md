# **<div align="center">🍢 dotfiles</div>**
*<p align = "center">a type of addiction that you can never get rid of 🤷<p>*

![kde](https://i.imgur.com/pAoAO5C.png)

## Installation

To install these dotfiles, you'll need `git` and GNU `stow`. Follow these steps:

1. **Clone the Repository** 📦

   Clone this repository to your home directory (`~`) using `git`:

   ```bash
   git clone https://github.com/TrueMyst/dotfiles.git ~
   ```

2. **Symlink the Dotfiles** ⚡

   Use `stow` to symlink the dotfiles you want:

   - To symlink everything (except the README):

     ```bash
     cd ~/dotfiles && stow */
     ```

   - To symlink specific configurations:

     ```bash
     cd ~/dotfiles && stow config1 config2 config3
     ```

Replace `config1`, `config2`, `config3`, etc., with the names of the configurations you want to install.
## 👋 Contributing
Feel free to contribute and improve these configurations. If you have suggestions, please submit a pull request. Your contributions are greatly appreciated!

<h1 align="center">🍢 dotfiles</h1>

![kde](https://i.imgur.com/pAoAO5C.png)

### Fyi, the tools shown in the image
- [`neofetch`](https://github.com/dylanaraps/neofetch)
- [`neovim`](https://github.com/neovim/neovim)
- [`cowsay`](https://github.com/piuccio/cowsay)
- [`bottom`](https://github.com/ClementTsang/bottom)
- [`colorscripts`](https://gitlab.com/dwt1/shell-color-scripts)

## Installation

To install these dotfiles, you'll need `git` and GNU `stow`. Follow these steps:

1. **Clone the Repository** 📦

   Clone this repository into your home directory (`~`) using `git`:

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

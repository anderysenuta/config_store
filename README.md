# Config Store Setup Guide

Follow these steps to set up your configuration files on a new machine:

---

### Step 1: Create an Alias  
Add the following alias to your shell configuration file (`.bashrc`, `.zshrc`, or `fish` config):

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

---

### Step 2: Clone the Bare Repository  
Clone your Git bare repository using this command:

```bash
git clone --bare git@github.com:anderysenuta/config_store.git $HOME/.cfg
```

---

### Step 3: Adjust Git Settings  
Disable showing untracked files for your configuration repository:

```bash
config config --local status.showUntrackedFiles no
```

---

### Additional Resources  
For more details, check out these references:  
- [Bobuk’s Mirror Article](https://mirror.xyz/bobuk.eth/1fxC0ks6p3Js-cbpYLwuP3iPLOsXJkmnQCChnHdfSlo)  
- [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials/dotfiles)

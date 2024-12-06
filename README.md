# 🔰 Beginner dotfiles template

<https://rwxrob.github.io/books/code-mage>

This repo is for beginners who want to start with some good default dotfiles (or just copy mine). Sharing (and stealing) "dot files" is a long standing tradition in the Unix world. Just look how many there are [here on GitHub](https://github.com/search?q=dotfiles&type=repositories).

## Install

The [*Code Mage book*](https://rwxrob.github.io/books/code-mage) covers this step by step if you prefer. Otherwise, this will get you going the quickest:

```sh
mkdir -p ~/Repos/github.com/you
cd ~/Repos/github.com/you
gh repo create dot --template rwxrob/dot-template --private --clone
cd dot
./setup
```

## What setup does

The `setup` script (for those who cannot yet understand the source) just creates symbolic links to everything in this repo at the appropriate place so that anytime you make a customization you can simple run `savedot` from any directory and it will push the latest changes to GitHub with a generic `saved` commit message. That way everything is ready on the next computer you need to run it on.

## Suggested home directory structure

This set of dotfiles is designed with the following conventional organization of your home directory as follows:

- Same account name `/home/you` as GitHub account name `https://github.com/you`
- `~/Repos/github.com/you` - GitHub repos location
- `~/Repos/github.com/you/dot` or `~/dot` or `~/dotfile` - dotfiles directory location
- `~/Downloads` - downloads directory

This organization is based on the most common starting home directory structures on all OSes.

## Additional installers

The first thing I usually want to do after setting up my dot files on a new system is to install my favorite applications so I've included a number of install scripts under [`install`](install). You can read more about them in the README.md there.

## Consider read-only

If, like me, you try to have the same dotfiles for work and your personal home lab then you might have wrestled with the legal question of putting _any_ personal code on a work computer. I've never heard of this ever being a problem for anyone, but it really won't ever be an issue if you remember to only pull a read-only clone of this repo and make all the changes from your personal computer instead. It goes something like this:

1. Discover you need something changed or added.
2. Login to personal computer.
3. Make the change to dot files.
4. Run `savedot`.
5. Turn back to work computer
6. Change into dot files read-only repo.
7. Do a `git pull` to get the change.

Not only does this completely avoid any problem legally but keeps you from creating merge conflicts or working out how to even authenticate through the firewall to push up changes. This is usually accomplished by using the `https` (or even `http` form of cloning):

```sh
git clone https://github.com/you/dot
```

## Legal

Copyright 2024 Robert S. Muhlestein (<mailto:rob@rwx.gg>)  
SPDX-License-Identifier: Apache-2.0

This license makes you safe to use anything in here pretty much anywhere—including at work. But you do it at your own peril.

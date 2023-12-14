# prompt

[![License](https://img.shields.io/badge/license-MIT-007EC7)](/LICENSE)
[![built for](https://img.shields.io/badge/built%20for-%20%F0%9F%A6%93%20zshzoo-black)][zshzoo]
[![works with prezto](https://img.shields.io/badge/works%20with-%E2%9D%AF%E2%9D%AF%E2%9D%AF%20prezto-red)](#install-for-prezto)
[![works with ohmyzsh](https://img.shields.io/badge/works%20with-%20%E2%9E%9C%20oh--my--zsh-C2D33F)](#install-for-oh-my-zsh)

> Setup popular Zsh prompts with ease

## Description

Using Zsh's built-in prompt system, this plugin will allow you to easily use popular Zsh prompt themes like [starship](https://starship.rs), [pure](https://github.com/sindresorhus/pure), and [powerlevel10k](https://github.com/romkatv/powerlevel10k).

## Customizing

Set your Zsh theme like so:

```zsh
# valid themes: pure, powerlevel10k, starship
zstyle ':zshzoo:prompt' 'theme' 'powerlevel10k'
```

If you have a specific theme configuration you want to use, you can specify that with a second parameter to your `zstyle`. This plugin comes with zshzoo P10k and starship configs.

```zsh
zstyle ':zshzoo:prompt' 'theme' 'powerlevel10k' 'zshzoo'
```

If you use powerlevel10k, load this plugin first and you'll get the advantage of P10k's instant prompt. If you want to skip instaprompt, you can with this `zstyle`:

```zsh
zstyle ':zshzoo:prompt:powerlevel10k:instaprompt' skip 'yes'
```

## Installation

### Install with a Zsh plugin manager

To install using a Zsh plugin manager, add the following to your .zshrc

- [antidote]: `antidote install zshzoo/prompt`
- [zcomet]: `zcomet load zshzoo/prompt`
- [zgenom]: `zgenom load zshzoo/prompt`
- [znap]: `znap source zshzoo/prompt`

### Install manually, without a plugin manager

To install manually, first clone the repo:

```zsh
git clone https://github.com/zshzoo/prompt ${ZDOTDIR:-$HOME}/.zplugins/prompt
```

Then, in your .zshrc, add the following line:

```zsh
source ${ZDOTDIR:-$HOME}/.zplugins/prompt/prompt.zsh
```

### Oh-My-Zsh Install

To install with [Oh-My-Zsh][ohmyzsh], first clone the repo from an interactive Zsh session:

```zsh
# make sure your $ZSH_CUSTOM is set
ZSH_CUSTOM=${ZSH_CUSTOM:-${ZDOTDIR:-$HOME}/.oh-my-zsh/custom}

# now, clone the plugin
git clone https://github.com/zshzoo/prompt $ZSH_CUSTOM/plugins/prompt
```

Then, add the plugin to your Oh-My-Zsh plugins list in your .zshrc

```zsh
# in your .zshrc, add this plugin to your plugins list
plugins=(... prompt)
```

### Prezto Install

To install with [Prezto][prezto], first clone the repo from an interactive Zsh session:

```zsh
# make sure your $ZPREZTODIR is set
ZPREZTODIR=${ZPREZTODIR:-${ZDOTDIR:-$HOME}/.zprezto}
# clone the repo to a prezto contrib dir
git clone https://github.com/zshzoo/prompt $ZPREZTODIR/contrib/prompt
```

Then, add the plugin to your Prezto plugins list in .zpreztorc

```zsh
zstyle ':prezto:load' pmodule \
  ... \
  prompt \
  ...
```

[ohmyzsh]: https://github.com/ohmyzsh/ohmyzsh
[prezto]: https://github.com/sorin-ionescu/prezto
[zshzoo]: https://github.com/zshzoo/zshzoo
[antidote]: https://github.com/mattmc3/antidote
[zcomet]: https://github.com/agkozak/zcomet
[zgenom]: https://github.com/jandamm/zgenom
[znap]: https://github.com/marlonrichert/zsh-snap

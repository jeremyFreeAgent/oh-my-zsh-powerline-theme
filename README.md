oh-my-zsh-powerline-theme
=========================

oh-my-zsh Powerline style Theme

Preview
-------

![Preview](https://raw.githubusercontent.com/jeremyFreeAgent/oh-my-zsh-powerline-theme/master/preview.png)

Set Up
------

1. Clone the repository.

2. Create a symlink of **powerline.zsh-theme** in **.oh-my-zsh/themes/**. You can use the **install_in_omz.sh** file:

    ```
    ./install_in_omz.sh
    ```

3. Configure the theme in your **.zshrc** file:

    ```
    ZSH_THEME="powerline"
    ```

More options
------------

All options must be overridden in your **.zshrc** file.

By default, at the right of the powerline are displayed the date and the time.
If you don't want date or time, you can choose what you want to display:

```
POWERLINE_RIGHT_B="time replacement"
```

Or if you don't want to display anything:

```
POWERLINE_RIGHT_B="none"
```

If you want to display date next to time:
```
POWERLINE_RIGHT_A="date"
```

If you want to display exit-code of last command next to time:
```
POWERLINE_RIGHT_A="exit-status"
```
or if you want it to appear only on faulty runs:
```
POWERLINE_RIGHT_A="exit-status-on-fail"
```

If you want to display date or non-zero-exit-code of last command next to time:
```
POWERLINE_RIGHT_A="mixed"
```

If you want to display a custom text next to time:
```
POWERLINE_RIGHT_A="blackfire.io"
```

If you want to swap A and B sections (so the clock in always on the edge of the screen):
```
POWERLINE_RIGHT_ORDER="AB"
```

If you want to change the color of the `POWERLINE_RIGHT_A` element:
```
POWERLINE_RIGHT_A_COLOR_FRONT="black"
POWERLINE_RIGHT_A_COLOR_BACK="red"
```

If you want to change the color of the `POWERLINE_RIGHT_B` element:
```
POWERLINE_RIGHT_B_COLOR_FRONT="white"
POWERLINE_RIGHT_B_COLOR_BACK="blue"
```

If you want to change the color of the `POWERLINE_SEC1` element (this is user@machine part, ROOT is self-explanatory):
```
POWERLINE_SEC1_COLOR_FRONT="white"
POWERLINE_SEC1_COLOR_BACK="black"
POWERLINE_SEC1_ROOT_COLOR_FRONT="white"
POWERLINE_SEC1_ROOT_COLOR_BACK="red"
```

If you want to change the color of the `POWERLINE_GIT` element:
```
POWERLINE_GIT_COLOR_FRONT="white"
POWERLINE_GIT_COLOR_BACK="black"
```

If you want to change the color of the `POWERLINE_PATH` element:
```
POWERLINE_PATH_COLOR_FRONT="black"
POWERLINE_PATH_COLOR_BACK="yellow"
```

If you want to change the date format to what you want:
```
POWERLINE_DATE_FORMAT="%D{%d-%m}"
```

If you don't want to display your username (the green or red (root) colors are still there):

```
POWERLINE_HIDE_USER_NAME="true"
```

If you don't want to display your hostname (the green or red (root) colors are still there):

```
POWERLINE_HIDE_HOST_NAME="true"
```

If you only want to see the first part of the hostname (not the fqdn):

```
POWERLINE_SHORT_HOST_NAME="true"
```

If you want to hide git prompt status (new files, modified files, unmerged files, etc):
```
POWERLINE_HIDE_GIT_PROMPT_STATUS="true"
```

If you want to hide the right hand side prompt completely:
```
POWERLINE_DISABLE_RPROMPT="true"
```

If you don't want the blank line before the prompt:

```
POWERLINE_NO_BLANK_LINE="true"
```

If you want full path:

```
POWERLINE_PATH="full"
```

If you want to display ```~``` instead of your full path:  

```
POWERLINE_PATH="short"
```

If you want to customize the current path display (overrides full path above):
```
POWERLINE_CUSTOM_CURRENT_PATH="%3~"
```

If you want git info on right instead of left:

```
POWERLINE_SHOW_GIT_ON_RIGHT="true"
```

If you want to tell if you are in a remote SSH session:

```
POWERLINE_DETECT_SSH="true"
```

Also you can change the icons of GIT info, default values are:
```
POWERLINE_GIT_CLEAN_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_CLEAN_ICON="✔"
POWERLINE_GIT_DIRTY_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_DIRTY_ICON="✘"
POWERLINE_GIT_ADDED_COLOR="green"
POWERLINE_GIT_ADDED_ICON="✚"
POWERLINE_GIT_MODIFIED_COLOR="blue"
POWERLINE_GIT_MODIFIED_ICON="✹"
POWERLINE_GIT_DELETED_COLOR="red"
POWERLINE_GIT_DELETED_ICON="✖"
POWERLINE_GIT_UNTRACKED_COLOR="yellow"
POWERLINE_GIT_UNTRACKED_ICON="✭"
POWERLINE_GIT_RENAMED_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_RENAMED_ICON="➜"
POWERLINE_GIT_UNMERGED_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_UNMERGED_ICON="═"
POWERLINE_GIT_PROMPT_AHEAD_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_PROMPT_AHEAD_ICON="⬆"
POWERLINE_GIT_PROMPT_BEHIND_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_PROMPT_BEHIND_ICON="⬇"
POWERLINE_GIT_PROMPT_DIVERGED_COLOR="$POWERLINE_GIT_COLOR_FRONT"
POWERLINE_GIT_PROMPT_DIVERGED_ICON="⬍"
```

If you want more control over the symbols and colors, you can directly override the derived settings. The default values are below.
```
POWERLINE_GIT_CLEAN="%F{$POWERLINE_GIT_CLEAN_COLOR}$POWERLINE_GIT_CLEAN_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_DIRTY="%F{$POWERLINE_GIT_DIRTY_COLOR}$POWERLINE_GIT_DIRTY_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_ADDED="%F{$POWERLINE_GIT_ADDED_COLOR}$POWERLINE_GIT_ADDED_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_MODIFIED="%F{$POWERLINE_GIT_MODIFIED_COLOR}$POWERLINE_GIT_MODIFIED_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_DELETED="%F{$POWERLINE_GIT_DELETED_COLOR}$POWERLINE_GIT_DELETED_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_UNTRACKED="%F{$POWERLINE_GIT_UNTRACKED_COLOR}$POWERLINE_GIT_UNTRACKED_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_RENAMED="%F{$POWERLINE_GIT_RENAMED_COLOR}$POWERLINE_GIT_RENAMED_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"
POWERLINE_GIT_UNMERGED="%F{$POWERLINE_GIT_UNMERGED_COLOR}$POWERLINE_GIT_UNMERGED_ICON%F{$POWERLINE_GIT_COLOR_FRONT}"

```

Requirements
------------

* Vim Powerline patched font: Download your favorite one on [Lokaltog/powerline-font](https://github.com/Lokaltog/powerline-fonts).
* Z shell (zsh): See [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for more info.
* Make sure terminal is using 256-colors mode with `export TERM="xterm-256color"`.

Contribute
----------

### How to contribute

* Create an issue if you find a bug or if you want a new feature.
* Fork the project and pull request your very best feature.

### Thanks

* [shouze](https://github.com/shouze)
* [stephpy](https://github.com/stephpy)
* [Ph3nol](https://github.com/Ph3nol)
* [gbin](https://github.com/gbin)
* [krischer](https://github.com/krischer)
* [Arthraim](https://github.com/Arthraim)
* [itszero](https://github.com/itszero)
* [adrienbrault](https://github.com/adrienbrault)
* [mkraemer](https://github.com/mkraemer)
* [wujtruj](https://github.com/wujtruj)
* [Flavius Aspra](http://flavius.github.com/)
* [Ustice](https://github.com/Ustice)

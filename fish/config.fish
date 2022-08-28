#  ____   _____
# |  _ \ |     |  Dion Pinto
# | | | ||  ___|  
# | |_| || |      
# |____/ |_|
#
# fish config

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

### EXPORT ###
set fish_greeting  # Supresses fish's intro message

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal '#9effb8'
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command '#9effb8'
set fish_color_error '#ff6c6b'
set fish_color_param '#9effb8'

### ALIASES ###

# navigation
alias ..='cd ..'

# fish 
alias fishconfig='code ~/.config/fish/config.fish'

# i3
alias i3config='code ~/.config/i3/config'

# emacs
alias doomsync="~/.emacs.d/bin/doom sync"
alias doomdoctor="~/.emacs.d/bin/doom doctor"
alias doomupgrade="~/.emacs.d/bin/doom upgrade"
alias doompurge="~/.emacs.d/bin/doom purge"

# mongo
alias mongostart="sudo systemctl start mongodb.service"
alias mongostop="sudo systemctl stop mongodb.service"

# nginx
alias nginxstart="sudo systemctl start nginx.service"
alias nginxstop="sudo systemctl stop nginx.service"

# Libreoffice
alias topdf="libreoffice --headless --invisible --convert-to pdf *.ppt"
alias topdfw="libreoffice --headless --invisible --convert-to pdf *.pptx"

# python 3.8
alias py38="source ~/py38/bin/activate.fish"

# java & android
set -Ux JAVA_OPTS "-XX:+IgnoreUnrecognizedVMOptions"
set -Ux JAVA_HOME /usr/lib/jvm/java-11-openjdk
set -Ux ANDROID_SDK_ROOT /opt/android-sdk
set -Ux CHROME_EXECUTABLE /usr/bin/brave
set -U fish_user_paths /opt/android-sdk/cmdline-tools/latest/bin $fish_user_paths
set -U fish_user_paths /opt/android-sdk/emulator $fish_user_paths
set -U fish_user_paths /opt/android-sdk/platform-tools $fish_user_paths
alias pixel 'emulator @generic_9.0 -no-boot-anim -netdelay none -no-snapshot -wipe-data -skin 768x1280'




# git
# alias addup='git add -u'
# alias addall='git add .'
# alias branch='git branch'
# alias checkout='git checkout'
# alias clone='git clone'
# alias commit='git commit -m'
# alias fetch='git fetch'
# alias pull='git pull origin'
# alias push='git push origin'
# alias tag='git tag'
# alias newtag='git tag -a'

# path
fish_add_path ~/.cargo/bin
fish_add_path  ~/.pub-cache/bin


# check all stored paths -> run on terminal
# echo $fish_user_paths | tr " " "\n" | nl



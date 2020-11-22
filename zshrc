ZSH=$HOME/.oh-my-zsh

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="robbyrussell"

# Useful plugins for Rails development with Sublime Text
plugins=(git gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)

# Load rbenv if installed
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"

#export PATH="$PATH:/home/alexandre/Maven/apache-maven-3.6.3-bin/apache-maven-3.6.3/bin"

#export GRADLE_HOME=/opt/gradle/gradle-6.1.1
#export PATH=${GRADLE_HOME}/bin:${PATH}

#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"

export PATH="$PATH:/home/alexandre/code/alxreed/coding_tools/geckodriver-v0.26.0-linux64"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"

#export JAVA_HOME='/usr/lib/jvm/java-14-openjdk'
export ANDROID_HOME='/home/alexandre/Android/Sdk'

# Android SDK
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools/"
export PATH="$PATH:$ANDROID_HOME/tools/bin/"
export PATH="$PATH:$ANDROID_HOME/tools/"
PATH="$ANDROID_HOME/emulator:$PATH"

# Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Java
export JAVA_HOME='/usr/lib/jvm/default'

# Intellij
export IDEA_JDK='/opt/intellij-idea-ultimate-edition/jbr'

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"

# 清华大学brew 二进制源
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/bottles

# android
export ANDROID_NDK_ROOT=/Users/wangtx/Documents/developer/sdk/android/ndk-r10c
export ANDROID_SDK_ROOT=/Users/wangtx/Documents/developer/sdk/android/sdk-mac
export PATH=$ANDROID_SDK_ROOT/tools:$PATH
export PATH=$ANDROID_NDK_ROOT:$PATH
export ANDROID_HOME=$ANDROID_SDK_ROOT

# java
export JAVA_HOME=/usr/local/opt/openjdk@11
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH



# gradle
export GRADLE_2141=/Users/wangtx/Documents/developer/sdk/gradle/gradle-2.14.1
export GRADLE_511=/Users/wangtx/Documents/developer/sdk/gradle/gradle-5.1.1
export GRADLE_564=/Users/wangtx/Documents/developer/sdk/gradle/gradle-5.6.4
export GRADLE_611=/Users/wangtx/Documents/developer/sdk/gradle/gradle-6.1.1
export GRADLE_680=/Users/wangtx/Documents/developer/sdk/gradle/gradle-6.8
export GRADLE_HOME=$GRADLE_680
export PATH=$GRADLE_HOME/bin:$PATH


# ant
export ANT_ROOT=/Users/wangtx/Documents/developer/sdk/ant/bin
export PATH=$ANT_ROOT:$PATH

# ndk root
export NDK_ROOT=$ANDROID_NDK_ROOT
export ADB_ROOT=$ANDROID_SDK_ROOT/platform-tools
export PATH=$ADB_ROOT:$PATH

# Add texture
export TEXTURE_PACKER=/usr/local/bin/TexturePacker
export PATH=$TEXTURE_PACKER:$PATH

# fastlane
export FASTLANE=$HOME/.fastlane/bin
export PATH=$FASTLANE:$PATH

# ra nvim
export EDITOR=nvim

# alias
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias git='LANG=en_US.UTF-8 git'
alias lg='lazygit'
alias ra='ranger'
alias vim='nvim'

# autoUploadFile
export LC_API_SERVER=https://avoscloud.com

# mono
# export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/Current
export FrameworkPathOverride=/Library/Frameworks/Mono.framework/Versions/Current/bin

# brew 
export PATH="/usr/local/sbin:$PATH"

. "$HOME/.cargo/env"

# Setup 

## macOS
## Install Xcode Command Line Tools
    xcode-select --install
    accept license agreement: sudo xcodebuild -license
## Install Homebrew
    ruby -e "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/master/install)"
## Install RVM
    \curl -sSL https://get.rvm.io | sudo bash -s stable --autolibs=homebrew 
    
    source /etc/profile.d/rvm.sh
    
    rvm group add rvm $USER
## Install Ruby
    rvm install 2.5.1
###### If you have trouble with brew and openssl, you may have to force a new install
    brew install openssl --force
###### if this balks, you may need to correct permissions in /usr/local
    On macOS Sierra (10.12) or earlier
        sudo chown -R $USER:admin /usr/local
    On macOS High Sierra (10.13)
        sudo chown -R $(whoami) $(brew --prefix)/*

## Install Bundler
    gem install bundler
## Install the Gems
    bundle install

## Install Chromedriver
    brew install chromedriver
 
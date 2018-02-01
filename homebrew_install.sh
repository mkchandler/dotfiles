# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils findutils

# Install dev tools
brew install bash git jq tmux

# Install proggy langs
brew install go elixir nvm python scala

# Install data stuff
brew install redis sqlite

# Install testing stuff
brew install chromedriver

# Install cloud stuff
brew install heroku terraform awscli

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep homebrew/dupes/rsync homebrew/dupes/nano
brew install homebrew/dupes/whois homebrew/dupes/unzip homebrew/dupes/less homebrew/dupes/gzip
brew install homebrew/dupes/awk homebrew/dupes/bzip2 homebrew/dupes/diffstat homebrew/dupes/diffutils

# Other stuff
brew install gpg2 curl wget ssh-copy-id

# Media lib to fix apple buffoonery
brew install libdvdcss

brew linkapps
brew cleanup


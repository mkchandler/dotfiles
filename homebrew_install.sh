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

# Install Bash 4 and git
brew install bash git

# Install proggy langs
brew install go elixir nvm python scala

# Install data stuff
brew install redis rethinkdb sqlite

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep homebrew/dupes/rsync homebrew/dupes/nano
brew install homebrew/dupes/whois homebrew/dupes/unzip homebrew/dupes/less homebrew/dupes/gzip
brew install homebrew/dupes/awk homebrew/dupes/bzip2 homebrew/dupes/diffstat homebrew/dupes/diffutils

brew install gpg2 curl wget tmux ssh-copy-id

# Media lib to fix apple buffoonery
brew install libdvdcss

brew linkapps
brew cleanup


# show or hide hidden files in the finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


alias ll="ls -lahG"   # -l use a long listing format
                      # -a --all. do not ignore entries starting with .
                      # -h with -l, print sizes in human readable format (e.g., 1K 234M 2G)
                      # -G in a long listing, don't print group names

alias f='open -a Finder ./'		# f:		Opens current directory in MacOS Finder

alias ..='cd ../'
alias .3='cd ../../../'				# Go back 3 directory levels
alias spa='cd src/main/spa'   # for instascreen working directory, cd into the React spa folder

alias lsp='sudo lsof -i -n -P | grep LISTEN'  # list open files
                                              # -i selects the listing of all Internet and x.25 (HP-UX) network files
                                              # -n This option inhibits the conversion of network numbers to host names for network files.
                                              # -P inhibits the conversion of port numbers to port names for network files.

mcd () { mkdir -p "$1" && cd "$1"; }		# mcd: Makes new Dir and jumps inside
cd() { builtin cd "$@"; ll; }          	# Always list directory contents upon 'cd'

alias cp='cp -iv'         # Preferred 'cp' implementation
alias mv='mv -iv'         # Preferred 'mv' implementation
alias mkdir='mkdir -pv'   # Preferred 'mkdir' implementation

alias less='less -FSRXc'  # Preferred 'less' implementation, 
                          # -F Causes less to automatically exit if the entire file can be displayed on the first screen
                          # -S Causes lines longer than the screen width to be chopped rather than folded.
                          # -R Like -r, but only ANSI "color" escape sequences are output in "raw" form.
                          # -X Disables sending the termcap initialization and deinitialization strings to the terminal.
                          # -c Causes full screen repaints to be painted from the top line down. By default, full screen repaints are done by scrolling from the bottom of the screen.

alias pyserver='python -m SimpleHTTPServer'	# Starts a local server in the current directory

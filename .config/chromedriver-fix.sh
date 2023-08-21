#!/bin/zsh
# xattr -d com.apple.quarantine "/Users/andy/.local/bin/chromedriver"
xattr -d com.apple.quarantine $(brew --prefix)/bin/chromedriver


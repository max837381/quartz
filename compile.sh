#!/bin/zsh

cd /Users/max/Documents/Github/hugo-obsidian; rm -fr /Users/max/Documents/Github/quartz/content/notes/*; /Users/max/Documents/Github/obsidian-export/target/debug/obsidian-export --frontmatter=always "/Users/max/Library/Mobile Documents/iCloud~md~obsidian/Documents/Test" "/Users/max/Documents/Github/quartz/content/notes"; go run /Users/max/Documents/Github/hugo-obsidian -input=/Users/max/Documents/Github/quartz/content/notes -output=/Users/max/Documents/Github/quartz/assets/indices -index -root=/Users/max/Documents/Github/quartz; (cd /Users/max/Documents/Github/quartz && hugo --minify)
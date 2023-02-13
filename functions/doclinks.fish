function doclinks -d 'fix doclinks'
	perl -pi -e 's/\(https:\/\/eng-docs.plaid.com\/([^.]*)\.html(#.*)?\)/({% link \1.md %}\2)/g' $argv
	perl -pi -e 's/\(https:\/\/eng-docs.plaid.com\/([^.]*)\/(#.*)?\)/({% link \1\/index.md %})\2/g' $argv
end

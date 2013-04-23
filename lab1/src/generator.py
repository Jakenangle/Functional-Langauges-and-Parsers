
diff = ord('A') - ord('a')
i = ord('a')

while (i <= ord('z')):
	print '\nfragment ' + chr(i + diff) + ' :'
	print '\t(\'' + chr(i) + '\'|\'' + chr(i + diff) + '\');'
	i = i + 1
f = open('permissions')
line = f.readline()
print '['
while line:
	permission = (line.split('\t'))[1]
	print '\''+permission+'\',',
	line = f.readline()
print ']'	
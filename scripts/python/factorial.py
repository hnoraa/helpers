def factorial(x):
    if x == 1:
        return 1
    else:
        return x * factorial(x - 1)

print '-'*25
print 'Factorial'
print '4! = %s' % factorial(4)
print '6! = %s' % factorial(6)

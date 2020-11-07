def is_prime(x):
    if x < 2:
        return False
    elif x == 2:
        return True
    else:
        for n in range(2, x-1):
            if x % n == 0:
                return False
        return True

print '-'*25
print 'Prime'
print 'is_prime(0)    %s' % is_prime(0)
print 'is_prime(1)    %s' % is_prime(1)
print 'is_prime(2)    %s' % is_prime(2)
print 'is_prime(3)    %s' % is_prime(3)
print 'is_prime(7)    %s' % is_prime(7)
print 'is_prime(9)    %s' % is_prime(9)
print 'is_prime(-10)  %s' % is_prime(-10)
print 'is_prime(-7)   %s' % is_prime(-7)

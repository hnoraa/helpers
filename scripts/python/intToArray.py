# converts an integer into an array
# ex: 1234 = [1,2,3,4]
import sys

def intToArray(i, l):
    if i < 0 or i >= sys.maxint - 1:
        raise Exception('Integer %s out of range. 0 to %s' % (str(i), str(sys.maxint-1)))
    for x in xrange(len(str(i))):
        l.append(i % 10)
        i = int(str(i)[:len(str(i))-1]) if i >= 10 else int(str(i))
    return l

if __name__ == '__main__':
    i = 1234
    l = intToArray(int(str(i)[::-1]), [])
    print i
    print l

    sum = 0
    for x in xrange(len(l)):
        sum += l[x]

    print sum
    
        

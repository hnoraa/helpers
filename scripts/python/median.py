def median(numbers):
    numbers.sort()
    middle = len(numbers) / 2
    if len(numbers) % 2 == 0:
        return (numbers[middle-1] + numbers[middle]) / 2.0
    else:
        return numbers[middle]
        

lists = [[3,7,9,5,1,9,0,3,4,6,4], [3,7,9,5,1,9,3,4,6,4], [1,2,1]]

for i in range(len(lists)):
    print '*' * 50
    print 'List:   %s' % sorted(lists[i])
    print 'Median: %s' %median(lists[i])

print '*' * 50

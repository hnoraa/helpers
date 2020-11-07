# expands an integer into an array
# TODO: expandInt function doesn't work for negative numbers
#   could probably remove the sign from the string and then add it back in?
# ex: 1234 = [1,2,3,4]

def expandInt(i):
    """
    Expands an integer into an array.
    Ex: 1234 = [1,2,3,4]
    :param i: The integer that gets expanded
    :return: An array of integers expanded from the input integer
    """
    if not type(i) == type(0):
        print('Input needs to be of type integer, currently it is {}'.format(type(i)))
        return

    l = []
    for x in range(len(str(i))):
        l.append(i % 10)
        i = int(str(i)[:len(str(i))-1]) if i >= 10 else int(str(i))

    l.reverse()
    return l

if __name__ == '__main__':
    print(expandInt(-1123))
    print(expandInt("TEST"))
    print(expandInt(0.001))
    print(expandInt('c'))
    print(expandInt(1234))
    print(expandInt(1))

# https://hackernoon.com/10-ways-to-refactor-your-python-code-ry1033xn
# 10 Ways To Refactor Your Python Code

'''
1) merge nested ifs
instead of this:

if a:
    if b:
        return c

do this:

if a and b:
    return c
'''

'''
2) DRY duplicate code
instead of this:

if sold > DISCOUNT_AMT:
    total +=  sold * DISCOUNT_PRICE
    label = f'Total: {total}'
else:
    total = sold * PRICE
    label = f'Total: {total}'

do this:
'''
DISCOUNT_AMT = 12
DISCOUNT_PRICE = 10.00
PRICE = 15.99
sold = 10
total = 0

if sold > DISCOUNT_AMT:
    total = sold * DISCOUNT_PRICE
else:
    total = sold * PRICE
label = f'Total: {PRICE}'
print(label)

'''
3) fewer loops - use any
instead of this:

found = False
for thing in things:
    if thing == other_thing:
        found = True
        break

do this:
'''
found = False
items = [0,2,3,4,5,6]
x = 3

found = any(i == x for i in items)
print(found)
x = 9
found = any(i == x for i in items)
print(found)

'''
4) clean loops
instead of this:

for building in buildings:
    city = 'London'
    addresses.append(building.street_address, city)

do this:

city = 'London' 
for building in buildings: 
  addresses.append(building.street_address, city)
'''

'''
5) fewer loops part 2 - use list/set/dictionary comprehensions
instead of this:

cubes = [] 
for i in range(20): 
  cubes.append(i ** 3)

do this:
'''
cubes = [i ** 3 for i in range(10)]
print(cubes)

'''
6) augmented expressions
instead of this:

count = count + other_value

do this:
'''
y = 1
print(f'y: {y}\ny += x')
x = 19
y += 19
print(y)

'''
7) if expressions instead of if statements
instead of this:

if condition: 
  x = 1 
else: 
  x = 2

do this:
'''
FAN_RUNNING = False or True
x = 1 if FAN_RUNNING else 0
print(x)

'''
8) enumerate instead of loop counter
instead of this:

i = 0 
for currency in currencies: 
  print(i, currency) 
  i += 1

do this:
'''
types = ['float', 'int32', 'int64', 'double', 'char', 'bool', 'string']
for i, type in enumerate(types):
    print(f'{i}: {type}')

'''
9) fewer loops pt 3 - use sums instead of loops
instead of this:

total = 0 
for hat in hats: 
  total += hat.price

do this:

total = sum(hat.price for hat in hats)
'''

'''
10) simplify sequence comparisons
instead of this:

if len(list_of_hats) > 0: 
  hat_to_wear = choose_hat(list_of_hats)

do this:

if len(list_of_hats): 
  hat_to_wear = choose_hat(list_of_hats)
'''

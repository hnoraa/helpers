"""
Basic stack class
"""
class Stack:
    def __init__(self):
        self.stack = []

    # is empty
    def is_empty(self):
        return len(self.stack) <= 0

    # push
    def push_item(self, item):
        self.stack.append(item)

    # pop
    def pop_item(self):
        return self.stack.pop()

    # stack size
    def size_of(self):
        return len(self.stack)

    # peek
    def peek(self):
        return self.stack[len(self.stack) - 1]

    # delete
    def clear_stack(self):
        self.stack = []

if __name__ == '__main__':
    st = Stack()
    print('New Stack')
    print(st.size_of())
    print(st.is_empty())

    print('Push item')
    st.push_item('Test')

    print(st.size_of())
    print(st.is_empty())

    print('Push another item')
    st.push_item('Test 2')

    print(st.size_of())
    print(st.is_empty())

    print('Peek')
    peek = st.peek()
    print(peek)

    print('Pop item')
    value = st.pop_item()
    print(value)
    print(st.size_of())
    print(st.is_empty())

    print('Pop item')
    value = st.pop_item()
    print(value)
    print(st.size_of())
    print(st.is_empty())

    print('Clear stack')
    st.clear_stack()
    print(st.size_of()) 
    print(st.is_empty())
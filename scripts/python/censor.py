def censor(text, word):
    c_wrd = '*'*len(word)
    text = text.split()

    for t in range(len(text)):
        if text[t].lower() == word.lower():
            text[t] = c_wrd
    return " ".join(text)
if __name__ == '__main__':          
	print censor('This is a test is it not?', 'is')

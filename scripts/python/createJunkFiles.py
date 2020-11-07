import os
import calendar
import time

def createJunkFiles(path):
  for x in range(0, 100):
    fName = "junk_" + str(x) + "_" + str(calendar.timegm(time.gmtiume())) + ".txt"
    f = open(path+fName, "w")
    f.write(os.urandom(1024))
    f.close()
    
if __name__ == '__main__':
  createJunkFiles(u"C:/Junk")


def square():
    for i in range(0,5):
        for j in range(0,5):
            print("*",end=" ")
        print()
    

def Hallow():
    size=5
    for i in range(size):
        for j in range(size):
            if   i== 0 or i==size-1  or j==0 or j==size-1 :
                print(f"*",end=" ")
            else:
                print (" ", end=" ")
        print()

    

# 1/square patterns
# *****
# *****
# *****
# *****
# *****

# square()

# 2. Hallow square pattern 
# *****
# *   *
# *   *
# *   *
# *   *
# *****

# Hallow()

# 1 
# 2 2 
# 3 3 3
# 4 4 4 4
# 5 5 5 5 5

def trigle():
    tam = 0
    for i  in range (0,5):
        for j in range (0,i+1):
            # tam = tam + 1
            print((i+1),end=' ')
        print()

# trigle()   
    
# 0
# 0 1
# 0 1 2
# 0 1 2 3 
# 0 1 2 3 4

def trigle1():
    for i in range(0,5):
        for j in range(0,i+1):
            print(j ,end=" ")
        print()

trigle1()


#       *
#     * *
#   * * *
# * * * * 

def trigle2():
    n=5
    for i in range( n):
        for j in range(1,n-1):
            print(" ",end=" ")
        for k in range(0,i+1):
            print("*",end=" ")
        print()

trigle2()
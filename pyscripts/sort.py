l=[545,5,100,758,5,100,4000]
print(l)
for i in range(0,len(l)-1):
    for j in range(i,len(l)):
        if l[i] > l[j]:
            t=l[i]
            l[i]=l[j]
            l[j]=t
print(l)
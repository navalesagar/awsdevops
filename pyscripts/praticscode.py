print(type("Hello word"))

first = 'AWS'
last = 'Devops'
full_name = first + ' ' + last
print(full_name)

v=5
print(v)

l=[1,2,3,8]
print(l)
l.append(6)
print(l,"after append list ")
l.insert(1,20)
print(l,"after insert into specific index ...")

print("testing sclice oprations")
print(l[:2])
print(l[:])
print(l[0:1])
print("testing more sclie use in list ")
print(l[0:5])
print(l[2:5])


""""to test dict data type """

print("this is a dict type ")
s3buckets = {'name': 'mys3bucket', 'numOfObj': 10} 

print("The S3 Bucket name is color is " + s3buckets['name'])

print("all keys in dict :s3bukets",s3buckets.keys())
for key in s3buckets.keys():
    print(key)

s3buckets['size'] = 0
print(s3buckets)
d = {'name':'mys3bucket', 'numOfObj':10, 'totalSize':200}
list_d = d.items()
print(type(list_d))
print(list_d)

name = input("What's your name? ")
print("Hello, " + name + "!")
count = input("How many Data Centers are present in NV region?")
count = int(count)
pi = input("What's the value of pi? ")
pi = float(pi)


current_value = 1
while current_value <= 5:
    print(current_value)
    current_value += 1
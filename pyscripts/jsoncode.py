import json 

x='{"name":"Sagar","id":1}'

print("type of x is ....",type(x))

y=json.loads(x)
print("Type of ",type(y))
print(y["name"])

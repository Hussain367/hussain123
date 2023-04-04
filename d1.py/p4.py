#WAP to find factorial of a given number
n=int(input("enter a number:"))
sum=1
i=1
while (i<=n):
    sum=sum*i
    i=i+1

print("The factorial is:",sum)
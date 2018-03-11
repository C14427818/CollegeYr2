"""1. Write the statements needed to prompt a user for their name and to output a message saying hello to the user using the name input.
"""
name=input("Enter your name> \n")
print("Hello",name,"\n")

"""3.	Write a program to take as input two messages and output them to a user.
"""
mesg1,mesg2=input("Enter 1st message > \n"),input("\nEnter 2nd message>\n")
print("This is the first ",mesg1, "\nThis is the second ",mesg2)

"""Numbers
1.	Write a program to take as input four whole numbers, add them together and print the result to the screen.
"""
n1,n2,n3,n4=int(input("Enter #1> ")),int(input("Enter #2> ")),\
             int(input("Enter #3> ")), int(input("Enter #4> "))
print("The total is %d",n1+n2+n3+n4)

"""2.	Write a program that will ask the user for three integer numbers and then multiply the first two together before dividing the result by the third number.
"""

n1,n2,n3=int(input("Enter #1> ")),int(input("Enter #2> ")),\
             int(input("Enter #3> "))
print("%d multiplied by %d divided by %d is %d" %(n1,n2,n3,(n1*n2)/n3))
                                        

"""3.	Write a program that will ask the user for two numbers then divide one by the other.
The number of times one goes into another and the remainder should be displayed.
For example, If 3 and 2 were entered: 3/2 = 1 remainder 1.
"""
n1,n2=int(input("Enter #1> ")),int(input("Enter #2> "))
print("%d divided by %d is %d remainder %d \n" %(n1,n2,n1/n2,n1%n2))

"""4.	Write a program that asks the user for the amount of money they will take on holiday and convert this into the equivalent amount in Euros,
ignoring any Cents that might result from the conversion.
"""
rate=1.32270 #GB to Euro currency rate 26th Jan
holmoney=float(input("Enter your holiday fund > "))
print("You have %d euros to spend" %(holmoney*rate))

"""Strings
1.	Create a program that will allow the user to enter a quote by a famous person. Output this quote in upper case, lower case, capitalised and title formats.
"""
quote=str(input("Enter a quote from a famous person > \n"))
print("In uppercase %s \n In lowercase %s \n Capitalised %s \n Title format %s \n" %(quote.upper(),quote.lower(),quote.capitalize(), quote.title()))

"""2.	Change the program so that the user can enter a quote and then replace one word in the quote with another word.
"""
quote=input("Enter a quote from a famous person > \n")
oldstr=input("Enter the string to replace > \n")
newstr=input("Enter the string to replace this with> \n")
print("New quote is %s \n" %(quote.replace(oldstr,newstr)))

"""3.	3.	Change the program to make this last piece a function. The function should a single parameter, the quote and then prompt the user for the word to replace in the quote and the word which will replace it and return the amended quote.
Write a statement that uses the function.
"""

def quoterep(quote):
    oldstr=input("Enter the string to replace in this quote > \n")
    newstr=input("Enter the string to replace this with> \n")
    return quote.replace(oldstr,newstr)

print (quoterep("no man is an island"))

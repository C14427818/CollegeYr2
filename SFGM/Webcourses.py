from tkinter import *

from tkinter import messagebox

import tkinter

from tkinter.colorchooser import *

root = Tk()

class Lecture_list:

    def __init__(self, master):

            root.configure(background='#6495ED')
            
            #creating frames
            self.topFrame =  Frame(root)
            self.bottomFrame = Frame(root)


            # create buttons
            self.oopB = Button(root, text=('OOP'), width=15, height=10, bg='white', command=self.oop)
            self.sfgmB = Button(root, text=('Softare for Global Market'), width=15, height=10, bg='white',command=self.sfgm)
            self.osB = Button(root, text=('Operating System'), width=15, height=10, bg='white', command=self.os)
            self.algoB = Button(root, text=('Algorithm and Data Structures'), width=15, height=10, bg='white', command=self.algo)
            self.sofEngB = Button(root, text=('Mathematics'), width=15, height=10, bg='white', command=self.softEng)
            self.DatcommB = Button(root, text=('Data Communication'), width=15, height=10, bg='white',command=self.datacomm)
            self.GermanB = Button(root, text=('German'), width=15, height=10, bg='white', command=self.GermanB)
            self.ChineseB = Button(root, text=('Chinese'), width=15, height=10, bg='white', command=self.chinese)
            self.homeB = Button(root, text=('Lecture Notes'), width=15, height=2, bg='white', command=self.homeM)
            self.assB = Button(root, text=('Assignments Page'), width=15, height=2, bg='white', command=self.assM)
            self.subB = Button(root, text=('CA Submissions Page'), width=15, height=2, bg='white', command=self.subM)
            self.notB = Button(root, text=('Notifications'), width=15, height=2, bg='white', command=self.notM)
            self.colB = Button(root, text=('Change Colour'), width=10, height=2, bg='white', command=self.colour_chooser)
    

   
             #Place on screen
            self.oopB.place(x=170,y=300)
            self.sfgmB.place(x=330,y=300)
            self.osB.place(x=500,y=300)
            self.algoB.place(x=660,y=300)

            self.sofEngB.place(x=170,y=470)
            self.DatcommB.place(x=330,y=470)
            self.GermanB.place(x=500,y=470)
            self.ChineseB.place(x=660,y=470)

            self.homeB.place(x=60,y=100)
            self.assB.place(x=410,y=100)
            self.subB.place(x=760,y=100)
            self.notB.place(x=410,y=200)
            self.colB.place(x=805,y=20)
      

       

      



    #functions with messages
    def oop(self):
    
        self.message1 = messagebox.showinfo('OOP Lecture Notes')

    def algo(self):
        
        self.message1 = messagebox.showinfo('Algorithm and Data Structures Lecture Notes')

    def softEng(self):
        
        self.message1 = messagebox.showinfo('Mathematics Lecture Notes')


    def chinese(self):
        
        self.message1 = messagebox.showinfo('Chinese Lecture Notes')


    def sfgm(self):
        
        self.message1 = messagebox.showinfo('Software for Global Market Lecture Notes')

    def os(self):
        
        self.message1 = messagebox.showinfo('Operating Systems Lecture Notes')

    def datacomm(self):
        
        self.message1 = messagebox.showinfo('Data Communications Lecture Notes')

    def GermanB(self):
        
        self.message1 = messagebox.showinfo('German Lecture Notes')


    def homeM(self):
    
        self.message1 = messagebox.showinfo('Back to Lecture Notes')


    def assM(self):
    
        self.message1 = messagebox.showinfo('To Assignments')

    def subM(self):
    
        self.message1 = messagebox.showinfo('To CA Submission')

    def notM(self):
        
        self.message1 = messagebox.showinfo('You Got Stuff Due...')


    def colour_chooser(self):

        background = colorchooser.askcolor()
       
        bgname = background[1]
        root['bg'] = bgname

    
        
        

        
#sets screen
root.title('Module Lecture Notes')
root.geometry("1000x800+50+20")

#call class
b= Lecture_list(root)

root.mainloop()



from tkinter import *
import tkinter.messagebox as tm
import tkinter
from tkinter.colorchooser import *
import gettext



#installing the different languages
def install_lang():
    if choice.get()==1:
        print("English Selected")
        english.install()
    else:
        print("Hindi Selected")
        hindi.install()

        
#destroy the first screen - langauge select
def disp_lang():
    langroot.destroy()
    

#colour chooser function    
def change_color():
    color = colorchooser.askcolor()
    print(color)
    colname = color[1]
    root['bg'] = colname

def disp_main():
    root.destroy()
        

#checks if login credentials are right and pop up.
def login():

    #pop up
    def login_btn_clickked():

        username = entry_1.get()
        password = entry_2.get()

        if username == "aman" and password == "password":
            tm.showinfo((_("Login info")), (_("Welcome to Webcourses Aman")))
            #displaying main page
            disp_main()
                            
        else:
            tm.showerror((_("Login error")), (_("Incorrect username or password")))
        
    
    label_1 = Label(text= (_("Username")), font = 14)
    label_2 = Label(text= (_("Password")), font = 14)

    entry_1 = Entry()
    entry_2 = Entry(show="*")

    label_1.grid(row=0, sticky=E)
    label_2.grid(row=1, sticky=E)
    entry_1.grid(row=0, column=1)
    entry_2.grid(row=1, column=1)

    checkbox = Checkbutton(text=(_("Keep me logged in")), font = 14)
    checkbox.grid(columnspan=10)

    logbtn = Button(text= (_("Login")), command = login_btn_clickked)
            
    logbtn.grid(columnspan=2)

    logbtn = Button(text=(_("Forgot Password")), command = forgot_password)
            
    logbtn.grid(columnspan=2)


#forgot password pop up 
def forgot_password_popup():
    tm.showinfo((_("Login info")), (_("An email has been sent to you.")))
   
#forgot password email fill in 
def forgot_password():
    top = Toplevel()
    top.title("Forgot Password")
    top.geometry("250x200")

    forgotlabel = Label(top, text=(_("Email")))

    forgotentry = Entry(top)

    forgotlabel.grid(row=0, sticky=E)
    forgotentry.grid(row=0, column=1)

    forgotbtn = Button(top, text=(_("submit")), command = forgot_password_popup)
    forgotbtn.grid(columnspan=2)    

#-------------------------------------------------------------------
    
english = gettext.translation("en_IE", localedir = "locale", languages = ["en_IE"])
hindi = gettext.translation("hn_IN", localedir = "locale", languages = ["hn_IN"])

 #first screen, choosing the language
langroot = Tk()

langroot.geometry("200x200")
langroot.title("Webcourses - Select Language")
langroot.configure(background="#80e5ff")

choice = IntVar()
R1 = Radiobutton(langroot,text="English",variable=choice,value=1,command = install_lang,
                 bg="#80e5ff")
R1.pack()

R2 = Radiobutton(langroot,text="hindi",variable=choice,value=2,command = install_lang,
                 bg="#80e5ff")
R2.pack()

okbutton = Button(text="Continue", command=disp_lang, bg="#80e5ff")
okbutton.pack()
langroot.mainloop()

#-------------------------------------------------------------------

myColour = "#80e5ff"
root=Tk()
root.title("Webcourses")
root.geometry("500x500")
root.configure(background=myColour)
        
menubar = Menu(root)
file = Menu(menubar)
submenu = Menu(file)
menubar.add_cascade(label=(_("Settings")), menu=file)
file.add_command(label=(_("Change Colour")), command=change_color)
root.config(menu=menubar)

login()

photo = PhotoImage(file = "webcourseslogo.gif")
label = Label(root, image = photo)
label.pack()
label.place(x=100,y=40)


photo1 = PhotoImage(file = "DIT.gif")
label1 = Label(root, image = photo1)
label1.pack()
label1.place(x=215,y=350)

root.mainloop()
#-------------------------------------------------------------------

mainroot = Tk()
mainroot.title("Webcourses")
mainroot.geometry("230x400")

bheight = 3
bwidth = 20

button1 = Button(text=(_("OOP")), height = bheight, width = bwidth)
button1.pack()
button1.place(x=20, y=20)

button2 = Button(text=(_("Algorithims")), height = bheight, width = bwidth)
button2.pack()
button2.place(x=20, y=90)

button3 = Button(text=(_("Chinese")), height = bheight, width = bwidth)
button3.pack()
button3.place(x=20, y=160)

button4 = Button(text=(_("Web Development")), height = bheight, width = bwidth)
button4.pack()
button4.place(x=20, y=230)

button5 = Button(text=(_("Maths")), height = bheight, width = bwidth)
button5.pack()
button5.place(x=20, y=300)

mainroot.mainloop()








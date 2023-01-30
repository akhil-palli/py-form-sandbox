from tkinter import *

def login_pform():
    firstname_info = firstname.get()
    lastname_info = lastname.get()
    email_info = email.get()
    email_info = str(email_info)
    print(firstname_info, lastname_info, email_info)
    try:
        file = open(f"{firstname_info}{lastname_info}Login.txt", "r")

        if(file.readline() == firstname_info, lastname_info, email_info):
            print("Hello, ", firstname_info, lastname_info, "\nWelcome Back!")
        else:
            raise FileNotFoundError
        
    except FileNotFoundError:
        print("Login Failed! \nPlease Register!")
        file.close()
    
        
        


screen = Tk()
screen.geometry("500x500")
screen.title("Login")

heading = Label(text = "Python Form" , bg = "grey", fg = "black", height = "3", width = "500")
heading.pack()

firstname_text = Label(text = "First Name *")
lastname_text = Label(text = "Last Name *")
email_text = Label(text = "Email *")
firstname_text.place(x= 10, y = 70)
lastname_text.place(x = 10, y = 140)
email_text.place(x = 10, y = 210)

firstname = StringVar()
lastname = StringVar()
email = StringVar()

firstname_entry = Entry(textvariable = firstname, width = "30")
lastname_entry = Entry(textvariable = lastname, width = "30")
email_entry = Entry(textvariable = email, width = "30")

firstname_entry.place(x = 10, y = 105)
lastname_entry.place(x = 10, y = 175)
email_entry.place(x = 10, y = 245)

login = Button(text = "Login", width = "29", height = "1", command = login_pform)
login.place(x = 5, y = 290)





screen.mainloop()

#make it more legit with username and password
#make username and password prompts in register form, and save to .txt file
#update login form to ask for username and password
#search and verify username and password
#print out the user's info first last email etc
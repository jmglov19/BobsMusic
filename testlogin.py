import tkinter
import random
from tkinter import ttk
import sqlite3
import secrets
import pyodbc
import json

def try_login():
    
    
    username = user_entry.get()
    password = pass_entry.get()

    try:

        
        f = open('serverip.json')
        file = json.load(f)       
        ip = file['server_ip']
        usps = "DRIVER={ODBC Driver 17 for SQL Server}; SERVER=" + ip + ";DATABASE=master;UID=" + username + ";PWD=" + password
        cnxn = pyodbc.connect(usps)
        print("connected")
        cnxn.close()
        login_window.destroy()
    except pyodbc.Error:
            print("{c} is not working".format(c=usps))



# Login Frame
login_window = tkinter.Tk()
login_window.title("Login")

login = tkinter.Frame(login_window)
login.pack()

user_label = tkinter.Label(login, text="Username")
user_entry = tkinter.Entry(login)
user_label.grid(row=0, column=0)
user_entry.grid(row=0, column=1)


pass_label = tkinter.Label(login, text="Password")
pass_entry = tkinter.Entry(login)
pass_label.grid(row=1, column=0)
pass_entry.grid(row=1, column=1)


login_button = tkinter.Button(login, text= "Login", command= try_login)


for widget in login.winfo_children():
        widget.grid_configure(padx=10, pady=5)


login_window.mainloop()
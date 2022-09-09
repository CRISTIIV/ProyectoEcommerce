from tkinter import *

class calculadora:
    def __init__(self, master):
        self.master = master
   
        master.title("CALCULATOR 3000")
        master.geometry("400x300")
        self.etiqueta = Label(master, text="Ingresa los dos valores a operar!")
        self.etiqueta.pack()

        self.botonSumar = Button(master, text="Sumar", command=self.sumar)
        self.botonSumar.place(x=50, y=80)
        self.botonRestar = Button(master, text="Restar", command=self.restar)
        self.botonRestar.place(x=120, y=80)
        self.botonMultiplicar = Button(master, text="Multiplicar", command=self.multiplicar)
        self.botonMultiplicar.place(x=190, y=80)
        self.botonDividir = Button(master, text="Dividir", command=self.dividir)
        self.botonDividir.place(x=290, y=80)
        self.botonCerrar = Button(master, text="Cerrar", command=master.quit)
        self.botonCerrar.place(x=180, y=150)

        self.caja1 = Entry(master)
        self.caja1.place(x=20,y=35)
        self.caja2 = Entry(master)
        self.caja2.place(x=250,y=35)

    def sumar():
        valor1 = int(caja1.get())
        valor2 = int(caja2.get())
        print(valor1 + valor2)
    
    def restar():
        valor1 = int(caja1.get())
        valor2 = int(caja2.get())
        print(valor1 - valor2)
    
    def multiplicar():
        valor1 = int(caja1.get())
        valor2 = int(caja2.get())
        print(valor1 * valor2)
    
    def dividir():
        valor1 = int(caja1.get())
        valor2 = int(caja2.get())
        print(valor1 / valor2)
    
root = Tk()

miVentana = calculadora(root)

root.mainloop()
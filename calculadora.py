from tkinter import Tk, Label, Button

class calculadora:
    def __init__(self, master):
        self.master = master
        master.title("CALCULATOR 3000")
        self.etiqueta = Label(master, text="Ingresa los dos valores a operar!")
        self.etiqueta.pack()
        self.botonSumar = Button(master, text="Sumar", command=self.sumar)
        self.botonSumar.pack()
        self.botonRestar = Button(master, text="Restar", command=self.restar)
        self.botonRestar.pack()
        self.botonMultiplicar = Button(master, text="Multiplicar", command=self.multiplicar)
        self.botonMultiplicar.pack()
        self.botonDividir = Button(master, text="Dividir", command=self.dividir)
        self.botonDividir.pack()
        self.botonCerrar = Button(master, text="Cerrar", command=master.quit)
        self.botonCerrar.pack()

    def sumar(valor1,valor2):
        print(valor1 + valor2)
    
    def restar(valor1,valor2):
        print(valor1 - valor2)
    
    def multiplicar(valor1,valor2):
        print(valor1 * valor2)
    
    def dividir(valor1,valor2):
        print(valor1 / valor2)
    
root = Tk()
miVentana = calculadora(root)
root.mainloop()
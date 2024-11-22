try:
    #lectura de un archivo
    #abrir el archivo en modo lectura
    with open("hola.txt", "r") as archivo:
        #leer cada linea del archivo
        for linea in archivo:
            print(linea.strip())
 
except FileNotFoundError:
    print("El archivo no existe...")
 
except IOError:
    print("Ocurrio un error al leer el archivo")  
 
# Cerramos el archivo

    archivo.close()
# Lista de elementos
lista = [
    "Lorem ipsum dolor sit amet consectetur, quae.",
     "dos", 
     "TRES", 
     "cuatro"
     ]

# Escritura en el archivo
with open('archivopy/leer.txt', 'w') as archivoN:
    for elemento in lista:
        archivoN.write(elemento + '\n')

# Leer y mostrar el contenido del archivo
with open('archivopy/leer.txt', 'r') as archivoN:
    contenido = archivoN.read()
    print("Contenido del archivo:")
    print(contenido)
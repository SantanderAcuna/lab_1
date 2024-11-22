def suma(lista):
    suma=0
    for x in range(len(lista)):
        print(f"La lista tiene los siguientes numeros: {lista[x]}")
        suma = suma+lista[x]
    return print(suma)

def mayor(lista):
    
    mayor = lista[0]

    for numero in lista:        
      if numero > mayor:
            mayor = numero
    return print("El numero mayor es : ",mayor)       
    
    


def menor(lista):
    menor = lista[0]

    for numero in lista:        
      if numero < menor:
            menor = numero
    return print("El numero menor es : ",menor)  


listaOriginal=[20,25,582,63,48,58]

suma(listaOriginal)
mayor(listaOriginal)
menor(listaOriginal)


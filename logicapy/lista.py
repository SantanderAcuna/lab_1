lista = [1, "hola", True, 3.14, [1,2],{"clave":"valor"}, None,42,"Python",False]
print(lista)
#Acceder a un elemento
print("valor de lista", lista[5])
#Modificar elemento
lista[5] = {"1":"carro"}

#Agregar elemento 
lista.append('nuevo elemento')
print("valor de lista", lista)

#Eliinar un elemento
lista.pop(1)
print("valor de lista", lista)




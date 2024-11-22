def mayorvalor(precio, dto = 10):
    return precio -(precio *( dto/100))

precio = int(input("ingrese el precio del articulo: "))
dto = int(input("ingrese el descuento: "))

mayorvalor(precio)

print("el precio final es", precio)
print("el precio final con descuento es", mayorvalor(precio, dto))



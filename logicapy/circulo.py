def area_circulo(radio):
    import math
    return math.pi * radio ** 2
radio = int(input("Ingrese el radio de u circula:"))
print(f"El area del circulo es: {area_circulo(radio):.2f}")

# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados correspondientes.

module Formula
	def perimetro_cuad_rect
		return (@base * 2 + @altura * 2)
	end

	def area_cuad_rect
		return (@base * @altura)
	end
end	

class Rectangulo
	include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
  	puts "la BASE corresponde a: #{@base}"
  	puts "la ALTURA corresponde a: #{@altura}"
  end
end

class Cuadrado
	include Formula
  def initialize(lado)
    @base = lado
    @altura = lado
  end

  def lados
  	puts "la BASE corresponde a: #{@base}"
  	puts "la ALTURA corresponde a: #{@altura}"
  end

end

puts Rectangulo.new(2, 4).perimetro_cuad_rect
puts Rectangulo.new(2, 4).area_cuad_rect

puts Cuadrado.new(4).perimetro_cuad_rect
puts Cuadrado.new(4).area_cuad_rect

# Se pide:

# Agregar un método de instancia llámado lados en ambas clases. 
# El método debe imprimir un string con las medidas de los lados.

# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que reciba dos argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.




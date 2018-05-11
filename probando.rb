def inverse(x)
  raise ArgumentError, 'El argumento no es numerico' unless x.is_a? Numeric
  1.0 / x
  puts "ingresa otra opcion"
  hola = gets.chomp
end
puts inverse(2)
puts inverse('patata') # da un error que es manejado por raise

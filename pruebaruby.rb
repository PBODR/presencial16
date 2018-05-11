file = File.open('notas_alumnos.csv','r')
data = file.readlines
file.close

def menu
  puts 'Que deseas hacer'
  puts 'Ingresa 1 para ver el promedio de notas de cada alumno'
  puts 'Ingresa 2 para ver la inasistencia'
  puts 'Ingresa 3 ver alumnos aprobados'
  puts 'Ingresa 4 para salir'
end

# def validacion(x) #NO ESTA FUNCIONANDO
#   begin
#     raise ArgumentError, 'El argumento no es numerico' unless x.is_a? Numeric
#   rescue
#     puts 'INGRESA UNA OPCION VALIDA'
#     menu
#     opcion = gets.chomp
#   end
#     puts 'aqui llego si no hay errores'
# end

menu
opcion = gets.chomp
#validacion(opcion)

case(opcion)

  when '1'
    file_promedio = File.new('promedio.txt', 'w')
    puts 'Se creo el archivo de promedios'

  when '2'
    puts 'op2'

  when '3'
    puts 'op3'

  when '4'
    puts 'op4'
end

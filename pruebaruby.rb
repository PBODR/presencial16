file = File.open('notas_alumnos.csv','r')
datacurso = file.readlines
file.close


def menu
  puts 'Que deseas hacer'
  puts 'Ingresa 1 para ver el promedio de notas de cada alumno'
  puts 'Ingresa 2 para ver la inasistencia'
  puts 'Ingresa 3 para ver alumnos aprobados'
  puts 'Ingresa 4 para salir'
end

def notasprocesadas(nombre, nota1, nota2, nota3, nota4, nota5)
  puts nombre
  puts nota1
end

menu
opcion = 1
#opcion = gets.chomp.to_i

#validacion(opcion)
while (opcion<1 || opcion>4)
  puts 'La opción no es válida'
  menu
  opcion = gets.chomp.to_i
end

puts "esta es la data #{datacurso} fin"

 datacurso.each do |data_alumno|
   data_alumno.split("\n")
   print data_alumno
 end



#   print slice
# #
# end

# case(opcion)
#
#   when '1'
#     puts "#{opcion} la opcion"
#     puts data_curso
# end
#     # file_promedio = File.new('promedio.txt', 'w')
#     # puts 'Se creo el archivo de promedios'
#
#   when '2'
#     puts 'op2'
#
#   when '3'
#     puts 'op3'
#
#   when '4'
#     puts 'op4'
# end

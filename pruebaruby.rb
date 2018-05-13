file = File.open('notas_alumnos.csv', 'r')
datacurso = file.readlines
file.close

def menu
  puts 'Que deseas hacer'
  puts 'Ingresa 1 para ver el promedio de notas de cada alumno'
  puts 'Ingresa 2 para ver la inasistencia'
  puts 'Ingresa 3 para ver alumnos aprobados'
  puts 'Ingresa 4 para salir'
end
#metodo promedio de notas
def promedio(notas)
  suma = 0
  notas.each do |nota|
    suma += nota.to_f
  end
  suma / notas.count
end

a = datacurso.each(&:chomp)
menu
opcion = gets.chomp.to_i
#validacion de entrada
while (opcion < 1 || opcion > 4)
  puts 'La opción no es válida:'
  menu
  opcion = gets.chomp.to_i
end
#opciones
case opcion
  when 1
    archivo = File.open('promedio.txt', 'w+')
    a.each do |s|
      archivo.puts s.split(', ')[0]
      archivo.puts promedio(s.split(', ')[1..5])
    end
    file.close
    puts 'Se ha creado el archivo promedio.txt con los promedios de los alumnos'
  when 2
    system "clear"
    a.each do |s|
      puts s.split(',')[0]
      s.split(',')[1..5].select { |a| puts "1 inasistencia" if a=='A' }
    end
  when 3
      a.each do |s|
        if promedio(s.split(', ')[1..5]) > 5
          puts "El alumno: #{s.split(',')[0]} aprobó"
        end
      end
  when 4
    puts 'No hay más consultas'
end

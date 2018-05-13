inventario = {'Notebooks': 4, 'PC Escritorio': 6, 'Routers': 10,
'Impresoras': 6}

#Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
def menu
  puts 'Que deseas hacer'
  puts 'Ingresa 1 si quieres agregar un item nuevo y su stock'
  puts 'Ingresa 2 si quieres eliminar un item'
  puts 'Ingresa 3 si quieres actualizar un item y su stock'
  puts 'Ingresa 4 si quieres ver el stock total'
  puts 'Ingresa 5 Si deseas ver el item que tiene el mayor stock'
  puts 'Ingresa 6 si quieres consultar si un item existe'
  puts 'Ingresa 7 si ya terminaste'
end


menu
choice = gets.chomp.to_i

# while  (choice < 1 || choice > 7)
#   puts 'Ingresa una opción válida'
#   choice = gets.chomp.to_i
# end

case choice
#Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para separar el nombre del stock el usuario debe utilizar una coma.
#Ejemplo del input: 'Pendrives, 100'
  when 1
    puts 'Qué item y stock deseas agregar. Debes ingresarlo asi: item, stock'
    dato = gets.chomp.split(", ")
    new_item = dato[0].to_sym
    new_stock = dato[1].to_i

    if inventario [new_item].nil?
      #aqui debo agregar el array al hash
      inventario[new_item] = new_stock

      puts 'Listo! lo hemos agregado'
      puts inventario
    else
      puts "#{new_item} ya existe en este inventario"
    end
 #Si el usuario ingresa 2, podrá eliminar un item.
  when 2
    puts 'Qué item deseas eliminar'
    dato = gets.chomp.to_sym
    unless inventario[dato].nil?
      inventario.delete(dato)
      puts "Se ha eliminado #{dato}"
      puts inventario
    else
      puts 'Este Item no existe'
    end
  #Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
  when 3
    puts 'Qué item desea actualizar'
    dato = (gets.chomp).to_sym
    unless inventario[dato].nil?
      puts 'Ingresa el nuevo stock'
      new_stock = gets.chomp.to_i
      inventario[dato] = new_stock
      puts "Se ha actualizado el stock #{dato}"
      puts inventario
    else
      puts 'Ese item no existe'
    end
  #Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
  when 4
    stock_total = inventario.each_value.inject(0){|suma, v| suma+v}
    puts "El stock total es:#{stock_total} "
  #Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
  when 5
    mayor_stock = inventario.key(inventario.values.max)
    puts "El mayor stock es: #{mayor_stock}"
  #Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no.
  when 6
    puts 'Qué item deseas consultar'
    dato = (gets.chomp).to_sym

    unless inventario[dato].nil?
      puts " El item #{dato} tiene #{inventario[dato]} items en stock"
    else
      puts 'Ese item no existe'
    end
  when 7
    puts 'Ya saliste'
end

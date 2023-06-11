# Desafío Nro. 762 - Flujo, ciclos y Métodos (I)

# Obtener la jugada del usuario por teclado
puts "¿A qué te gustaría jugar? selecciona => 1: Piedra, 2: Papel, 3: Tijera:"
usuario = gets.chomp.to_i

# Verificar si la jugada del usuario es válida (1, 2 o 3)
if usuario == 1 || usuario == 2 || usuario == 3
  # Asignar las opciones
  piedra = 1
  papel = 2
  tijera = 3

  # Generar una jugada aleatoria para la máquina (1: Piedra, 2: Papel, 3: Tijera)
  maquinapc_num = rand(1..3)

  # Obtener la jugada de la computadora de acuerdo al valor numérico:
  maquinapc =
    if maquinapc_num == piedra
      "piedra"
    elsif maquinapc_num == papel
      "papel"
    else
      "tijera"
    end

  # Determinar el resultado del juego
  if usuario == maquinapc_num
    resultado = "¡Es un empate!"
  elsif (usuario == piedra && maquinapc_num == tijera) ||
        (usuario == papel && maquinapc_num == piedra) ||
        (usuario == tijera && maquinapc_num == papel)
    resultado = "¡Ganaste!"
  else
    resultado = "¡Perdiste!"
  end

  # Mostrar los resultados
  puts "Tu jugada: #{usuario}"
  puts "Jugada de la computadora: #{maquinapc}"
  puts resultado
else
  # El argumento no es válido, mostrar las opciones permitidas
  puts "Argumento inválido: Debe ser piedra, papel o tijera. !Siga participando!"
end

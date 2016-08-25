def print_out(length, array, speed)
  length.times do |i|
    i += 1
    system('clear')
    text = array[0..i].join("")
    print text
    sleep speed
  end
end

def type_stuff
  sleep 0.5
  if @first_time == false
    puts "Something else? Type something or press (s) to set speed."
    print "> "
    @input = gets.chomp.to_s
    if @input.upcase == "S" then set_speed end
  end
  unless @first_time == false
    puts "Type something here, and i'll type it back to you!"
    print "> "
    @input = gets.chomp.to_s
    @first_time = false
  end
  body = @input.split("")
  speed = @speed.to_f
  system('clear')
  sleep 0.5
  print_out(body.length, body, speed)
  sleep 1
  puts ""
  puts ""
  go
end


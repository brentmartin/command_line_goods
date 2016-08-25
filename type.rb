@speed = 0.1
@first_time == true

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

def set_speed
  system('clear')
  puts "What speed would you like me to type back? (enter a number)"
  puts "1) chillin'"
  puts "2) fast"
  puts "3) smoking!"
  print "> "
  speed_setting = gets.chomp.to_i
  case speed_setting
  when 1
    puts "Aight, we can do this slow"
    @speed = 0.1
    sleep 1
  when 2
    puts "You like fast huh?"
    @speed = 0.05
    sleep 1
  when 3
    puts "Hold on to your keyboard!"
    @speed = 0.02
    sleep 1
  else
    "I'm sorry, can you try that again?"
  end
  system('clear')
  type_stuff
end

def go
  type_stuff
  set speed
end

system('clear')
sleep 0.5
go

@speed = 0.1
@first_time == true

def print_out(length, array, speed)
  length.times do |i|
    i += 1
    system('clear')
    text = array[0..i].join("")
    puts text
    sleep speed
  end
end

def type_stuff
  if @first_time == false then @first_time = false; print "Type something here, and i'll type it back to you!\n> "
  else print "Something else? Type something or press (s) to set speed. \n> " end
  @input = gets.chomp.to_s
  if @input.upcase == "S" then set_speed end
  body = @input.split("")
  speed = @speed.to_f
  system('clear')
  sleep 0.5
  print_out(body.length, body, speed)
  sleep 1
  type_stuff
end

def set_speed
  system('clear')
  print "What speed would you like me to type back? (enter a number)\n1) chillin\n2) fast\n3) smoking!\n> "
  speed_setting = gets.chomp.to_i
  system('clear')
  case speed_setting
  when 1 then @speed = 0.1
    puts "Aight, we can do this slow"
  when 2 then @speed = 0.05
    puts "You like fast huh?"
  when 3 then @speed = 0.02
    puts "Hold on to your keyboard!"
  else "I'm sorry, can you try that again?"
  end
  sleep 1
  type_stuff
end

system('clear')
type_stuff

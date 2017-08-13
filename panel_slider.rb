def set_up
  @accel_counter = 0
  
  @left_margin = "│    "
  @right_margin = "    │"
  @top = "┌──────────────────────────────────────────────────────────────────────────────┐"
  @mid = ""
  @bot = "╘══════════════════════════════════════════════════════════════════════════════╛"
  @length = 0
  @sleep_time = 0.0
end

def answer
  input = gets.chomp.to_s
  content = input
  remaining_space = 70 - input.size
  space = " "*remaining_space
  row = [@left_margin, content, space, @right_margin].join('')
  @mid = row

  @length = @mid.size
  shift_it(@length)
  ask_again
end

def print_it
  sleep(@sleep_time)
  system('clear')
  puts @top
  puts @mid
  puts @bot
end

def shift_it(count)
  count.times do
    @top.prepend(" ")
    @top.chop!
    @mid.prepend(" ")
    @mid.chop!
    @bot.prepend(" ")
    @bot.chop!
    sleep_it
    print_it
  end
end

def sleep_it
  @accel_counter += 1

  case @accel_counter
  when 1
    @sleep_time = 0.25
  when 2..20
    @sleep_time = @sleep_time/1.5
  end

end

def ask_again
  set_up
  print "> "
  answer
end

ask_again

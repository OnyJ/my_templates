instructions = "To launch program :\n
    $ ruby app.rb [action] [sentence]\n\n
    actions are :\n
    - 'pascal' for pascal_case\n"
@method = ARGV[0]
@string = ARGV[1]


def start(instructions)
  if ARGV.length == 2
    trigger_method
  elsif @method == "help"
    puts instructions
  else
    puts "You should enter 2 arguments or type :\n'change_case help'"
  end
end

def trigger_method
  remove_dashes
  case @method
    when "pascal"
      pascal_case()
    else
      puts "Error: action doesn't exist"
  end
end

def remove_dashes
  @final_string = @string.chars.map { |char| char == '-' ? ' ' : char }.join  
end

def pascal_case
  @final_string = @final_string.split(' ').map {|word| word = word.capitalize}.join('\ ')
  puts "now it's " + @final_string + "🔥"
  rename_file
end

def rename_file
  system(`mv #{@string}.mp3 #{@final_string}.mp3`)
end

start(instructions)


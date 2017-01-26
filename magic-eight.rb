# # # finished basic assignment # # #
def menu
  puts "Welcome to Magic Eight Ball"
  puts "Type a yes or no question to get an answer, or type 'quit' to exit the program. Or type 'add' to add an answer" 
  answer
end 
  
def answer
  user_input = gets.chomp
  case user_input  
    when 'quit'
      exit_prog
    when 'add'
      all_answers
    else 
    @answer_value = ['Yes', 'No', 'Concentrate and ask again', 'Ask again later', 'Future Unknown', 'Absolutely', 'Unknown']
    @answer_value.sample 
    puts "Magic Eight Ball says '#{@answer_value.sample}'"
    menu
  end
end

def exit_prog
  puts 'Thank you for using Magic Eight Ball'
  exit(0)
end

@answer_value2 = ['Yes', 'No', 'Concentrate and ask again', 'Ask again later', 'Future Unknown', 'Absolutely', 'Unknown']
def all_answers
  puts 'Add your answer here'
  user_input = gets.chomp
  @answer_value2 << user_input.capitalize
  puts 'Here is a ist of all available answers'
  puts @answer_value2.uniq
  menu
end 

menu
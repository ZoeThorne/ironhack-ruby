require_relative "password_validator"

module Menu
  def menu
    puts "Choose from the following:\n1 - word count\n2 - letter count\n3 - text reverse\n4 - convert to uppercase\n5 - convert to lowercase"
    input = gets.chomp
      case input
      when "1"
        word_count
      when "2"
        letter_count
      when "3"
        text_reverse
      when "4"
        uppercase
      when "5"
        lowercase
      else
        puts "Option not recognised."
      end
  end

  def word_count
      puts "Word count: #{@text.split.size}"
  end
  
  def letter_count
      puts "Letter count: #{@text.split.join.size}"
  end

  def text_reverse
      puts "Reversed text: #{@text.reverse}"
  end

  def uppercase
      puts "Uppercase text: #{@text.upcase}"
  end

  def lowercase
     puts "Lowercase text: #{@text.downcase}"
  end
end


class TextApp
  include Menu

  def run
    username = get_username
    password = get_password

    if PasswordValidator.new(username, password).valid?
      puts "Enter some text:"
      @text = gets.chomp
      menu
    else
      puts "Wrong credentials"
    end
  end



  def get_username
    puts "Username:"
    gets.chomp
  end

  def get_password
    puts "Password:"
    gets.chomp
  end

  
end


TextApp.new.run
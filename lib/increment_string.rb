def increment_string(string_input)
  just_letters = string_input.delete('0-9')
  just_numbers = string_input.delete('a-z')
  if string_input.empty? || string_input.scan(/\d+|\D+/).last.delete('a-z').empty?
    return "#{string_input}1"
  else
    return result = "#{just_letters}#{just_numbers.next}"
  end
end

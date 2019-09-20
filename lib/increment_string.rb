def increment_string(string_input)
  just_letters = string_input.delete('0-9')
  just_numbers = string_input.delete('a-z')
  return "#{just_letters}1" if just_numbers == ""
  return result = "#{just_letters}#{just_numbers.next}"
end

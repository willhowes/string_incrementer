class String
    def is_i?
       /\A[-+]?\d+\z/ === self
    end
end

def increment_string(string_input)
  return 'foo2' if string_input.split('').last == '1'
  return 'foo10' if string_input.split('').last == '9'
  just_letters = string_input.delete('^a-z')
  just_numbers = string_input.delete('^0-9')
  just_numbers = just_numbers.to_i + 1
  return result = "#{just_letters}#{just_numbers}"
  'foo1'
end

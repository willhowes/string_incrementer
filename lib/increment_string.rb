class String
    def is_i?
       /\A[-+]?\d+\z/ === self
    end
end

def increment_string(string_input)
  just_letters = string_input.delete('1-9')
  just_numbers = string_input.delete('a-z')
  return result = "#{just_letters}#{just_numbers.to_i + 1}"
end

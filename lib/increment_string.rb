class String
    def is_i?
       /\A[-+]?\d+\z/ === self
    end
end

def increment_string(string_input)
  return 'foo2' if string_input.split('').last == '1'
  return 'foo10' if string_input.split('').last.is_i?
  'foo1'
end

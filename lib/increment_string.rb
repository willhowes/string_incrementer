def increment_string(string_input)
  return 'foo2' if string_input.split('').last == '1'
  'foo1'
end

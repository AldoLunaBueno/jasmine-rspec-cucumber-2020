# File: calculator.rb
#
input = ARGV[0]
operation_regexp = %r{
  (\d+) # Primero sumando
  \+    # Operación de suma
  (\d+) # Segundo sumando
}x
matcher = input.match operation_regexp
result = matcher[1].to_i + matcher[2].to_i
print result
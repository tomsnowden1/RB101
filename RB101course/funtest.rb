
	
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

puts t

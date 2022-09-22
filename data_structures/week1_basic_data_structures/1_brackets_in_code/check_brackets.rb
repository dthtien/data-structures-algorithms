# Stack stack
# for char in str:
# if char in [‘(‘, ‘[‘]:
# stack.Push(char)
# else:
# if stack.Empty(): return False
# top ← stack.Pop()
# if (top = ‘[‘ and char != ‘]’) or
# (top = ‘(‘ and char != ‘)’):
# return False
# return stack.Empty()

def not_match?(left, right)
  left == '[' && right != ']' ||
    left == '(' && right != ')' ||
    left == '{' && right != '}'
end

def find_mismatch(text)
  stack = []
  text.each_char.with_index do |c, index|
    next unless '()[]{}'.include? c

    if ['(', '[', '{'].include? c
      stack << [c, index]
    else
      return (index + 1).to_s if stack.empty?

      top = stack.pop
      return (index + 1).to_s if not_match?(top.first, c)
    end
  end
  stack.empty? ? 'Success' : (stack.last.last + 1).to_s
end

return unless __FILE__ == $0

text = gets.chomp
puts find_mismatch(text)
# print answer

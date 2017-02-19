class String
  def palindrome?
    letters = self.downcase.scan(/\w/)
    return false if letters.nil?
    letters == letters.reverse
  end

  def valid?
    pairs = { '(' => ')', '{' => '}', '[' => ']', '<' => '>' }
    stack = []

    chars do |char|
      stack << char if pairs.key?(char)
      return false if pairs.key(char) && pairs.key(char) != stack.pop
    end

    stack.empty?
  end
end

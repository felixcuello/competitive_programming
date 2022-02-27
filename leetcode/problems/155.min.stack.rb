class MinStack
    def initialize()
      @stack = []
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      min = @stack.empty? ? val : @stack[-1][1]
      min = val if val < min
      @stack << [val, min]
    end

=begin
    :rtype: Void
=end
    def pop()
      val, _ = @stack.pop
      val
    end

=begin
    :rtype: Integer
=end
    def top()
      val, _ = @stack[-1]
      val
    end

=begin
    :rtype: Integer
=end
    def get_min()
      _, min = @stack[-1]
      min
    end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min():1

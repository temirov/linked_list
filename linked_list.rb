LinkedList = Struct.new(:value, :next) do
  def to_s
    values = self.value.to_str
    element = self.next
    while element
      values = "#{values} -> #{element.value}"
      element = element.next
    end 
    return values
  end

  def reverse
    reverted_list = LinkedList.new(self.value)
    element = self.next
    while element
      reverted_list = LinkedList.new(element.value, reverted_list)
      element = element.next
    end
    return reverted_list
  end

  # def reverse
  #   element = self.next
  #   reverted_list = LinkedList.new(self.value, element)
  #   while element
  #     reverted_list = LinkedList.new(element, reverted_list)
  #     element = element.next
  #   end 
    
  #   return reverted_list
  # end

  # def reverse
  #   result = nil
  #   values.each do |v|
  #     result = List.new(v, result)
  #   end
  #   result
  # end

  # def == other_list
  #   self.to_s == other_list.to_s
  # end

  # private
  #   def values
  #     values = []
  #     values << self.value
  #     element = self.next
  #     while element
  #       values << element.value
  #       element = element.next
  #     end 
  #     values
  #   end
end

# list_original = LinkedList.new('a', LinkedList.new('b', LinkedList.new('c')))
# list_copy = LinkedList.new('a', LinkedList.new('b', LinkedList.new('c')))

# list = LinkedList.new("head. hi", nil)

# i = 0
# 10.times {
#   i += 1
#   list = LinkedList.new(i, list)
# }

# while list.next
#   p list.value
#   list = list.next
# end 

# class Link
#   attr_accessor :next, :value

#   def initialize v, n = nil
#     self.next = n
#     self.value = v
#   end

#   # Given the example list initialization above (list = Link.new('a', ...))
#   # this should return "a -> b -> c"
#   def to_s
#     values.join(' -> ')
#   end

#   # Should only return true if every link is the same
#   def == other_list
#     self.to_s == other_list.to_s
#   end
 
#   # Should non-destructively reverse the list and return the new head
#   # ex: Link.new('a', Link.new('b')).reverse == Link.new('b', Link.new('a'))
#   def reverse
#     to_list values
#   end
  
#   def to_list array
#     result = nil
#     array.each do |e| 
#       result = Link.new e, result
#     end
#     result
#   end

#   def values
#     values = [] 
#     values << self.value
#     element = self.next
#     while element
#       values << element.value
#       element = element.next
#     end
#     values
#   end
# end

# list_original = Link.new('a', Link.new('b', Link.new('c')))
# list_copy = Link.new('a', Link.new('b', Link.new('c')))

# list_reversed = list_original.reverse

# list_original.to_s

# list_reversed == list_original
# list_original == list_copy

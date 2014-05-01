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
end

# Implement the method unique_in_order takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

#  using empty method and last method
def unique_in_order(str_el)
    unique_str = []

    if str_el.is_a?(String)
      str_el.split('').each do |str|
        unique_str << str  if unique_str.empty? || unique_str.last != str
      end

    else

      str_el.each do |str|
        unique_str << str  if unique_str.empty?|| unique_str.last != str
      end
    end
    unique_str
end

# without using empty method and last method
def unique_in_order(str_el)
    unique_str = []

    if str_el.is_a?(String)
      str_el.split('').each do |str|
        unique_str << str  if unique_str.length == 0 || unique_str[-1] != str
     end

    else

      str_el.each do |str|
        unique_str << str  if unique_str.length == 0 || unique_str[-1] != str
      end
    end
    unique_str
end

p unique_in_order("AAAABBBCCDAABBB")
p unique_in_order("ABBCcAD")
p unique_in_order([1,2,2,3,3])

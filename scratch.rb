require 'pry'
 # def remove_duplicates(nums)
 #    nums.each do |num|
 #      puts "============"
 #      previous_num =  nums[nums.index(num) - 1]
 #      puts num
 #        puts previous_num       
 #    end
    
# end

# def remove_duplicates(nums)
#   nums.each_with_index do |num, index|
#     puts "======================="
#     puts "Index: #{index}"
#     puts "Nums before: #{nums}"
#     next if index == 0 
#     # binding.pry if index == 2
#     previous_num = nums[index -1]
#     nums.delete_at(index) if num == previous_num
#     puts "Nums after:  #{nums}"
#   end
#   nums.length
# end

# def remove_duplicates(nums)
  
# end


# nums = [0,0,1,1,1,2,2,3,3,4]


# puts nums
# puts "=========="
# puts remove_duplicates(nums) 
# puts "=========="
# puts nums
#
  # a = []
  # h.each do |key,value|
  #   a << value
  # end
  # a.flatten

# def sort_ignoring_case(str)
#   str.chars.sort(&:casecmp).join
# end

# def group_by_anagram(words)
#   h = {}
#   words.each do |word|
#     anagram = sort_ignoring_case(word)
#     if h[anagram].nil?
#        h[anagram] = [word]
#     else
#       h[anagram] << word 
#     end
#   end
#   h.values.flatten
# end


# def elements_that_sum_to_target(elements, target)
#   matches = []
#   elements.each_with_index do |e1, i1|
#     elements.each_with_index do |e2, i2|
#       if e1 + e2 == target
#         matches << [i1, i2]
#       end
#     end
#   end
#   matches.map! {|m| m.sort}.uniq
# end


# def reverse_in_place(s)
#   len = s.length
#   midpoint = len / 2
#   s.each_char.with_index do |char, index|
#     end_char = s[len - 1 - index]
#     current_char = char
#     s[len - 1 - index] = current_char
#     current_char = end_char
#   end
#   s
# end

 def reverse_in_place(s)
  len = s.length
  midpoint = len / 2
  s.each_char.with_index do |char, index|
    end_char = s[len - 1 - index]
    current_char = char
    s[len - 1 - index] = current_char
  end
  s
end


puts reverse_in_place("Hello world")






# puts group_by_anagram(["pat", "cat", "tap", "tac"])


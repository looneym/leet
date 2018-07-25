# Given a list of integers find the indexes of elements that sum to a given target.
# Example input: [-2, 0, 8, 4, 4, 9, 14] 
# Target: 12
# Desired output: [(0, 6), (2, 3), (2, 4)]

class PairsSummingToTarget

  def with_nested_loops(elements, target)
    matches = []
    elements.each_with_index do |e1, i1|
      elements.each_with_index do |e2, i2|
        if e1 + e2 == target
          matches << [i1, i2]
        end
      end
    end
    matches.map! {|m| m.sort}.uniq
  end

  def with_hash_table(elements, target)
    results = []
    index_element_map = {}

    elements.each_with_index do |e,i|

      difference =  target - e

      if index_element_map[difference]
        index_element_map[difference].each {|match| results << [i, match] }
      end

      if index_element_map[e].nil?
        index_element_map[e] = [i] 
      else
        index_element_map[e] << i
      end

    end
    results

  end
end

def execute_and_verify(method_name, input, target, desired_output)
  result = PairsSummingToTarget.new.send(method_name.to_sym, input, target)
  result.each {|sub_array| sub_array.sort!}.sort!
  desired_output.each {|sub_array| sub_array.sort!}.sort! 
  puts "#{method_name} produced correct output: #{result == desired_output}"
  puts result.to_s
end

def execute_and_time(method_name, input, target)
  started = Time.now.to_i
  result = PairsSummingToTarget.new.send(method_name.to_sym, input, target)
  ended = Time.now.to_i
  took = ended - started
  puts "#{method_name} took #{took} seconds on #{result.length} elements"
end

input = [-2, 0, 8, 4, 4, 9, 14] 
desired_output = [[0, 6], [2, 3], [2, 4]] 
target = 12

puts "Verifying correctness..."
execute_and_verify(:with_hash_table, input, target, desired_output)
execute_and_verify(:with_nested_loops, input, target, desired_output)

puts "Measuring time taken..."
execute_and_time(:with_hash_table, input * 1000, target)
execute_and_time(:with_nested_loops, input * 1000, target)

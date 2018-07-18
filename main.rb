require 'pry'

class WordReverse

  def recursive(str)
    words = str.split(" ")
    if words.length <= 1
      return words
    end
    first = words.shift 
    last =  words.pop
    recursive(words.join(" ")).unshift(last).push(first)
  end

end

def execute_and_time(method_name, input)
  started = Time.now.to_i
  reversed = WordReverse.new.send(method_name.to_sym, input)
  ended = Time.now.to_i
  took = ended - started
  puts "#{method_name} took #{took} seconds on #{reversed.length} words"
end

# uncomment after loading lorem from file
# execute_and_time("recursive", lorem)
# execute_and_time("recursive", lorem + lorem)
# execute_and_time("recursive", lorem + lorem + lorem)


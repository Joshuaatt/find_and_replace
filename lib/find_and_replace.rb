class String
  define_method(:find_and_replace) do |argument, argument2|
  answer = []
    self.split().each() do |word|
      if word == argument
        answer.push(argument2)
      else
        newword = word.split(argument).join(argument2)
        answer.push(newword)
      end
    end
    answer.join(" ")
  end
end

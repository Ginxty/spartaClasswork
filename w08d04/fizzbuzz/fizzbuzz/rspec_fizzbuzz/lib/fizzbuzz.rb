class Fizzbuzz

  def self.run(input)
    if input.is_a? Integer
      if input.between?(1,100)
        output = ""
        if (input%3 == 0)
          output << "fizz"
        end

        if (input%5 == 0)
          output << "buzz"
        end

        if output == ""
          input
        else
          output
        end
      else
        raise ArgumentError
      end
    else 
      raise ArgumentError
    end
  end

end
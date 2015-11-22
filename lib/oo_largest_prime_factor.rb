class LargestPrimeFactor
  def initialize(num)
    @num = num
  end

  def is_prime? (factor)
    if factor <= 1
      false
    elsif factor == 2
      true
    elsif (factor > 2 && factor % 2 != 0)
      (3..(Math.sqrt(factor).to_i)).detect {|n| factor % n == 0}.nil?
    end
  end

  def number
    factor_pair = nil
    (3..@num).each do |n|
      if @num % n == 0
        factor_pair = @num / n
        if is_prime?(factor_pair)
          return factor_pair
        end
      end
    end
  end
end









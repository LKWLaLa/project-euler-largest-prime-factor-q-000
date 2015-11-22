
def is_prime?(num)
  if num <= 1
    false
  elsif num == 2
    true
  elsif (num > 2 && num % 2 != 0)
    (3..(Math.sqrt(num).to_i)).detect {|n| num % n == 0}.nil?
  end
end

def largest_prime_factor(num)
  factor_pair = nil
  (3..num).each do |n|
    if num % n == 0
      factor_pair = num / n
      if is_prime?(factor_pair)
        return factor_pair
      end
    end
  end
end







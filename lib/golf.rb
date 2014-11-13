class Golf

  class << self

    def hole1(x)
      x.gsub(/(?<=[a-z])(?=[A-Z])/, '_').downcase
    end

    def hole2(x)
      a = []
      (x[0]..x[1]).each { |n| a.push(n) if n.to_s == n.to_s.reverse }
      a
    end

    def hole3(x, y)
      a = ('a'..'z').to_a.join
      z = y % a.size
      new_alphabet = a[z..-1] + a[0..z]
      x.tr(a, new_alphabet)
    end

    def hole4(x, y)
      x.downcase.scan(y.downcase).count
    end

    def hole5(x, y)
      require 'prime'
      z = []; b = 0
      (x..y).each { |n| z.push(n) if n.prime? }
      z.inject{|b,x| b + x }
    end

    def hole6(x)
      y = []; x = x + 1
      x.times do |x|
        if (x != 0) then
          if (x % 3 == 0 && x % 5 == 0) then
            y.push "fizzbuzz"
          elsif (x % 3 == 0)
            y.push "fizz"
          elsif (x % 5 == 0)
            y.push "buzz"
          else
            y.push x
          end
        end
      end
      y
    end

    def hole7(x)
      
      { x.keys.first.to_sym => x.values_at(x.keys.first).first.to_s }
    end

    def hole8(x)

    end

    def hole9(x)

    end

  end

end

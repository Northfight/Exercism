class Grains  
	
  class << self
    
    def square(num)
      raise ArgumentError if (num <= 0 || num > 64)
      ary[num-1]
	end	

	def total
      ary.sum
	end

	private

	def ary
	  arr = [1]
      (1...64).map{|i| arr[i] = arr[i-1]*2}
      arr[0] = 1
      arr
    end
  end
end	
p Grains.total
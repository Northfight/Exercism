class PhoneNumber

  class << self
	REG = /^([2-9]\d\d){2}\d{4}$/
	def clean(number)
		number = number.gsub(/\D/,"")
		number.slice!(0) if number.chr == "1"
		number[REG]
  end
end	
end

p PhoneNumber.clean("+1(223) 456-7834   
	")
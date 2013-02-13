require "rsa-encrypter/version"

module Rsa
  module Encrypter
    def ggt(a, b)
		u=t=1
		v=s=0
		while b > 0 do
	    	q=a/b
	    	a, b = b, a-q*b
	    	u, s = s, u-q*s
	    	v, t = t, v-q*t
		end    
		return u
	end 

	def prime?(x)
		if x == 0 or x == 1
			return false
		end

		i = 2
		limit = x / i
		while i < limit
			if x % i == 0
				raise "1 of 2 nubers dont prime"
			end
			i += 1
			limit = x / i
		end
		return x
	end

	def generate_rsa
		
		p = prime?(1033)
		q = prime?(977)
		n = p * q
		n2 = (p-1)*(q-1)
		e = (p+q) -1 
		t = ggt(e, n2)
		d = t 
		rsa = [n, e, d]
		return rsa
	end

	def encrypt(message, e, n)
		byte = []
		ms = []
		crypt = []
		message.each_char do |c|
			byte << c.ord
		end
		byte.each do |b|
			if b.to_s.length < 3
				ms << "0"+b.to_s
			else
				ms << b	
			end	
						
		end	
		

		ms.each do |b|
			crypt << c = b.to_i**e % n
		end

		return crypt
	end	

	def decrypt(message, d, n)
		m = ""
		message.each do |c|
			m += (c**d % n).to_i.chr
		end	
		return m
	end

  end
end
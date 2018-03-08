#Sam Smedinghoff
#3/8/18
#binary.rb - converts 8 digit binary number to decimal

puts "Enter an 8-digit binary number: "
binary = gets.strip.to_i

total = (binary%10)*2**0
total += ((binary/10)%10)*2**1
total += ((binary/10**2)%10)*2**2
total += ((binary/10**3)%10)*2**3
total += ((binary/10**4)%10)*2**4
total += ((binary/10**5)%10)*2**5
total += ((binary/10**6)%10)*2**6
total += ((binary/10**7)%10)*2**7

puts total.to_s

#Sam Smedinghoff
#3/12/18
#stringUnion.rb

def stringUnion(s1,s2)
  answer = ""
  (s1+s2).downcase.each_char do |ch|
    if not answer.include? ch
      answer += ch
    end
  end
  return answer
end

puts stringUnion("Mississippi","Pennsylvania")

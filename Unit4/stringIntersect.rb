#Sam Smedinghoff
#3/12/18
#stringIntersect.rb

def stringIntersect(s1,s2)
  answer = ""
  s1.downcase.each_char do |ch|
    if (not answer.include? ch) && (s2.downcase.include? ch)
      answer += ch
    end
  end
  return answer
end

puts stringIntersect("Mississippi","Pennsylvania")

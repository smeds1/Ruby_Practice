#Sam Smedinghoff
#3/12/18
#vprint.rb

def vprint(str)
  str.each_char do |ch|
    puts ch
  end
end

vprint('Testing')

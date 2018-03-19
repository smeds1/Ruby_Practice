#Sam Smedinghoff
#3/16/18
#ps3.rb - originally used for my comp sci II class

#The following is a class to represent a phonebook using a dictionary
#The dictionary key is a person's name and the value is their number.
#Ex: contacts['Sam Smedinghoff'] = 123-4567
#Please fill in the folowing methods:
class Phonebook
    attr_reader :bookname, :contacts

    def initialize(bookname='My Phone Book')
        @bookname = bookname
        @contacts = []
    end

    def add_contact(name,number)
        @contacts << {name: name, number: number}
    end

    def delete_contact(name)
      @contacts.each do |contact|
        if contact[:name] == name
          contacts.delete(contact)
          return
        end
      end
    end

    def update_contact(name,number)
        @contacts.each do |contact|
          if contact[:name] == name
            contact[:number] = number
            break
          end
        end
    end

    #returns the number associated with name
    def lookup_number(name)
        @contacts.each do |contact|
          (return contact[:number]) if contact[:name] == name
        end
        return nil
    end
end

#The following is a class to represent complex numbers. Python
#already has a built-in complex number class, so you can use that
#to test your code. Your implementation should behave EXACTLY as
#the Python implementation except you should use i intead of j.
#Your class should support the following operations: printing complex
#numbers, adding them, subtracting them, multiplying them, dividing them,
#finding the absolute value of a complex number, seeing if two complex
#numbers are equal or not equal, finding the conjugate of a complex
#number, finding the real part of a complex number, and finding the
#imaginary part of a complex number.

#Note: If you are super excited, you can implement an exponentiation
#method using DeMoive's Theorem. This method is not worth any extra points.
class ComplexNumber

    attr_reader :re, :im

    def initialize(a,b)
      @re = a
      @im = b
    end

    def to_s()
      if @im > 0
        return "#{@re} + #{@im}i"
      elsif @im < 0
        return "#{@re} - #{-1*@im}i"
      else
        return "#{@re}"
      end
    end

    def + (other)
      return ComplexNumber.new(@re + other.re, @im + other.im)
    end

    def - (other)
      return ComplexNumber.new(@re - other.re, @im - other.im)
    end

    def * (other)
      return ComplexNumber.new(@re*other.re - @im*other.im, @im*other.re + @re*other.im)
    end

    def / (other)
      num = self*other.conjugate()
      den = (other.re**2+other.im**2).to_f
      return ComplexNumber.new(num.re/den,num.im/den)
    end

    def abs ()
      return (@re**2 + @im**2) ** 0.5
    end

    def == (other)
      return (@re == other.re) && (@im == other.im)
    end

    def != (other)
      return (@re != other.re) || (@im != other.im)
    end

    def conjugate()
      return ComplexNumber.new(@re, -1*@im)
    end
end

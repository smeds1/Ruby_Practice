#Sam Smedinghoff
#3/16/18
#ps3_test.rb - minitest for ps3.rb

require 'minitest/autorun'
require_relative "../ps3"

class PhonebookTest < Minitest::Test

  def test_name_read
    smedsPhone = Phonebook.new('Smedinghoff Phone Book')
    assert_equal 'Smedinghoff Phone Book', smedsPhone.bookname
  end

  def test_contacts_read
    smedsPhone = Phonebook.new('Smedinghoff Phone Book')
    smedsPhone.add_contact('Mr. Silberman','123-4567')
    assert_equal [{name:'Mr. Silberman', number:'123-4567'}], smedsPhone.contacts
  end

  def test_contacts_lookup
    smedsPhone = Phonebook.new('Smedinghoff Phone Book')
    smedsPhone.add_contact('Mr. Silberman','123-4567')
    assert_equal '123-4567', smedsPhone.lookup_number('Mr. Silberman')
  end

  def test_delete_contact
    smedsPhone = Phonebook.new('Smedinghoff Phone Book')
    smedsPhone.add_contact('Mr. Silberman','123-4567')
    smedsPhone.delete_contact('Mr. Silberman')
    assert_nil smedsPhone.lookup_number('Mr. Silberman')
  end

  def test_update_contact
    smedsPhone = Phonebook.new('Smedinghoff Phone Book')
    smedsPhone.add_contact('Mr. Silberman','123-4567')
    smedsPhone.update_contact('Mr. Silberman','543-2109')
    assert_equal '543-2109', smedsPhone.lookup_number('Mr. Silberman')
  end

  def test_multiple_contacts
    smedsPhone = Phonebook.new('Smedinghoff Phone Book')
    smedsPhone.add_contact('Mr. Silberman','123-4567')
    smedsPhone.add_contact('Mr. Watkins-Chow','111-2222')
    smedsPhone.add_contact('Ms. Ball','234-9876')
    smedsPhone.add_contact('Mr. Goldman','111-2223')
    smedsPhone.add_contact('Mrs. Levitt','999-8887')
    smedsPhone.add_contact('Mr. Kaplan','345-6789')
    smedsPhone.delete_contact('Mr. Watkins-Chow')
    smedsPhone.delete_contact('Mr. Kaplan')
    smedsPhone.update_contact('Ms. Ball','832-1256')
    smedsPhone.update_contact('Mr. Goldman','555-4321')
    assert_equal '123-4567', smedsPhone.lookup_number('Mr. Silberman')
    assert_equal '999-8887', smedsPhone.lookup_number('Mrs. Levitt')
    assert_equal '555-4321', smedsPhone.lookup_number('Mr. Goldman')
    assert_equal '832-1256', smedsPhone.lookup_number('Ms. Ball')
  end

end


class ComplexNumberTest < Minitest::Test

  def test_create_3_4i
    z1 = ComplexNumber.new(3,4)
    assert_equal 3, z1.re
    assert_equal 4, z1.im
  end

  def test_to_s
    z1 = ComplexNumber.new(3,4)
    assert_equal "3 + 4i", z1.to_s
  end

  def test_add
    z1 = ComplexNumber.new(3,4)
    z2 = ComplexNumber.new(-5,12)
    z3 = z1 + z2
    assert_equal -2, z3.re
    assert_equal 16, z3.im
  end

  def test_subtract
    z1 = ComplexNumber.new(3,4)
    z2 = ComplexNumber.new(-5,12)
    z3 = z1 - z2
    assert_equal 8, z3.re
    assert_equal -8, z3.im
  end

  def test_multiply
    z1 = ComplexNumber.new(3,4)
    z2 = ComplexNumber.new(-5,12)
    z3 = z1 * z2
    assert_equal -63, z3.re
    assert_equal 16, z3.im
  end

  def test_division
    z1 = ComplexNumber.new(3,4)
    z2 = ComplexNumber.new(-5,12)
    z3 = z1 / z2
    assert_equal 33/169.0, z3.re
    assert_equal -56/169.0, z3.im
  end

  def test_absolute_value
    z1 = ComplexNumber.new(3,4)
    assert_equal 5, z1.abs
  end

  def test_equals
    z1 = ComplexNumber.new(3,4)
    z2 = ComplexNumber.new(-5,12)
    assert_equal false, z1 == z2
  end

  def test_not_equals
    z1 = ComplexNumber.new(3,4)
    z2 = ComplexNumber.new(-5,12)
    assert_equal true, z1 != z2
  end

  def test_conjugate
    z1 = ComplexNumber.new(3,4)
    assert_equal "3 - 4i", z1.conjugate.to_s
  end

end

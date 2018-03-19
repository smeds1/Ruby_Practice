#Sam Smedinghoff
#3/19/18
#ps5_test.rb - minitest for ps4.rb

require 'minitest/autorun'
require_relative '../ps5'

class PowerTest < Minitest::Test
  def test_power_1
    assert_equal 3**4, power(3,4)
  end

  def test_power_2
    assert_equal 0**3, power(0,3)
  end

  def test_power_3
    assert_equal 3**0, power(3,0)
  end

  def test_power_4
    assert_equal 0.5**4, power(0.5,4)
  end

  def test_power_5
    assert_equal (-5)**7, power(-5,7)
  end

  def test_power_6
    assert_equal (-4)**10, power(-4,10)
  end
end

class ReverseWordTest < Minitest::Test
  def test_reverse_word_1
    assert_equal 'pordmug', reverse_word('gumdrop')
  end

  def test_reverse_word_2
    assert_equal 'i', reverse_word('i')
  end

  def test_reverse_word_3
    assert_equal '', reverse_word('')
  end

  def test_reverse_word_4
    assert_equal 'racecar', reverse_word('racecar')
  end

  def test_reverse_word_5
    assert_equal 'htam evol I', reverse_word('I love math')
  end

  def test_reverse_word_6
    assert_equal '!ffohgnidems', reverse_word('smedinghoff!')
  end
end

class ComputeNumberTest < Minitest::Test
  def test_compute_number_1
    assert_equal 342, compute_number('342')
  end

  def test_compute_number_2
    assert_equal 9876543210, compute_number('9876543210')
  end

  def test_compute_number_3
    assert_equal 0, compute_number('0')
  end

  def test_compute_number_4
    assert_equal 99, compute_number('99')
  end

  def test_compute_number_5
    assert_equal 10**6, compute_number('1000000')
  end

  def test_compute_number_6
    assert_equal 320, compute_number('0320')
  end
end

class MaxElementTest < Minitest::Test
  def test_max_element_1
    assert_equal 7, max_element([-1,1,3,-5,3,4,2,-1,7,4])
  end

  def test_max_element_2
    assert_equal 99, max_element([99])
  end

  def test_max_element_3
    assert_equal 5, max_element([5,4])
  end

  def test_max_element_4
    assert_equal 7, max_element([1,2,3,4,5,6,7])
  end

  def test_max_element_5
    assert_equal 'rat', max_element(['cat','rat','bird','fish'])
  end

  def test_max_element_6
    assert_equal 4.4, max_element([1.1,2.2,4.4,3.3])
  end
end

class UniqueTest < Minitest::Test
  def test_unique_1
    assert_equal true, unique([1,2,3,4])
  end

  def test_unique_2
    assert_equal false, unique([1,2,3,1])
  end

  def test_unique_3
    assert_equal true, unique([])
  end

  def test_unique_4
    assert_equal true, unique(["a","aa","aaa"])
  end

  def test_unique_5
    assert_equal false, unique([4,4,4,4])
  end

  def test_unique_6
    assert_equal false, unique([true,false,true])
  end
end

#Sam Smedinghoff
#3/14/18
#ps1_test.rb - minitest for ps1.rb

require 'minitest/autorun'
require_relative "../ps1"

class IsMultipleTest < Minitest::Test
  def test_that_12_is_multiple_of_4
    result = is_multiple(12,4)
    assert_equal true, result
  end

  def test_that_4_is_not_multiple_of_12
    result = is_multiple(4,12)
    assert_equal false, result
  end

  def test_that_0_is_multiple_of_7
    result = is_multiple(0,7)
    assert_equal true, result
  end

  def test_that_7_is_not_multiple_of_0
    result = is_multiple(7,0)
    assert_equal false, result
  end

  def test_that_negative8_is_multiple_of_4
    result = is_multiple(-8,4)
    assert_equal true, result
  end

  def test_that_4_is_not_multiple_of_negative8
    result = is_multiple(4,-8)
    assert_equal false, result
  end

  def test_that_negative49_is_multiple_of_negative7
    result = is_multiple(-49,-7)
    assert_equal true, result
  end

  def test_that_8_is_multiple_of_8
    result = is_multiple(8,8)
    assert_equal true, result
  end

  def test_that_0_is_multiple_of_0
    result = is_multiple(0,0)
    assert_equal true, result
  end
end

class IsEvenTest < Minitest::Test
  def test_4_is_even
    result = is_even(4)
    assert_equal true, result
  end

  def test_17_is_not_even
    result = is_even(17)
    assert_equal false, result
  end

  def test_0_is_even
    result = is_even(0)
    assert_equal true, result
  end

  def test_negative5_is_not_even
    result = is_even(-5)
    assert_equal false, result
  end

  def test_negative4_is_even
    result = is_even(-4)
    assert_equal true, result
  end

  def test_428_is_even
    result = is_even(428)
    assert_equal true, result
  end
end

class MinmaxTest < Minitest::Test

  def test_singleItem_minmax
    result = minmax([4])
    assert_equal [4,4], result
  end

  def test_two_ordered_items_minmax
    result = minmax([4,5])
    assert_equal [4,5], result
  end

  def test_two_unordered_items_minmax
    result = minmax([5,4])
    assert_equal [4,5], result
  end

  def test_two_negative_items_minmax
    result = minmax([-4,-5])
    assert_equal [-5,-4], result
  end

  def test_two_noninteger_items_minmax
    result = minmax([4.4,5.3])
    assert_equal [4.4,5.3], result
  end

  def multiple_items_minmax
    result = minmax([-1,3,6,-3,5,2,8,1,0,2])
    assert_equal [-3,8], result
  end

  def test_duplicate_items_minmax
    result = minmax([4,5,4,5,4,5,4,5])
    assert_equal [4,5], result
  end

end

class SumOfSquaresTest < Minitest::Test
  def test_sum_of_squares_0_is_0
    result = sum_of_squares(0)
    assert_equal 0, result
  end

  def test_sum_of_squares_1_is_0
    result = sum_of_squares(1)
    assert_equal 0, result
  end

  def test_sum_of_squares_2_is_1
    result = sum_of_squares(2)
    assert_equal 1, result
  end

  def test_sum_of_squares_5_is_30
    result = sum_of_squares(5)
    assert_equal 30, result
  end

  def test_sum_of_squares_negative5_is_0
    result = sum_of_squares(-5)
    assert_equal 0, result
  end

  def test_sum_of_squares_17_is_1496
    result = sum_of_squares(17)
    assert_equal 1496, result
  end
end

class UniqueTest < Minitest::Test
  def test_unique_4_item_list
    result = unique([1,2,3,4])
    assert_equal true, result
  end

  def test_unique_1_item_list
    result = unique([1])
    assert_equal true, result
  end

  def test_nonunique_4_item_list
    result = unique([1,2,3,1])
    assert_equal false, result
  end

  def test_nonunique_all_same_item_list
    result = unique([4,4,4,4])
    assert_equal false, result
  end

  def test_unique_string_list
    result = unique(['a','aa','aaa'])
    assert_equal true, result
  end

  def test_nonunique_boolean_list
    result = unique([false,true,false])
    assert_equal false, result
  end
end

class VowelsTest < Minitest::Test
  def test_this_file_vowels
    result = vowels('ps1_test.rb')
    assert_equal 979, result
  end

  def test_words_file_vowels
    result = vowels('../../Unit6/words.txt')
    assert_equal 338455, result
  end

  def test_ps1_file_vowels
    result = vowels('../ps1.rb')
    assert_equal 568, result
  end
end

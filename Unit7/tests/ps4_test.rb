#Sam Smedinghoff
#3/18/18
#ps4_test.rb - minitest for ps4.rb

require 'minitest/autorun'
require_relative '../ps4'

class MaxProductQuadraticTest < Minitest::Test
  def test_max_prod_quadratic_1
    assert_equal -1, max_product_quadratic([-1,1])
  end

  def test_max_prod_quadratic_2
    assert_equal 40, max_product_quadratic([-1,1,0,8,4,-3,5])
  end

  def test_max_prod_quadratic_3
    assert_equal 20, max_product_quadratic([-2,-3,-1,-4,-5,-2,-1])
  end

  def test_max_prod_quadratic_4
    assert_equal 4000, max_product_quadratic([100,40,10,0])
  end

  def test_max_prod_quadratic_5
    assert_equal 4.18, max_product_quadratic([1.8,2.2,1.7,-1.4,1.9,0.6])
  end

  def test_max_prod_quadratic_6
    assert_equal 16, max_product_quadratic([4,4,4,4,4,4])
  end

end

class MaxSumLinear < Minitest::Test
  def test_max_sum_linear_1
    assert_equal 0, max_sum_linear([-1,1])
  end

  def test_max_sum_linear_2
    assert_equal 13, max_sum_linear([-1,1,0,8,4,-3,5])
  end

  def test_max_sum_linear_3
    assert_equal -2, max_sum_linear([-2,-3,-1,-4,-5,-2,-1])
  end

  def test_max_sum_linear_4
    assert_equal 140, max_sum_linear([100,40,10,0])
  end

  def test_max_sum_linear_5
    assert_equal 4.1, max_sum_linear([1.8,2.2,1.7,-1.4,1.9,0.6])
  end

  def test_max_sum_linear_6
    assert_equal 8, max_sum_linear([4,4,4,4,4,4])
  end
end

class WhileAdderTest < Minitest::Test
  def test_while_adder_1
    assert_equal (1..10).to_a.sum, whileAdder(1,10)
  end

  def test_while_adder_2
    assert_equal (13..114).to_a.sum, whileAdder(13,114)
  end

  def test_while_adder_3
    assert_equal (-800..913131).to_a.sum, whileAdder(-800,913131)
  end

end

class ForAdderTest < Minitest::Test
  def test_for_adder_1
    assert_equal (1..10).to_a.sum, forAdder(1,10)
  end

  def test_for_adder_2
    assert_equal (13..114).to_a.sum, forAdder(13,114)
  end

  def test_for_adder_3
    assert_equal (-800..913131).to_a.sum, forAdder(-800,913131)
  end
end

class FindLinearTest < Minitest::Test
  def test_find_linear_1
    assert_equal 1, find_linear([-1,-2,-3,-4],-2)
  end

  def test_find_linear_2
    assert_equal 0, find_linear([4,4,4],4)
  end

  def test_find_linear_3
    assert_equal -1, find_linear([1,3,5,7,9],2)
  end

  def test_find_linear_4
    assert_equal -1, find_linear([],2)
  end

  def test_find_linear_4
    assert_equal -1, find_linear([],2)
  end

  def test_find_linear_5
    assert_equal 1, find_linear(['Cat','Rat','Bird'],'Rat')
  end

  def test_find_linear_6
    assert_equal 2, find_linear([[1,2],[3,4],[5,6],[7,8]],[5,6])
  end
end

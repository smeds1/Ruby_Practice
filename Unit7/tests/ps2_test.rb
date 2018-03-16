#Sam Smedinghoff
#3/15/18
#ps2_test.rb - minitest for ps2.rb

require 'minitest/autorun'
require_relative "../ps2"
require 'set'

class MultipleSetTest < Minitest::Test
  def test_multipleSet_30
    result = multipleSet(30)
    assert_equal [30,60,90].to_set, result
  end

  def test_multipleSet_10
    result = multipleSet(10)
    assert_equal [10,20,30,40,50,60,70,80,90].to_set, result
  end

  def test_multipleSet_200
    result = multipleSet(200)
    assert_equal [].to_set, result
  end

  def test_multipleSet_1
    result = multipleSet(1)
    assert_equal (1..99).to_a.to_set, result
  end

  def test_multipleSet_50
    result = multipleSet(50

    )
    assert_equal [50].to_set, result
  end

  def test_multipleSet_7
    result = multipleSet(7)
    assert_equal [7,14,21,28,35,42,49,56,63,70,77,84,91,98].to_set, result
  end

end

class FivesSetTest < Minitest::Test
  def test_fivesSet_1_2_3_4_5
    result = fivesSet(Set[1,2,3,4,5])
    assert_equal [5].to_set, result
  end

  def test_fivesSet_neg1_neg2_neg3_neg4_neg5
    result = fivesSet(Set[-1,-2,-3,-4,-5])
    assert_equal [-5].to_set, result
  end

  def test_fivesSet_2_4_6_8
    result = fivesSet(Set[2,4,6,8])
    assert_equal [].to_set, result
  end

  def test_fivesSet_1_thru_1000
    result = fivesSet((1..1000).to_a.to_set)
    assert_equal (5..1000).step(5).to_a.to_set, result
  end

  def test_fivesSet_neg10_thru_10
    result = fivesSet([-10,-8,-6,-4,-2,0,2,4,6,8,10])
    assert_equal ([-10,0,10]).to_set, result
  end

  def test_fivesSet_25_55_85_1_35_10_neg10
    result = fivesSet([25,55,85,1,35,10,-10])
    assert_equal ([-10,10,25,35,55,85]).to_set, result
  end
end

class StateCapitalDictionaryTest < Minitest::Test

  def test_alabama_montgomery
    capitals = stateCapitalDictionary()
    assert_equal capitals['Alabama'], 'Montgomery'
  end

  def test_alabama_montgomery
    capitals = stateCapitalDictionary()
    assert_equal capitals['North Dakota'], 'Bismarck'
  end

  def test_northdakota_bismarck
    capitals = stateCapitalDictionary()
    assert_equal capitals['North Dakota'], 'Bismarck'
  end

  def test_utah_saltlakecity
    capitals = stateCapitalDictionary()
    assert_equal capitals['Utah'], 'Salt Lake City'
  end

  def test_maryland_annapolis
    capitals = stateCapitalDictionary()
    assert_equal capitals['Maryland'], 'Annapolis'
  end

  def test_virginia_richmond
    capitals = stateCapitalDictionary()
    assert_equal capitals['Virginia'], 'Richmond'
  end

  def test_oklahoma_oklahomacity
    capitals = stateCapitalDictionary()
    assert_equal capitals['Oklahoma'], 'Oklahoma City'
  end
end

class IndexTestTest < Minitest::Test

  def test_indexTest_3_4_5_4
    result = indexTest([3,4,5],4)
    assert_equal 0, result
  end

  def test_indexTest_neg1_neg2_neg3_2
    result = indexTest([-1,-2,-3],2)
    assert_equal -3, result
  end

  def test_indexTest_10_9_8_7_6_neg1
    result = indexTest([10,9,8,7,6],-1)
    assert_equal 6, result
  end

  def test_indexTest_empty_0
    result = indexTest([],0)
    assert_equal 0, result
  end

  def test_indexTest_hash_fail
    result = indexTest({red:'balloon',yellow:'bananna'},:Green)
    assert_equal 0, result
  end

  def test_indexTest_hash_succeed
    result = indexTest({red:'balloon',yellow:'bananna'},:yellow)
    assert_equal 'bananna', result
  end
end

class PrimesTest < Minitest::Test
  def test_primes_97
    result = primes(97)
    assert_equal [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97], result
  end

  def test_primes_1
    result = primes(1)
    assert_equal [], result
  end

  def test_primes_2
    result = primes(2)
    assert_equal [2], result
  end

end

class ShuffleTest < Minitest::Test
  def test_shuffle_1_100
    data = (1..100).to_a
    result1 = shuffle(data)
    result2 = shuffle(data)
    data.each do |elt|
      assert_includes(result1, elt)
      assert_includes(result2, elt)
    end

    refute_equal(result1, result2)
  end

  def test_shuffle_empty
    data = []
    result = shuffle(data)
    assert_equal [], result
  end

  def test_shuffle_alphabet
    data = ('a'..'z').to_a
    result1 = shuffle(data)
    result2 = shuffle(data)
    data.each do |elt|
      assert_includes(result1, elt)
      assert_includes(result2, elt)
    end

    refute_equal(result1, result2)
  end

  def test_shuffle_animals
    data = ['cat','rat','dog','bird','iguana','chicken']
    result1 = shuffle(data)
    result2 = shuffle(data)
    data.each do |elt|
      assert_includes(result1, elt)
      assert_includes(result2, elt)
    end

    refute_equal(result1, result2)
  end

  def test_shuffle_matrix
    data = [[1,2],[3,4],[5,6],[7,8],[9,10],[11,12],[13,14]]
    result1 = shuffle(data)
    result2 = shuffle(data)
    data.each do |elt|
      assert_includes(result1, elt)
      assert_includes(result2, elt)
    end

    refute_equal(result1, result2)
  end
end

class PowersOfTwoTest < Minitest::Test
  def test_powers_of_two_1
    result = powersOfTwo(1)
    assert_equal [1,2], result
  end

  def test_powers_of_two_2
    result = powersOfTwo(2)
    assert_equal [1,2,4], result
  end

  def test_powers_of_two_3
    result = powersOfTwo(3)
    assert_equal [1,2,4,8], result
  end

  def test_powers_of_two_4
    result = powersOfTwo(4)
    assert_equal [1,2,4,8,16], result
  end

  def test_powers_of_two_5
    result = powersOfTwo(5)
    assert_equal [1,2,4,8,16,32], result
  end

  def test_powers_of_two_6
    result = powersOfTwo(6)
    assert_equal [1,2,4,8,16,32,64], result
  end
end

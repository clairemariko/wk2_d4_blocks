require('minitest/autorun')
require_relative('app')

class TestApp < Minitest::Test

  def test_adds_one_to_each_item
    assert_equal([2,3,4], add_one([1,2,3]))
  end

  def test_multiples_each_item_by_two
    assert_equal([2,4,6], multiply_by_two([1,2,3]))
  end

  # def test_up_to_you_add
  #   assert_equal(2, up_to_you(){ 1+1 } )
  # end

  # def test_up__to_you_add
  #   assert_equal("Hello Valerie", up_to_you(){ |i| i + " Valerie"})
  # end
  def test_up_to_you_addd
    result = up_to_you() do |text|
      text + " Valerie"
    end
    assert_equal("Hello Valerie", result)
  end

  #a block IS NOT AN OBJECT
  # up_to_you(){ |i| i + " Valerie"} this is the same as above

  # def test_doing_stuff
  #   assert_equal(15, doing_stuff(){ |i| i } + 5)
  # end
  def test_doing_stuff
    result = doing_stuff() do |i|
      i + 5
    end
    assert_equal(15, result)
  end


  # def test_doing_more_stuff
  #   assert_equal([2,3,4], doing_more_stuff(){|i| i + 1 })
  # end

  # def test_map_add_one_to_each_item
  #   assert_equal([2,3,4], map([1,2,3]) {|i| i + 1 })
  # end

  def test_map_multiply_each_item_by_two
    array = [1,2,3]
    result = array.map{|i| i *2 }
    assert_equal([2,4,6], result)
    # assert_equal([2,4,6], map([1,2,3]) {|i| i * 2})
  end

  def test_each
    array = [1,2,3]
    result = []
    #array.each {|i|}
    array.each do |i|   #the each uses a foor loop under the hood
      result << item
    end

    assert_equal([1,2,3], result)
  end
  



  

end
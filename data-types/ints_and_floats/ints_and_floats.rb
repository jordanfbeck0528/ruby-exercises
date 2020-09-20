require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

class IntsAndFloatsTests < Minitest::Test  # => Minitest::Test
  def test_1
    lucky = 7                              # => 7
    unlucky = 13                           # => 13
    # Using the two variables defined above,
    # add the lucky number and the unlucky number
    sum = lucky + unlucky                  # => 20
    assert_equal 20, sum                   # => true
  end                                      # => :test_1

  def test_2
    # skip
    lucky = 7                     # => 7
    unlucky = 13                  # => 13
    # Using the two variables defined above,
    # subtract the unlucky from the lucky
    difference = lucky - unlucky  # => -6
    assert_equal -6, difference   # => true
  end                             # => :test_2

  def test_3
    # skip
    lucky = 7                   # => 7
    unlucky = 13                # => 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    # NOTE: this is integer division
    quotient = unlucky / lucky  # => 1
    assert_equal 1, quotient    # => true
  end                           # => :test_3

  def test_4
    # skip
    lucky = 7                                  # => 7
    unlucky = 13                               # => 13
    # Using the two variables defined above,
    # divide unlucky by lucky
    quotient = unlucky.to_f / lucky.to_f       # => 1.8571428571428572
    assert_equal 1.8571428571428572, quotient  # => true
  end                                          # => :test_4

  def test_5
    # skip
    lucky = 7                  # => 7
    unlucky = 13               # => 13
    # Using the two variables defined above,
    # find the remainder of the unlucky divided by the lucky
    remainder = 13 % 7         # => 6
    assert_equal 6, remainder  # => true
  end                          # => :test_5

  def test_6
    # skip
    lucky = 7                 # => 7
    # Using the variable defined above,
    # find out if the lucky number is even
    even = lucky.even?        # => false
    assert_equal false, even  # => true
  end                         # => :test_6

  def test_7
    # skip
    pi = 3.14                # => 3.14
    # Using the variable defined above,
    # round the number to the nearest whole number
    rounded = pi.round       # => 3
    assert_equal 3, rounded  # => true
  end                        # => :test_7

  def test_8
    # skip
    pi = 3.14                  # => 3.14
    # Using the variable defined above,
    # round the number to one decimal place
    rounded = pi.round(1)      # => 3.1
    assert_equal 3.1, rounded  # => true
  end                          # => :test_8



  def test_9
    # skip
    pi = 3.14                # => 3.14
    # Using the variable defined above,
    # round the number to the next highest whole number
    rounded = pi.ceil        # => 4
    assert_equal 4, rounded  # => true
  end                        # => :test_9
end                          # => :test_9

# >> Run options: --seed 45821
# >>
# >> # Running:
# >>
# >> .........
# >>
# >> Finished in 0.001079s, 8341.0560 runs/s, 8341.0560 assertions/s.
# >>
# >> 9 runs, 9 assertions, 0 failures, 0 errors, 0 skips

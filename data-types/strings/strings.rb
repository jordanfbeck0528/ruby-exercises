require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

# There's a video walk-through of this exercise available here:
# https://youtu.be/aeAkLxr5diE
# and a helpful blog post on this general topic here:
# https://josh.works/turing-backend-prep-02-first-tests-and-making-them-pass

class StringTest < Minitest::Test  # => Minitest::Test
  def test_1
    # skip
    name = "alice"                 # => "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.
    actual = name.capitalize       # => "Alice"
    expected = "Alice"             # => "Alice"

    assert_equal expected, actual  # => true
  end                              # => :test_1

  def test_2
    # skip
    name = "aLiCe"        # => "aLiCe"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.upcase  # => "ALICE"
    expected = "ALICE"    # => "ALICE"

    assert_equal expected, actual  # => true
  end                              # => :test_2

  def test_3
    # skip
    name = "AlIcE"          # => "AlIcE"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.downcase  # => "alice"
    expected = "alice"      # => "alice"

    assert_equal expected, actual  # => true
  end                              # => :test_3

  def test_4
    # skip
    rhyme = "peter piper picked a peck of picked peppers"     # => "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.reverse                                    # => "sreppep dekcip fo kcep a dekcip repip retep"
    expected = "sreppep dekcip fo kcep a dekcip repip retep"  # => "sreppep dekcip fo kcep a dekcip repip retep"

    assert_equal expected, actual  # => true
  end                              # => :test_4

  def test_5
    # skip
    word = "ticking"            # => "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub("t","k")  # => "kicking"
    expected = "kicking"        # => "kicking"

    assert_equal expected, actual  # => true
  end                              # => :test_5

  def test_6
    # skip
    word = "ticking"               # => "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub("ti","clo")  # => "clocking"
    expected = "clocking"          # => "clocking"

    assert_equal expected, actual  # => true
  end                              # => :test_6

  def test_7
    # skip
    words = "five sleepy kittens"     # => "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.
    actual = words.gsub("e","*")      # => "fiv* sl**py kitt*ns"
    expected = "fiv* sl**py kitt*ns"  # => "fiv* sl**py kitt*ns"

    assert_equal expected, actual  # => true
  end                              # => :test_7

  def test_8
    # skip
    greeting = "Hello!!"    # => "Hello!!"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chop  # => "Hello!"
    expected = "Hello!"     # => "Hello!"

    assert_equal expected, actual  # => true
  end                              # => :test_8

  def test_9
    # skip
    greeting = "Hello!!\n"   # => "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp  # => "Hello!!"
    expected = "Hello!!"     # => "Hello!!"

    assert_equal expected, actual  # => true
  end                              # => :test_9

  def test_10
    # skip
    greeting = "Hello!!\n\n"  # => "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp   # => "Hello!!\n"
    expected = "Hello!!\n"    # => "Hello!!\n"

    assert_equal expected, actual  # => true
  end                              # => :test_10

  def test_11
    # skip
    rhyme = "eeny, meeny, miny, moe"  # => "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.delete("e")        # => "ny, mny, miny, mo"
    expected = "ny, mny, miny, mo"    # => "ny, mny, miny, mo"

    assert_equal expected, actual  # => true
  end                              # => :test_11

  def test_12
    # skip
    rhyme = "eeny, meeny, miny, moe"  # => "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.delete("aeiou")    # => "ny, mny, mny, m"
    expected = "ny, mny, mny, m"      # => "ny, mny, mny, m"

    assert_equal expected, actual  # => true
  end                              # => :test_12

  def test_13
    # skip
    greeting = "Hello World!"  # => "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length   # => 12
    expected = 12              # => 12

    assert_equal expected, actual  # => true
  end                              # => :test_13

  def test_14
    # skip
    greeting = "Hello World!\n"  # => "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length     # => 13
    expected = 13                # => 13

    assert_equal expected, actual  # => true
  end                              # => :test_14

  def test_15
    # skip
    greeting = "Hello       World!"  # => "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.length         # => 18
    expected = 18                    # => 18

    assert_equal expected, actual  # => true
  end                              # => :test_15

  def test_16
    # skip
    greeting = "Hello World!"  # => "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string

    actual = greeting.count("o")   # => 2
    expected = 2                   # => 2
    assert_equal expected, actual  # => true
  end                              # => :test_16

  def test_17
    # skip
    greeting = "Hello World!"         # => "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    actual = greeting.count("aeiou")  # => 3
    expected = 3                      # => 3

    assert_equal expected, actual  # => true
  end                              # => :test_17

  def test_18
    # skip
    greeting = "Hello World!"          # => "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    actual = greeting.include?("llo")  # => true
    expected = true                    # => true

    assert_equal expected, actual  # => true
  end                              # => :test_18

  def test_19
    # skip
    greeting = "Hello World!"          # => "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    actual = greeting.include?("lol")  # => false
    expected = false                   # => false

    assert_equal expected, actual  # => true
  end                              # => :test_19

  def test_20
    # skip
    greeting = "Hello World, my name is"               # => "Hello World, my name is"
    name = "Harry Potter"                              # => "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    actual = "#{greeting} #{name}"         # => "Hello World, my name is Harry Potter"
    expected = "Hello World, my name is Harry Potter"  # => "Hello World, my name is Harry Potter"
  end                                                  # => :test_20

  def test_21
    # skip
    # See if you can use another method than the last test to achieve the same goal:
    greeting = "Hello World, my name is"               # => "Hello World, my name is"
    name = "Harry Potter"                              # => "Harry Potter"
    actual = greeting.concat(" ", name)                # => "Hello World, my name is Harry Potter"
    expected = "Hello World, my name is Harry Potter"  # => "Hello World, my name is Harry Potter"

    assert_equal expected, actual  # => true
  end                              # => :test_21

  def test_22
    greeting = "Hello World, my name is"               # => "Hello World, my name is"
    name = "Harry Potter"
    # skip
    # Again, using a different method:
    actual = greeting + " " +  name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end                              # => :test_22

  def test_23
    # skip
    greeting = "Hello World, my name is"               # => "Hello World, my name is"
    name = "Harry Potter"
    # Once more, using a different method:
    actual = greeting << " " << name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end                              # => :test_23

  def test_24
    # skip
    phrase = "  \n\t to the moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.strip
    expected = "to the moon"

    assert_equal expected, actual
  end                              # => :test_24
end                                # => :test_24

# >> Run options: --seed 54703
# >>
# >> # Running:
# >>
# >> ........S.E..S..........
# >>
# >> Finished in 0.001911s, 12558.8705 runs/s, 10465.7254 assertions/s.
# >>
# >>   1) Error:
# >> StringTest#test_22:
# >> NameError: undefined local variable or method `greeting' for #<StringTest:0x00007ff632863988>
# >>     strings.rb:225:in `test_22'
# >>
# >> 24 runs, 20 assertions, 0 failures, 1 errors, 2 skips
# >>
# >> You have skipped tests. Run with --verbose for details.

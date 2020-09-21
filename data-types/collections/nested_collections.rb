require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

class NestesdCollectionsTest < Minitest::Test  # => Minitest::Test

  def test_1
    coordinates = [[2,5],[87,2],[56,39],[3,46]]  # => [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # Retrive the second element
    second = coordinates[1]                      # => [87, 2]

    assert_equal [87, 2], second  # => true
  end                             # => :test_1

  def test_2
    # skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]  # => [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # Retrive the value 39
    thirty_nine = coordinates[2][1]              # => 39
    assert_equal 39, thirty_nine                 # => true
  end                                            # => :test_2

  def test_3
    # skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]  # => [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # set the last coordinates to [6, 55]
    coordinates[3] = [6,55]                      # => [6, 55]
    expected = [[2,5],[87,2],[56,39],[6,55]]     # => [[2, 5], [87, 2], [56, 39], [6, 55]]
    assert_equal expected, coordinates           # => true
  end                                            # => :test_3

  def test_4
    # skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]  # => [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # set the second element of the last coordinates
    # to 0
    coordinates[3][1] = 0                        # => 0

    expected = [[2,5],[87,2],[56,39],[3, 0]]  # => [[2, 5], [87, 2], [56, 39], [3, 0]]
    assert_equal expected, coordinates        # => true
  end                                         # => :test_4

  def test_5
    # skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]  # => [[2, 5], [87, 2], [56, 39], [3, 46]]
    # Using the coordinates variable defined above
    # add the coordinate [4, 14]
    coordinates.push([4,14])                     # => [[2, 5], [87, 2], [56, 39], [3, 46], [4, 14]]

    expected = [[2,5],[87,2],[56,39],[3,46],[4, 14]]  # => [[2, 5], [87, 2], [56, 39], [3, 46], [4, 14]]
    assert_equal expected, coordinates                # => true
  end                                                 # => :test_5

  def test_6
    # skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],                      # => ["Kenny", "Joan", "Shabaz"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"]                                        # => ["Johnny"]
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"]}
    # Using the team variable defined above
    # retrieve all of the pitchers
    pitchers = team[:pitchers]                                    # => ["Kenny", "Joan", "Shabaz"]
    expected = ["Kenny", "Joan", "Shabaz"]                        # => ["Kenny", "Joan", "Shabaz"]
    assert_equal expected, pitchers                               # => true
  end                                                             # => :test_6

  def test_7
    # skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],                      # => ["Kenny", "Joan", "Shabaz"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"]                                        # => ["Johnny"]
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"]}
    # Using the team variable defined above
    # add "Phil" as a pitcher
    team[:pitchers] += ["Phil"]                                   # => ["Kenny", "Joan", "Shabaz", "Phil"]

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz", "Phil"],              # => ["Kenny", "Joan", "Shabaz", "Phil"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"]                                        # => ["Johnny"]
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz", "Phil"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"]}
    assert_equal expected, team                                   # => true
  end                                                             # => :test_7

  def test_8
    # skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],                      # => ["Kenny", "Joan", "Shabaz"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"]                                        # => ["Johnny"]
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"]}
    # Using the team variable defined above
    # create a new key :coaches with the value
    # of an empty array
    team[:coaches] = []                                           # => []

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz"],                      # => ["Kenny", "Joan", "Shabaz"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"],                                       # => ["Johnny"]
      coaches: []                                                 # => []
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"], :coaches=>[]}
    assert_equal expected, team                                   # => true
  end                                                             # => :test_8

  def test_9
    # skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],                      # => ["Kenny", "Joan", "Shabaz"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"]                                        # => ["Johnny"]
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"]}
    # Using the team variable defined above
    # Find out how many fielders there are
    num_fielders = team[:fielders].count                          # => 5
    assert_equal 5, num_fielders                                  # => true
  end                                                             # => :test_9

  def test_10
    # skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],                      # => ["Kenny", "Joan", "Shabaz"]
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],  # => ["Luke", "Chris", "Megan", "Mark", "Mackenzie"]
      catchers: ["Johnny"]                                        # => ["Johnny"]
    }                                                             # => {:pitchers=>["Kenny", "Joan", "Shabaz"], :fielders=>["Luke", "Chris", "Megan", "Mark", "Mackenzie"], :catchers=>["Johnny"]}
    # Using the team variable defined above
    # Find out if "Kenny" is a pitcher
    kenny_is_pitcher = team[:pitchers].include?("Kenny")          # => true
    assert_equal true, kenny_is_pitcher                           # => true
  end                                                             # => :test_10

  def test_11
    # skip
    # HINT: You may find it valuable to break the three_day_forecast variable
    # into multiple lines to make it more readable

    three_day_forecast = {days:[{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}],"date" => "6-21-18",  # => "6-21-18"
    ref_num: 3456789765456787656}                                                                                                                                                 # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.values[2]  # => 3456789765456787656
    expected = 3456789765456787656         # => 3456789765456787656
    assert_equal expected, actual          # => true
  end                                      # => :test_11

  def test_12
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.values[0]                                                                                                    # => [{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}]
    expected = [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}]  # => [{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}]
    assert_equal expected, actual                                                                                                            # => true
  end                                                                                                                                        # => :test_12

  def test_13
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.values[1]  # => "6-21-18"
    expected = "6-21-18"                   # => "6-21-18"
    assert_equal expected, actual          # => true
  end                                      # => :test_13

  def test_14
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.keys      # => [:days, "date", :ref_num]
    expected = [:days, "date", :ref_num]  # => [:days, "date", :ref_num]
    assert_equal expected, actual         # => true
  end                                     # => :test_14

  def test_15
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.values[0][1].values[0]  # => 55
    expected = 55                                       # => 55
    assert_equal expected, actual                       # => true
  end                                                   # => :test_15

  def test_16
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.values[0][0].keys  # => [:high, :low, :summary]
    expected = [:high, :low, :summary]             # => [:high, :low, :summary]
    assert_equal expected, actual                  # => true
  end                                              # => :test_16

  def test_17
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.values[0][2].values  # => [77, 64, "Sunny"]
    expected = [77, 64, "Sunny"]                     # => [77, 64, "Sunny"]
    assert_equal expected, actual                    # => true
  end                                                # => :test_17

  def test_18
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.keys[1]  # => "date"
    expected = "date"                    # => "date"
    assert_equal expected, actual        # => true
  end                                    # => :test_18

  def test_19
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},  # => {:high=>70, :low=>63, :summary=>"Mostly Sunny"}
      {high: 55,low: 47,summary: "Partly Cloudy"},                            # => {:high=>55, :low=>47, :summary=>"Partly Cloudy"}
      {high: 77,low: 64,summary: "Sunny"}],                                   # => [{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}]
       "date" => "6-21-18",                                                   # => "6-21-18"
       ref_num: 3456789765456787656}                                          # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Change the high on the fist day to 99

    #three_day_forecast.values[0][0].keys[0] = 99  # => 99

    three_day_forecast.values[0][0][:high] = 99  # => 99

    expected = {days: [{high: 99,low: 63,summary: "Mostly Sunny"},  # => {:high=>99, :low=>63, :summary=>"Mostly Sunny"}
      {high: 55,low: 47,summary: "Partly Cloudy"},                  # => {:high=>55, :low=>47, :summary=>"Partly Cloudy"}
      {high: 77,low: 64,summary: "Sunny"}],                         # => [{:high=>99, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}]
      "date" => "6-21-18",                                          # => "6-21-18"
      ref_num: 3456789765456787656}                                 # => {:days=>[{:high=>99, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    assert_equal expected, three_day_forecast                       # => true
  end                                                               # => :test_19

  def test_20
    # skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}           # => {:days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Add a new key "time" with the value "12:30"
    three_day_forecast["time"] = "12:30"                                                                                                                                                                                  # => "12:30"
    expected = {"time" => "12:30", days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}  # => {"time"=>"12:30", :days=>[{:high=>70, :low=>63, :summary=>"Mostly Sunny"}, {:high=>55, :low=>47, :summary=>"Partly Cloudy"}, {:high=>77, :low=>64, :summary=>"Sunny"}], "date"=>"6-21-18", :ref_num=>3456789765456787656}
    assert_equal expected, three_day_forecast                                                                                                                                                                             # => true
  end                                                                                                                                                                                                                     # => :test_20
end                                                                                                                                                                                                                       # => :test_20

# >> Run options: --seed 35823
# >>
# >> # Running:
# >>
# >> ....................
# >>
# >> Finished in 0.002683s, 7454.3417 runs/s, 7454.3417 assertions/s.
# >>
# >> 20 runs, 20 assertions, 0 failures, 0 errors, 0 skips

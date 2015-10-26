require 'minitest/autorun'
require './dict.rb'

class Test <  MiniTest::Unit::TestCase
  $states = Dict.new()
  Dict.set($states, 'Oregon', 'OR')
  Dict.set($states, 'Florida', 'FL')
  Dict.set($states, 'California', 'CA')
  Dict.set($states, 'New York', 'NY')
  Dict.set($states, 'Michigan', 'MI')

  # create a basic set of $states and some $cities in them.
  $cities = Dict.new()
  Dict.set($cities, 'CA', 'San Francisco')
  Dict.set($cities, 'MI', 'Detroit')
  Dict.set($cities, 'FL', 'Jacksonville')

  # add some more $cities
  Dict.set($cities, 'NY', 'New York')
  Dict.set($cities, 'OR', 'Portland')
  
  def test_cities
    assert_equal(Dict.get($cities, 'NY'), 'New York',  "Should have returned 'New York'")
    assert_equal(Dict.get($cities, 'OR'),'Portland',  "Should have returned 'Portland'")
  end

  def test_states
    assert_equal(Dict.get($states, 'Michigan'), 'MI', "Should have returned 'MI'")
    assert_equal(Dict.get($states, 'Oregon'), 'OR', "Should have returned 'OR'")
  end

  def test_states_has_cities
    assert_equal Dict.get($cities, Dict.get($states, 'Michigan')), "Detroit", "Should have returned 'Detroit'"
    assert_equal Dict.get($cities, Dict.get($states, 'Florida')), "Jacksonville", "Should have returned 'Jacksonville'"
  end

  def test_get_nonexistent_state
    state = Dict.get($states, 'Texas')
    assert(state == nil, "should be nil for a nonexistent state!")
  end

  def test_default
    city = Dict.get($cities, 'TX', 'Does Not Exist')
    assert city == 'Does Not Exist', "Should be equal to 'Does Not Exist'"
  end
end
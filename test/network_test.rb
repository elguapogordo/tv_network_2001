require 'minitest/autorun'
require 'minitest/pride'
require './lib/network'
require './lib/character'
require './lib/show'

class NetworkTest < Minitest::Test

  def test_it_exists
    nbc = Network.new("NBC")

    assert_instance_of Network.new, nbc
  end

end

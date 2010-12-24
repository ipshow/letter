require 'test_helper'

class LetterTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Letter.new.valid?
  end
end

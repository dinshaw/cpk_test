require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test 'touch does not raise error' do
    assert_nothing_raised do
      Contact.create!.touch
    end
  end
end

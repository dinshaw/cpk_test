require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test 'touch does not raise error' do
    assert_nothing_raised do
      Contact.create!.touch
    end
  end

  test 'update_all does not raise error' do
    assert_nothing_raised do
      contact = Contact.create
      primary_key = contact.class.primary_key
      Contact.update_all({updated_at: 0}, {primary_key => contact[primary_key]})
    end
  end
end

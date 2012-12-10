class Contact < ActiveRecord::Base
  attr_accessible :name
  self.primary_keys = [:account_id, :contact_id]
  before_save :set_ids

  def set_ids
    self.account_id = Random.rand(11)
    self.contact_id = Random.rand(11)
  end
end

class CreateContacts < ActiveRecord::Migration
  def up
    execute <<-END
    CREATE TABLE contacts (
      account_id bigint(20) NOT NULL,
      contact_id bigint(16) NOT NULL,
      created_at datetime not null,
      updated_at datetime not null,
      name varchar(255),
      PRIMARY KEY (account_id, contact_id)
    )
    END
  end
end

class AddSubjectToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :subject, :string
  end
end

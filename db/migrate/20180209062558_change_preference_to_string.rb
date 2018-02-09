class ChangePreferenceToString < ActiveRecord::Migration[5.1]
  def change
     change_column :contacts, :preference, :string
  end
end

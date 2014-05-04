class AddBannedUserField < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :banned, default: false
    end
  end
end

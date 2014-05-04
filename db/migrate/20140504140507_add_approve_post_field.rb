class AddApprovePostField < ActiveRecord::Migration
  change_table :posts do |t|
    t.boolean :approved, default: true
  end
end

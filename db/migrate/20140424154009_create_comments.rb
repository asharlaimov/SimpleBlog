class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :blog, index: true

      t.timestamps
    end
  end
end

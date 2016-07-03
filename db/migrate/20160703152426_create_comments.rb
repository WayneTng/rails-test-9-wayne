class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message
      t.integer :parent_id, index: true
      t.references :user, index: true
      t.timestamp null: true
    end
  end
end

class CreateUserShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_shoes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shoe, null: false, foreign_key: true
      t.string :comments

      t.timestamps
    end
  end
end

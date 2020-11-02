class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :score
      t.integer :time
      t.integer :sanitizer_collected
      t.integer :tp_collected

      t.timestamps
    end
  end
end

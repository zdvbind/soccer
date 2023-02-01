class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :number, null: false

      t.timestamps
    end
  end
end

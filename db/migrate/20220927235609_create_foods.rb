class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string    :title, null: false
      t.string    :money, null: false
      t.text      :concept, null: false
      t.integer   :genre_id, null: false
      t.timestamps
    end
  end
end

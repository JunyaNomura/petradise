class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :breed
      t.references :user, foreign_key: true
      t.text :description
      acts_as_taggable_on :skills, :interests
      t.timestamps
    end
  end
end

class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :trainer_id
      t.integer :pokedex_id
      t.string :name
      t.string :pokemon_type
      t.integer :height
      t.integer :weight
      t.string :sprite_front
      t.string :sprite_back
      t.timestamps
    end
  end
end

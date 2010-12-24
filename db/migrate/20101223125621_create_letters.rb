class CreateLetters < ActiveRecord::Migration
  def self.up
    create_table :letters do |t|
      t.text :content
      t.string :recipient
      t.string :province
      t.string :address
      t.string :postcode
      t.datetime :published_at
      t.timestamps
    end
  end

  def self.down
    drop_table :letters
  end
end

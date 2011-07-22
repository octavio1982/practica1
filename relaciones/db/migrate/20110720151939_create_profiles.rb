class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end

class FixPet < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :pets, :date, :birth
  end
end

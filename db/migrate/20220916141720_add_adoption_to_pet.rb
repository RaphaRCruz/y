class AddAdoptionToPet < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :adoption, :boolean, default: false
  end
end

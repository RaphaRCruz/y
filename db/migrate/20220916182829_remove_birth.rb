class RemoveBirth < ActiveRecord::Migration[6.0]
  def change
    remove_column :pets, :birth, :datetime
  end
end

class AddBirth < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :birth, :date
  end
end

class AddProtainTypeToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :protein_type, :string
  end
end

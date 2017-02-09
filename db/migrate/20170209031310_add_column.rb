class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column(:tales, :image, :string)
  end
end

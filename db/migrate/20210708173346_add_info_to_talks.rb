class AddInfoToTalks < ActiveRecord::Migration[6.0]
  def change
    add_column :talks, :info, :string
  end
end

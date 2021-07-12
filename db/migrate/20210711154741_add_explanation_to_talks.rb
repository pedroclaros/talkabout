class AddExplanationToTalks < ActiveRecord::Migration[6.0]
  def change
    add_column :talks, :explanation, :text
  end
end

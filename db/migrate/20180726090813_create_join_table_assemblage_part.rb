class CreateJoinTableAssemblagePart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblages, :parts do |t|
      t.index [:assemblage_id, :part_id]
      t.index [:part_id, :assemblage_id]
    end
  end
end

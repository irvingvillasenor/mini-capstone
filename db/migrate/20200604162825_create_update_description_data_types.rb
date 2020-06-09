class CreateUpdateDescriptionDataTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :update_description_data_types do |t|

      t.timestamps
    end
  end
end

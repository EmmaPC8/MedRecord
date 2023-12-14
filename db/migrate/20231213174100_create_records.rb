class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :name
      t.string :course
      t.string :allergy
      t.boolean :medication
      t.string :title

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateRecords < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
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

class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :type
      t.text :details
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end

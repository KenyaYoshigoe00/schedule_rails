class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.string :memo
      t.boolean :all_day

      t.timestamps
    end
  end
end

class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :category_id
      t.integer :small_category_id
      t.integer :time
      t.integer :amount_id
      t.integer :project_type_id
      t.string :title
      t.date :end_date
      t.text :contents
      t.string :tool
      t.string :c_name
      t.string :c_number
      t.string :c_email

      t.timestamps
    end
  end
end

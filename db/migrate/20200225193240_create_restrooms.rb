class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.string :business_name, null: false
      t.string :address, null: false
      t.string :sanitation, null: false
      t.string :restroom_image, null: false
      t.boolean :payment?, null: false
      t.boolean :paying_customer?, null: false
      t.boolean :employee_only?, null: false
      t.boolean :key_access?, null: false
      t.boolean :handicap_stall?, null: false
      t.timestamps
    end
  end
end

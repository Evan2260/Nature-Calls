class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.string :business_name, null: false
      t.string :address, null: false
      t.string :sanitation, null: false
      t.string :restroom_image, null: false
      t.boolean :payment?
      t.boolean :paying_customer?
      t.boolean :employee_only?
      t.boolean :key_access?
      t.boolean :handicap_stall?
      t.timestamps
    end
  end
end

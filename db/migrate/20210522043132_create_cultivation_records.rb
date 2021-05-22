class CreateCultivationRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :cultivation_records do |t|
      t.float :soil_humidity, null: false, comment: '土壌湿度'

      t.timestamps
    end
  end
end

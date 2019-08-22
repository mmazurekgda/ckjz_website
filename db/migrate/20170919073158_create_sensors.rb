class CreateSensors < ActiveRecord::Migration[5.0]

  def up
    create_table :sensors do |t|
      t.string :name
      t.boolean :closed, default: 0
      t.timestamps
    end
    Sensor.new(name: 'male').save!
    Sensor.new(name: 'female').save!
  end

  def down
    drop_table :sensors
  end

end

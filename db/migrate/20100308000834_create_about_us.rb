class CreateAboutUs < ActiveRecord::Migration
  def self.up
    create_table :about_us do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :about_us
  end
end

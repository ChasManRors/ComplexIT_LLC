class CreateServicesPages < ActiveRecord::Migration
  def self.up
    create_table :services_pages do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :services_pages
  end
end

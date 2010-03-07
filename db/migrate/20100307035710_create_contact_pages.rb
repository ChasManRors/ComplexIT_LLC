class CreateContactPages < ActiveRecord::Migration
  def self.up
    create_table :contact_pages do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_pages
  end
end

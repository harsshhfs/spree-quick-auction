class CreateAuctions < ActiveRecord::Migration
  def self.up
    add_column :products, :available_off, :datetime, :null => false, :default => Time.now + 1.day
    add_column :products, :step, :integer, :null => false, :default => 1
    remove_column :products, :count_on_hand
    add_column :products, :count_on_hand, :integer, :null => false, :default => 0
    add_column :products, :sex, :boolean, :null => false, :default => true
  end

  def self.down
    remove_column :products, :available_off
    remove_column :products, :step
    remove_column :products, :count_on_hand
  end
end

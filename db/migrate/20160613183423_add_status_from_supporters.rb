class AddStatusFromSupporters < ActiveRecord::Migration
  def change
    add_column :supporters, :status, :boolean
  end
end

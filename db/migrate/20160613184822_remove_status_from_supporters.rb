class RemoveStatusFromSupporters < ActiveRecord::Migration
  def change
    remove_column :supporters, :status, :boolean
  end
end

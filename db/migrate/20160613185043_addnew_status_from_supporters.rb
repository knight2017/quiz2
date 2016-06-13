class AddnewStatusFromSupporters < ActiveRecord::Migration
  def change
    add_column :supporters, :status, :string
    
  end
end

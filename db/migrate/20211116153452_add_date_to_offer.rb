class AddDateToOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :date, :date
  end
end

class AddDateToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column(:posts, :date, :datetime)
  end
end

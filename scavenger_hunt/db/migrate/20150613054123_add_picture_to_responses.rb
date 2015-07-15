class AddPictureToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :picture, :string
  end
end

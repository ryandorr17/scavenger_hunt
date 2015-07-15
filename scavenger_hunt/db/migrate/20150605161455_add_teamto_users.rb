class AddTeamtoUsers < ActiveRecord::Migration
  def change
    add_column :users, :team, :string
    add_column :users, :spectator, :boolean, default: false
  end
end

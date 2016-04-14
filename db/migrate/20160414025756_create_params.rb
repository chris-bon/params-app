class CreateParams < ActiveRecord::Migration
  def change
    create_table :params do |t|
      t.string :param_1
      t.string :param_2
      t.string :param_3

      t.timestamps null: false
    end
  end
end

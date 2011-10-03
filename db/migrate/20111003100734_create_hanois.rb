class CreateHanois < ActiveRecord::Migration
  def change
    create_table :hanois do |t|

      t.timestamps
    end
  end
end

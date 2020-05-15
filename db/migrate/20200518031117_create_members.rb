class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :englishName

      t.timestamps
    end
  end
end

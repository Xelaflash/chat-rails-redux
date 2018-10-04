class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.reference :user
      t.reference :channel

      t.timestamps
    end
  end
end

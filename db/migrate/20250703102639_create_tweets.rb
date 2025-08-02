class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :about
      t.text :point

      t.timestamps
    end
  end
end

class CreatePalindromes < ActiveRecord::Migration
  def change
    create_table :palindromes do |t|
      t.string :input
      t.timestamps
    end
  end
end

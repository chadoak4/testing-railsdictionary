class AddSentenceToDefinitions < ActiveRecord::Migration
  def change
    add_column :definitions, :sentence, :string
  end
end

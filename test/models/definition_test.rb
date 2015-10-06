require 'test_helper'

class DefinitionTest < ActiveSupport::TestCase


  test "definitions without a word/meaning are invalid" do
     definition = Definition.new

     refute definition.valid?
   end

  test "books must have a title/meaning to be valid" do
    definition = Definition.new(word: "meow",meaning:"cat talk")

    assert definition.valid?, "Definitions without a word should not be valid"
  end


  test "Words whose length is 16 characters or more should be considered fancy" do
      definition = Definition.new(word: "mynameischadoakleylololol")

      assert definition.fancy?, "A 16 character word should be a fancy word"
  end

end

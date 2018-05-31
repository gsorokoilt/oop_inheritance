require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

    def setup
      @linguist = Multilinguist.new
      @local_language = 'en'
      @current_lang = 'en'
    end

    def test_local_language_of_a_country
      language_used = @linguist.language_in('uk')
      assert_equal(language_used, @local_language)
    end



end

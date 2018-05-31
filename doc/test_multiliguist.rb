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
      language_of_us = @linguist.language_in('uk')
      assert_equal(language_of_us, @local_language)
    end



end

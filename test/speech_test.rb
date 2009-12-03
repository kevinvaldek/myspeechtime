require 'test/helper'

class SpeechTest < ActiveSupport::TestCase

  context "words" do
    setup do
      @speech = MySpeechTime::Speech.new("I   am  not a talker.")
    end

    should "split the text to an array of the words" do
      assert_equal %w(I am not a talker.), @speech.words
    end

    should "have the length of the total words" do
      assert_equal 5, @speech.words.length
    end
  end

end
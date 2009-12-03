require 'test/helper'

class DurationTest < ActiveSupport::TestCase

  context "initialize" do
    context "when passed a string as argument" do
      setup do
        @duration = MySpeechTime::Duration.new("Hi everybody, welcome to the carneval.")
      end

      should "create a new Speech" do
        assert_equal MySpeechTime::Speech, @duration.speech.class
      end

      should "set string argument as the speech text" do
        assert_equal "Hi everybody, welcome to the carneval.", @duration.speech.text
      end
    end

    context "when passed a Speech instance as argument" do
      setup do
        @speech = MySpeechTime::Speech.new("Hi everybody, welcome to the carneval.")
        @duration = MySpeechTime::Duration.new(@speech)
      end

      should "set the Speech instance as the speech" do
        assert_equal @speech, @duration.speech
      end
    end
  end

  context "minutes and pretty_time" do
    context "when WPM is 100" do
      setup do
        MySpeechTime.const_set(:WPM, 100)
      end

      context "and the amount of words is 100" do
        setup do
          text = ""; 100.times { text += "hello " }
          @duration = MySpeechTime::Duration.new(text)
        end

        should "have the duration of 1 minute" do
          assert_equal 1, @duration.minutes
        end

        should "have the pretty_time of 1 minute and 0 seconds" do
          assert_equal "1 minute, 0 seconds", @duration.pretty_time
        end
      end

      context "and the amount of words is 1567" do
        setup do
          text = ""; 1567.times { text += "hello " }
          @duration = MySpeechTime::Duration.new(text)
        end

        should "have the duration of 1 minute" do
          assert_equal 15.67, @duration.minutes
        end

        should "have the pretty_time of 1 minute and 0 seconds" do
          assert_equal "15 minutes, 40 seconds", @duration.pretty_time
        end
      end
    end
  end

end
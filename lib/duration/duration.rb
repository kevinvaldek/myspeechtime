module MySpeechTime
  class Duration

    attr_reader :speech

    def initialize(speech)
      @speech = speech.is_a?(Speech) ? speech : Speech.new(speech)
    end

    def minutes
      @minutes ||= @speech.words.length.to_f / MySpeechTime::WPM
    end

    def pretty_time
      floored_minutes = minutes.floor.to_i
      seconds = ((@minutes - floored_minutes) * 60).round.to_i
      "#{floored_minutes} #{floored_minutes == 1 ? 'minute' : 'minutes'}, #{seconds} #{seconds == 1 ? 'second' : 'seconds'}"
    end

  end
end
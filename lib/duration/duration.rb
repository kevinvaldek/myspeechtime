module MySpeechTime
  class Duration

    def initialize(speech)
      @speech = speech.is_a?(Speech) ? speech : Speech.new(speech)
    end

    # TODO
    def pretty_time
      "#{rand(10).to_i} minutes, #{rand(60).to_i} seconds"
    end
  end
end
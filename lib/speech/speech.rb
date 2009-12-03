module MySpeechTime
  class Speech

    attr_reader :text

    def initialize(text)
      @text = text
    end

    def length
      @text.length
    end

    def words
      @words ||= @text.split(/\s+/)
    end

  end
end
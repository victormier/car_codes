module CarCodes
  class Code
    include Definitions

    attr_reader :word

    def initialize(word = "")
      @word = word.upcase
      @category = CATEGORIES[word[0]]
      @type = TYPES[word[1]]
      @transmission = TRANSMISSIONS[word[2]]
      @fuel = FUEL[word[3]]
    end

    def to_human
      ensure_validation
      "#{category} - #{type} - #{transmission} - #{fuel}"
    end

    def category
      ensure_validation
      @category
    end

    def type
      ensure_validation
      @type
    end

    def transmission
      ensure_validation
      @transmission
    end

    def fuel
      ensure_validation
      @fuel
    end

    def valid?
      word.length == 4 &&
      @category &&
      @type &&
      @transmission &&
      @fuel
    end

    private

    def ensure_validation
      unless valid?
        raise ArgumentError, "Code is invalid"
      end
    end
  end
end

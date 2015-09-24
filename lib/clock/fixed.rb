module Clock
  class Fixed
    attr_reader :fixed_time

    def initialize(fixed_time)
      @fixed_time = fixed_time
    end

    def self.build(fixed_time)
      new fixed_time
    end

    def now
      fixed_time
    end

    def iso8601(time = nil, precision = nil)
      precision ||= Clock::ISO8601.precision
      fixed_time.iso8601(precision)
    end

    def parse(str)
      fixed_time
    end
  end
end

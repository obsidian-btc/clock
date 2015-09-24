describe Clock::Fixed do
  let(:now) { Time.parse("Jan 1 11:11:11 EDT 2000") }
  let(:clock) { Clock::Fixed.build now }

  context "Current Time" do
    specify "Returns fixed time" do
      expect(clock.now).to eq now
    end
  end

  context "ISO 8601" do
    let(:iso8601_now) { now.iso8601(3) }

    specify "Time represented as a sting" do
      expect(clock.iso8601).to eq(iso8601_now)
    end
  end

  context "Converting from a string representation" do
    let(:text_to_parse) { "Feb 2 12:12:12 UTC 2001" }

    specify "Is converted to the fixed date" do
      parsed_time = clock.parse text_to_parse
      expect(parsed_time).to eq now
    end
  end
end


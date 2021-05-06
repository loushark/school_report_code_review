require 'school_report'

describe SchoolReport do
  let(:test_report) { SchoolReport.new }

  it 'returns a string when a single green grade is input' do
    input = "Green"
    output = "Green: 1\nAmber: 0\n\Red: 0"
    expect(test_report.report(input)).to eq(output)
  end

  it 'returns a string when a single green grade is input' do
    input = "Amber"
    output = "Green: 0\nAmber: 1\n\Red: 0"
    expect(test_report.report(input)).to eq(output)
  end

  it 'returns a string when a single green grade is input' do
    input = "Red"
    output = "Green: 0\nAmber: 0\n\Red: 1"
    expect(test_report.report(input)).to eq(output)
  end

  it 'returns a string when two green grades are input' do
    input = "Green, Green"
    output = "Green: 2\nAmber: 0\n\Red: 0"
    expect(test_report.report(input)).to eq(output)
  end

  it 'returns a string when there are multiple different grades' do
    input = "Red, Green, Green, Amber, Green"
    output = "Green: 3\nAmber: 1\n\Red: 1"
    expect(test_report.report(input)).to eq(output)
  end

  it 'resets the counts' do
    expect(test_report).to respond_to(:reset_count)
  end
end

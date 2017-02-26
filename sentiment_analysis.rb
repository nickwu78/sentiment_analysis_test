require 'sentimental'

class Analysis
  def initialize
    @result = result
  end
  attr_accessor :result

  def analyse(text)
    @analyzer = Sentimental.new
    @analyzer.load_defaults
    @analyzer.threshold = 0.1
    @analyzer.sentiment(text)
  end
end

positive = Analysis.new
positive.analyse('I had a wonderful time')

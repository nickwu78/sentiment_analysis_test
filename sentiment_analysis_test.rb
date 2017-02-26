require 'test/unit'
require_relative 'sentiment_analysis'

class SentimentTest < Test::Unit::TestCase
  def test_positive_sentence_should_return_positve_sentiment
    positive = Analysis.new.analyse('I had a wonderful time')
    actual = positive
    expected = :positive
    message = "Positive sentences should return positive sentiment"
    assert_equal(expected, actual, message)
  end

  def test_negative_sentence_should_return_negative_sentiment
    negative = Analysis.new.analyse('The food was terrible, I felt horrible')
    actual = negative
    expected = :negative
    message = "Negative sentences should return negative sentiment"
    assert_equal(expected, actual, message)
  end
end

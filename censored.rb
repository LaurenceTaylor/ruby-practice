test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

result = test_tweets.map do |tweet|
  tweet.gsub(/sucks|bad|hate|foolish|danger to society/, "CENSORED")
end

print result
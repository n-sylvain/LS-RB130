def url?(text)
  !!text.match(/\Ahttps?:\/\/\S+\z/)
end

# or
# def url?(text)
# text.match?(/\Ahttps?:\/\/\S+\z/)
# end

url?('https://launchschool.com')     # -> true
url?('http://example.com')           # -> true
url?('https://example.com hello')    # -> false
url?('   https://example.com')       # -> false

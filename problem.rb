# Unique Four-Letter Sequences from a Dictionary - This Ruby program extracts unique four-letter sequences from words in a dictionary file.


# Method to extract four-letter sequences from a word
# this logic ensures words with number and special characters will not be skipped they are also passed to check if they contain any 4 letter uniq sequence from the word.
def extract_sequences(word)
  sequences = []
  word = word.downcase
  (0..word.length - 4).each do |i|
    seq = word[i, 4]
    sequences << seq if seq.match?(/[a-z]{4}/)
  end
  sequences
end

# Main logic to extract words from the dictionary file
sequences_hash = Hash.new { |h, k| h[k] = [] }

File.foreach('/home/vakilsearch/Bequick-project/dictionary.txt') do |line|
  word = line.strip
  next if word.empty? # Skip empty lines
  extract_sequences(word).each do |seq|
    sequences_hash[seq] << word
  end
end

# this code will Filter sequences that appear in exactly one word
unique_sequences = sequences_hash.select { |_, words| words.uniq.size == 1 }

# this code will write the results to the output files
File.write('sequences1.txt', unique_sequences.keys.join("\n"))
File.write('words1.txt', unique_sequences.values.flatten.join("\n"))

# this code will generates two output files:
#  sequences.txt   : Contains four-letter sequences that appear in exactly one word
#  words.txt       :      Lists the corresponding word for each sequence, in the same order

puts 'Output generated: sequences.txt and words.txt'


# Unit tests
require 'minitest/autorun'

class TestUniqueFourLetterSequences < Minitest::Test
  def test_extract_sequences
    assert_equal ['carr', 'arro', 'rrot', 'rots'], extract_sequences('carrots')
    assert_equal ['give'], extract_sequences('give')
    assert_equal [], extract_sequences('18th')
    assert_equal ['time'], extract_sequences('2time')
  end
end

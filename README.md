# Unique Four-Letter Sequences from a Dictionary

## Objective
This Ruby program extracts unique four-letter sequences from words in a dictionary file. It generates two output files:
- **sequences.txt**: Contains four-letter sequences that appear in exactly one word.
- **words.txt**: Lists the corresponding word for each sequence, in the same order.

## Requirements
- Sequences are case-insensitive.
- Numbers and special characters are retained.
- Words containing numbers or special characters are not skipped.
- Sequences must be exactly four characters long.

## How It Works
1. Reads words from `dictionary.txt` line by line.
2. Extracts all possible four-letter sequences from each word.
3. Retains sequences with at least one letter.
4. Stores sequences and the corresponding word in a hash.
5. Filters out sequences that appear in more than one word.
6. Writes the unique sequences and their corresponding words to `sequences.txt` and `words.txt` respectively.

## Example
Given the dictionary:
```
arrows
18th
carrots
give
me
Isn't
2time
```

The output will be:
```
sequences.txt    words.txt
carr             carrots
give             give
rots             carrots
rows             arrows
rrot             carrots
rrow             arrows
time             2time
```

## Running the Program
1. Ensure Ruby is installed on your system.
2. Place `dictionary.txt` in the same directory as the program.
3. Run the program using:
```sh
ruby your_program_name.rb
```
4. Check the output files: `sequences.txt` and `words.txt`.

## Running Unit Tests
Unit tests are written using Minitest. Run them using:
```sh
ruby your_program_name.rb
```
This will automatically execute the tests and display the results.

## Notes
- The program preserves numbers and special characters but includes a sequence only if it contains at least one letter.
- Empty lines in the dictionary are skipped.

## Contributions
Feel free to open issues or submit pull requests for improvements or bug fixes.

## License
This project is licensed under the MIT License.


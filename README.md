Just a place to iterate over some simple exercises, trying out different methods to solve them.

* [Anagrams](https://github.com/gwhilts/ruby_with_rich/#anagrams)
* [Largest Prime Factor](https://github.com/gwhilts/ruby_with_rich/#largest-prime-factor)
* [Ye Olde Fibonacci](https://github.com/gwhilts/ruby_with_rich/#ye-olde-fibonacci)
    * [Even Fibonacci Numbers](https://github.com/gwhilts/ruby_with_rich/#even-fibonacci-numbers)
    * [Fibonacci Digit Count](https://github.com/gwhilts/ruby_with_rich/#fibonacci-digit-count)
* [Roman Numerals](https://github.com/gwhilts/ruby_with_rich/#roman-numerals)
* [Word Clock](https://github.com/gwhilts/ruby_with_rich/#word-clock)
* [Palindrome Numbers](https://github.com/gwhilts/ruby_with_rich/#palindrome-numbers)
* [Largest Product in a Series](https://github.com/gwhilts/ruby_with_rich/#largest-product-in-a-series)
* [Fibonacci Digit Count](https://github.com/gwhilts/ruby_with_rich/#fibonacci-digit-count)
* [Collatz Sequence](https://github.com/gwhits/ruby_with_rich/#collatz-sequence)
* [Number Words](http://github.com/gwhilts/ruby_with_rich/#number-words)
* [Amicable Numbers](http://github.com/gwhilts/ruby_with_rich/#amicable-numbers)
* [Gilded Rose](http://github.com/gwhilts/ruby_with_rich/#gilded-rose)

----

### Project Set-up

A Github repository has been set up with tests for the exercises. To set-up the project:

- Clone the project:
    - `git clone git@github.com:gwhilts/ruby_with_rich.git ruby_exercises`
- Install gems:
    - `cd ruby_exercises`
    - `bundle install`

Each of the exercises has its own branch so that you can easily isolate work and
running tests. 

----

### Anagrams

**Exercise**

Create a class whose constructor will accept a set of words, then return an instance with a method, `#find_for(letters)`, that will return all the anagrams in its dictionary for the given group of letters.

**Example**

```ruby
anagrams = Anagrams.new( %w{ foo echo car baz rat chore bar art tar ochre } )

anagrams.find_for 'rat'
=> ['art', 'rat', 'tar']

anagrams.find_for 'chore'
=> ['chore', 'ochre']
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co anagrams`
- Run the test: `rake test`
- Make the test pass. ;-)

**Bonus One**

Ensure that the anagram dictionary only returns one instance of each word. (Commented out expectation in test.)

**Bonus Two**

Load the word list from [this file](https://dl.dropboxusercontent.com/u/2600520/katas/data/wordlist.txt) (~30k words)

How fast does it load? (Should be within a couple seconds.)

How fast does it find anagrams? (Should be a few milliseconds.)

----

### Largest Prime Factor

**Exercise**

Refine Fixnum to add a method that returns its largest factor which is also a prime number.

**Example**

```ruby
using PrimeFactors

10.largest_prime_factor
=> 5

161.largest_prime_factor
=> 23
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co prime_factors`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Ye Olde Fibonacci

**Exercise**

Write a function that calculates the N-th number of the Fibonacci sequence:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... ( (n-1) + (n-2) )

This is a good kata to repeat. There are a lot of different ways to solve this simple problem using iteration, recursion, a single method, multiple methods working together. How many ways can you find? Which way works best? Is one method faster than another? ... use less memory? ... break when looking very deep in the sequence (n > 1M)? Is the code more or less clear?

**Example**

```ruby
Fib.fib 6
=> 5

Fib.fib 11
=> 55

Fib.fib 10_000
=>  20793608237133498072112648988... (a very big number)
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co fib`
- Run the test: `rake test`
- Make the test pass. ;-)

### Even Fibonacci Numbers

**Exercise**

Write another function for your Fib class that returns the sum of the even numbers in the sequence that are less than or equal to a given limit.

**Example**

```ruby
Fib.sum_of_evens_to 20
=> 10
# 0, 1, 1, 2, 3, 5, 8, 13
# _, _, _, 2, _, _, 8, _
# 10

Fib.sum_of_evens_to 100
=> 44
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co fib`
- Open `test/fib_test.rb` and uncomment the block `describe 'Fib.sum_of_evens_to'`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Fibonacci Digit Count

**Exercise**

One of the problems from [Project Euler](https://projecteuler.net/problem=25), is to determine the index
of the first number in the Fibonacci sequence containing 1000 digits.

The exercise here is to add another method to your Fib class that will take a count, C, and quickly return the index of the sequence
that has at least C digits. It should be able to return the answer in far less than a second, even when searching
for numbers with 10,000 digits or more.


**Examples**

```ruby
Fib.index_where_digit_count 3
=> 12
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

Fib.index_where_digit_count 10000
=> 47847
# returns in ~ 0.1s
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co fib`
- Open `test/fib_test.rb` and uncomment the block `describe 'Fib.first_with_digit_count'`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Roman Numerals

**Exercise**

Write a function that converts numbers to their Roman Numeral equivalents.

**Example**

```ruby
rn = RomanNumerals.new
rn.romanize 42
=> "XLII"

rn.romanize 389
=> "CCCLXXXIX"

rn.romanize 3411
=> "MMMCDXI"
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co roman_numerals`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Word Clock

**Exercise**

Convert numerical times into text

Times should be rounded to the nearest five minutes, then described using the following words:

"It's", "about", "quarter", "twenty", "five", "ten", "half", "past", "to",
"one", "two", "three", "four", "six", "seven", "eight", "nine",
and "eleven", "twelve".

If the time is on the hour, the phrase should end with "o'clock".

**Examples**

```ruby
Clock.say 4, 25
=> "It's twenty five past four."

Clock.say 6, 50
=> "It's ten to seven."

Clock.say 12, 58
=> "It's about one o'clock."
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co word_clock`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Largest Product in a Series

**Exercise**

Given the string of 1000 digits below, find the largest number produced by multiplying sequential digits of a specified length

```
7316717653133062491922511967442657474235534919493496983520312774506326239578318
0169848018694788518438586156078911294949545950173795833195285320880551112540698
7471585238630507156932909632952274430435576689664895044524452316173185640309871
1121722383113622298934233803081353362766142828064444866452387493035890729629049
1560440772390713810515859307960866701724271218839987979087922749219016997208880
9377665727333001053367881220235421809751254540594752243525849077116705560136048
3958644670632441572215539753697817977846174064955149290862569321978468622482839
7224137565705605749026140797296865241453510047482166370484403199890008895243450
6585412275886668811642717147992444292823086346567481391912316282458617866458359
1245665294765456828489128831426076900422421902267105562632111110937054421750694
1658960408071984038509624554443629812309878799272442849091888458015616609791913
3875499200524063689912560717606058861164671094050775410022569831552000559357297
2571636269561882670428252483600823257530420752963450
```

**Examples**

```ruby
BigAssNumber.largest_product_of 2
=> 81
# 9 * 9 == 81

BigAssNumber.largest_product_of 4
=> 5832
# 9 * 9 * 8 * 9 == 5832

```

**Next Steps**

A test and skeleton class already exists in `test/big_ass_number_test.rb` and `lib/big_ass_number.rb` respectively.

The skeleton class has a String constant, `DIGITS`, and a method `largest_product_of(length)`. You just need to fill
in the method implementation.

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co big_number`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Triangle Number Factors

**Exercise**

_from [Project Euler Problem 12](https://projecteuler.net/problem=12)_

> The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

```
1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
```

The PE problem asks us to find the first number in the sequence that has 500 factors.

Implement a method that will take a positive integer and return the first number in the triangle sequence with at least that many factors.

For instance if we asked for the first triangle number with a factor count of 5, the answer should be 28:

| Tri. No.  | Factors            | Count |
| :-------- | :----------------- | :---- |
| 1         | 1                  | 1     |
| 3         | 1, 3               | 2     |
| 6         | 1, 2, 3, 6         | 4     |
| 10        | 1, 2, 5, 10        | 4     |
| 15        | 1, 3, 5, 15        | 4     |
| 21        | 1, 3, 7, 21        | 4     |
| 28        | 1, 2, 4, 7, 14, 28 | 6     |


**Example**

```ruby
Triangles.first_with_factor_count 5
=> 28

Triangles.first_with_factor_count 10
=> 120

Triangles.first_with_factor_count 500
=> 73920
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co triangles`
- Run the test: `rake test`
- Make the first test pass
- Uncomment the second test
- Make the second test pass

----

### Number Words

**Exercise**

[Project Euler problem 17](https://projecteuler.net/problem=17) asks us to
convert all the numbers from 1 to 1000 to English phrases, then count up all
the letters.

To solve the problem, create a class with two methods: one that will convert
any number (up to at least 9999) to an English phrase, and a second that will
return the letter count for any number or range of numbers (up to 9999).

The phrases should adhere to the British tradition of using the word "and" like so:

- 413  => "four hundred and thirteen"
- 2148 => "two thousand one hundred and forty eight"

The count should ignore spaces and other non-letter characters.

**Examples**

```ruby
NumberWords.say 916
=> "nine hundred and sixteen"

NumberWords.say 2400
=> "two thousand four hundred"

NumberWord.letter_count 16
=> 7

NumberWord.letter_count 1, 20
=> 112
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co number_words`
- Run the test: `rake test`
- Make the test pass. ;-)

---
### Amicable Numbers

**Exercise**

_From [Project Euler, Problem 21](https://projecteuler.net/problem=21)_

> Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
> If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
>
> For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
> The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
>
> Evaluate the sum of all the amicable numbers under 10000.

To solve this problem let's create a class with two public methods: One that will
return the unique pairs of amicable numbers up to a given limit, and another that
will return the sum of all the amicable numbers up to a limit.

**Examples**

```ruby
AmicableNumbers.pairs_to 300
=> [[220, 284]]

AmicableNumbers.pairs_to 2000
=> [[220, 284], [1184, 1210]]

AmicableNumbers.sum_to 300
=> 504

AmicableNumbers.sum_to 2000
=> 2898
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co amicable`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Palindrome Numbers

**Exercise**

Find the largest palindrome number created by the product of two numbers less than or equal to a given limit

**Examples**

```ruby
PalindromeNumbers.find_largest_product(99)
=> 9009
# 99 * 91

PalindromeNumbers.find_largest_product(999)
=> 906609
# 993 * 913
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co palidrome`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Collatz Sequence

**Exercise**

[Project Euler problem 14](https://projecteuler.net/problem=14) asks us to find the starting number under
1,000,000 that creates the longest Collatz chain.

The sequence begins with a number n, then continues with n/2 if is even, or (3n + 1) if n is odd. The rule
is repeated until n reaches one. (It is assumed that it will always reach 1.)

To solve the Project Euler problem, let's write a class with a method that will return the Collatz sequence
beginning with any given positive number. Then add a method that returns the starting number and length of
the longest chain that begins with a number less than or equal to a given limit.

**Examples**

```ruby
Collatz.sequence_from 13
=> [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]

Collatz.sequence_from 6
=> [6, 3, 10, 5, 16, 8, 4, 2, 1]

Collatz.longest_under 8
=> { start: 7, length: 17 }

Collatz.longest_under 2000
=> { start: 1161, length: 182 }
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co collatz`
- Run the test: `rake test`
- Make the test pass. ;-)

----

### Gilded Rose

**Exercise**

Refactor the `GildedRose` so that you easily add code to support the new requirement described below:

> **Original Description of the Gilded Rose**
>
> Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a prominent city 
> run by a friendly innkeeper named Allison. We also buy and sell only the finest goods. Unfortunately, our goods 
> are constantly degrading in quality as they approach their sell by date. We have a system in place that updates 
> our inventory for us. It was developed by a no-nonsense type named Leeroy, who has moved on to new adventures. 
> Your task is to add the new feature to our system so that we can begin selling a new category of items. First an 
> introduction to our system:
> 
> All items have a Days Remaining value which denotes the number of days we have to sell the item
> All items have a Quality value which denotes how valuable the item is
> At the end of each day our system lowers both values for every item
> Pretty simple, right? Well this is where it gets interesting:
> 
> Once the sell by date has passed, Quality degrades twice as fast
> The Quality of an item is never negative
> "Aged Brie" actually increases in Quality the older it gets
> The Quality of an item is never more than 50
> "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
> "Backstage passes", like aged brie, increases in Quality as it's Days Remaining value approaches; Quality increases by 2
> when there are 10 days or less and by 3 when there are 5 days or less but Quality drops to 0 after the concert
> We have recently signed a supplier of conjured items. This requires an update to our system:
> 
> "Conjured" items degrade in Quality twice as fast as normal items.
> 
> Just for clarification, an item can never have its Quality increase above 50, however "Sulfuras" is a legendary
> item and as such its Quality is 80 and it never alters.


**Note**

The code here is based on the version Sandi Metz used in her talk,
"All the Little Things". It is slightly different than Jim Weirich's
version (itself a variation of a C# example). Jim used an unbound method,
`update_quality(item)` that took a Struct with three attributes: a `name`,
a `quality` metric, and a `sell_in` value representing the number of
days remaining before the item should be sold. In Sandi's version, the
method and the attributes belong to instances of a `GildedRose` class 
(before refactoring). In both versions the `update_quality` method
(which Sandi call `tick`) is fifty or so lines of tangled, nested if
statements, that beg to be refactored into something more manageable.

I've also implemented the test Jim included with his version, adjusted
to accommodate using the GildedRose class, and ported from somewhat
dated rspec-given code to minitest-spec.  All the tests for the 
existing code is passing. The tests for the new "Conjured Item" code is
set to skip, so we can refactor "in the green" before adding it.

**Examples**

```ruby

item = GildedRose.new("Free Range Platypus Eggs", 10, 6)
=> #<GildedRose:0x007ff34d93b640 @days_remaining=6, @name="Free Range Platypus Eggs", @quality=10>

item.update_quality

item.days_remaining
=> 5

item.quality
=> 9


tix = GildedRose.new("Backstage pass to Elvis Costello show", 39, 1)
=> #<GildedRose:0x007ff34da0ba98 @days_remaining=2, @name="Backstage pass to Elvis Costello show", @quality=40>

tix.update_quality

tix.days_remaining
=> 0

tix.quality
=> 42

tix.update_quality

tix.days_remaining
=> -1

tix.quality
=> 0
```

**Next Steps**

- [Set up the project](http://github.com/gwhilts/ruby_with_rich/#project-set-up), if you haven't already done so.
- Navigate to the project directory
- Pull the latest updates, then switch to the exercise branch
    - `git pull --all; git co gilded_rose`
- Run the test: `rake test`
- Refactor the GildedRose class to better accommodate adding new features
- Add support for "Conjured Items"
- Removed the "skip" directive from the test
- Make the test pass. ;-)

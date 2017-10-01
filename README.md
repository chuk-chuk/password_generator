## Password Generator

**Requirements**

- Create a password generator that, in a language of your choice, will create a secure password
- The password generator should have the following signature:

```String generatePassword(int length, boolean uppercase, boolean lowercase, boolean number, boolean special)```
- Length is the length of the returned string
- Uppercase is whether to include uppercase characters A - Z
- Lowercase is whether to include lowercase characters a - z
- Number is whether to include 0 – 9
- Special is whether to include the following keyboard characters !$%&*@^
- Raise an error if the rules given can never be valid.
- The solution should be self-contained with no dependencies on external libraries/services that could generate a password

**Instructions**

Navigate to the directory to install:

```
git@github.com:chuk-chuk/password_generator.git
cd password_generator
```
Make sure all dependencies in your Gemfile are available to your application and run tests:

```
bundle install
rspec
```
Open terminal or another REPL, type IRB, then run the following commands:
```
require './lib/generator.rb'
generator = Generator.new(10, true, true, true, false)
generator.generate_password(10, true, true, true, false)
```
Example of output:
```
"M6SleynU4r"
```
**Implementation**

Application is written in Ruby and tested with a testing framework Rspec, aiming for 100% coverage.

Errors will be raise in the following cases:
1)wrong input type for length(cannot be other than integer); 2)minimum length of 2 symbols.

User can select a length of the password and type of characters to include for the generation of the password.

**Issues**

I have encountered some problems implementing a validation of minimum number of character types, therefore the application can not raise an error when no types "true" entered (an empty string will be generated instead).

While designing the application I have considered a few ways of implementing the logic, one of them was a way of creating a module that will keep all my data, and default options to 'true' or 'false', however taking this approach would not let me keep with the test requirements to have the specific signature used.

To improve my code even further I would need to raise more errors: to check a data types for each parameters and include validation to check maximum password length. I could also try increase test coverage to 100%.  

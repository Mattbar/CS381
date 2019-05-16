# CS381 Random Password Generator
## Created by Mackenzie Hatfield and Matt Barnes
This project demonstrates creating a random password generator using Elixir, ML, and Ruby


### Elixir
To run the version of the password generator:
1. Compile the password.ex file:  
   ```$ elixirc password.ex```
2. Once the .beam file is generated, start the elixir shell:  
   ```$ iex```
3. From the elixir shell you can now execute the generate method from the password module:  
   ```iex> Password.generate(16)```

### Ruby
To run the Ruby version of the password generator (assumming the user has Ruby installed):
1. Navigate to the Ruby directory:  
```$ cd Ruby/```
2. Execute the main.rb file:  
```$ ruby main.rb```

#### Overview
All three version of the program essentially accomplish the same thing; generating a random password of a certain length
specified by the user when calling the function. The Elixir version accomplishes this by first creating a list that is in the range
from 33 to 126 (both inclusive). This is due to this being the range of printable ascii characters. Elixir also has an
advantage here in the way it handles what are called 'charlists'. In Elixir the list: ```[65, 65, 65]``` is essentialy
the same thing as 'AAA' and can easily be converted to a string. This was the basis used to generate random characters. By creating
the list of all printable ascii codes and randomly selecting from it and putting them in a list, and then converting it to a string, a random string of characters is generated each time the generate method is called. 

The Ruby version of the program is basically taking the same approach except this version contains some added features. The user has
the ability to pass in a string of characters that should be restricted from a valid password, along with a string of characters that
will be randomly selected from to replace "illegal" characters should they be contained in the generated password.

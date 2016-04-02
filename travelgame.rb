def welcome
  puts "You've just spent 24 hours straight writing code."
  puts "You need a break to say the least."
  puts "You decide you want to go somewhere."
  where_to
end

def where_to
  puts "Where should you go?"
  puts "Europe, Caribbean, US? "
  location = gets.upcase.chomp
  case location
  when "EUROPE"
    puts "Nice! Pick a city: Barcelona, Istanbul, or Rome? "
    location = gets.upcase.chomp
    destination(location)
  when "CARIBBEAN"
    puts "Time to catch some rays! Pick a place: "
    puts "Jamaica, Barbados, or St. Martin? "
    location = gets.upcase.chomp
    destination(location)
  when"US"
    puts "America the beautiful!! Pick a city: "
    puts "NYC, Chicago, or New Orleans? "
    location = gets.upcase.chomp
    destination(location)
  else
    puts "Oops! Not an option."
    where_to
  end
end

def destination(location)
  puts "So you picked a destination. #{location}, here you come!!"
  puts "Suddenly, you remember you're broke because you spent all your money on Wyncode."
  hello(location)
end

def hello(location)
puts """Should you:
      a: head to the casino with your last $5
      b: Sell your spouse on the black market,or
      c: head to Scarlett's for amateur night?"""
funding = gets.downcase.chomp
profit(funding, location)
end


def profit(money, location)
      case money
          when "a"
            puts "Jackpot!!! How much did you earn?"
            money = gets.chomp.to_i
              if money < 500
                puts "That's it?! I'm afraid your gonna need more than that!!"
                hello(location)
              else
              genie(money, location)
            end
          when "b"
            puts "Geez, that's messed up! How much did you get?"
            money = gets.chomp.to_i
              if money < 500
                puts "That's it?! I'm afraid your gonna need more than that!!"
                hello(location)
              else
              genie(money, location)
            end
          when "c"
            puts "Bands will make her dance. How many ones did you count?"
            money = gets.chomp.to_i
              if money < 500
                puts "That's it?! I'm afraid your gonna need more than that!!"
                hello(location)
            else
            genie(money, location)
          end
          else
            puts "Sorry! Pick from the options above."
            hello(location)
          end
end

def genie(money, location)
# funding = gets.downcase.chomp
puts """ So now that you've got $#{money} dollars, you hop online to snag a
    last-minute flight.  As usual, you're distracted momentarily by Instagram
     where you see you have a new DM message.  You open the message to find a
     cryptic message asking you to 'Make a Wish'.  You delete it, regarding it
     as spam, only to receive the same message 10 seconds later.  You open it
     again to find a link to a website.  When you click the link, your computer
     starts to smoke and out pops a genie.  At first, you're afraid, but you can
     tell by the genie's demeanor that there's no reason to be.  The genie
     introduces himself as Zip and says that he can grant you 3 wishes.  As your
     first wish, you ask for the ability to move magically to any destination
     with the simple twitch of your nose.  'Your wish is my command', says the
     genie. You twitch your nose and are instantly transported to #{location}."""
     where_now
end


def where_now
puts """ What should you do first?
          a. Head to the nearest bar
          b. Start siteseeing
          c. Check into a hotel for some shut eye,
          since you've now been up 48 hours straight."""
       agenda = gets.downcase.chomp
      case agenda
      when "a"
        puts "Shots of Jame-o for everyone!"
        puts "You black out on the floor of the bathroom until the next morning."
        puts "Press Enter when you're ready to start your day."
        agenda = gets.downcase.chomp
        wishes
      when "b"
        puts "Let the selfie-stick shennanigans begin!"
        puts "Before you know it the whole day is gone"
        puts "You head to your hotel to get some sleep"
        puts "Press enter when you've had enough shut-eye."
        agenda = gets.downcase.chomp
        wishes
      when "c"
        puts "Do not disturb..."
        puts "You're out cold until the next morning."
        puts "Press Enter when you're ready to start your day."
        agenda = gets.downcase.chomp
        wishes
      else
        puts "I see you don't follow directions so well, pick from given choices."
        where_now
      end
end


def wishes
  puts " The next day, you decide you're ready for your second wish from your genie."
  puts " What should it be?
           a. To become a celebrity
           b. To be able to morphe into any animal at any time for the rest of your life
           c. To be able to multiply money with the wave of your hand"
  wish = gets.downcase.chomp
  case wish
  when "a"
    puts "You didn't say which celebrity! You are now Steve Harvey
    and you have just announced the WRONG 'Miss Universe'! Lucky you
    have one more wish...what's it gonna be?
      a. To be yourself, or
      b. to be another celebrity"
    last_wish = gets.downcase.chomp
  when "b"
    puts "What animal should you become first?
            a. a monkey
            b. a tiger
            c. a python"
    animal = gets.downcase.chomp
  when "c"
    puts "Good news is...you will in fact, be able to multiply money
    for the rest of your life, but not a dime of it can be spent by you or used in any way to
    benefit you. Sorry! Atleast you have another wish...pick one:
      a. a mansion on a private island
      b. another genie that will grant you three more wishes
      c. World Peace"
      last_wish2 = gets.downcase.chomp
  else "That wish cannot be granted at this time."
  end

  case animal
  when "a"
    puts "You eat a banana that's been injected with poision and die!"
  when "b"
    puts "You are hunted by poachers and killed for your fur."
  when "c"
    puts "You're not just any python. You're a Florida python. And guess what?
    It's the 2016 Python Challenge.  You are captured and killed."
  else
    "I don't think you'd make a good one of those!"
  end

  case last_wish
  when "a"
    puts "That's the best thing you can be. Now your life can go back to normal.
    And at least you get to keep your new abilities!"
  when "b"
    puts "You are now Donald Trump. You're rich, but your an imbecile. You lose!"
  else
    "Don't you get the rules YET?!"
  end

  case last_wish2
  when "a"
    puts "Nice! Enjoy the island life..."
  when "b"
    puts "Did you really think that was an option? Congratulations, you've wasted
    your last wish. You lose!"
  when "c"
    puts "How noble of you. As a result you will be made ruler of the world. Good luck!"
  end
end



welcome

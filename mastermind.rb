# Mastermind Game:
  # 12 Turns to guess a secret code
  # Clues for if the guess was close



    # Creates class
    # two players, computer and player
    # Gets input if the user wants to choose a random number or if the computer should
    # if user chooses to guess, Computer chooses random number
    # Gets input from user, makes sure it's a number
    # Returns whether the random number was higher or lower, as well as length (on first guess)
    # Giving 12 turns to guess it correct
    # If correct the return "You've guessed the random number"
    # else after 12 turns "Game over. Better luck next time!"

    # if user chooses computer to guess the number
    # Class so computer can't see the number and has to guess fairly
    # 12 rounds to guess, returning the guess of each round

    # at the end puts "Would you like to play again"
    # allowing user to restart



    def ask_user
      whos_guessing = gets.chomp.to_i
      puts "Who's guessing? You or the PC (Type 1 for You, 2 for PC)"
      if whos_guessing === 1
        rounds = 1
        while rounds < 12
          number = rand(300)
          guess = gets.chomp
          number2 = number.to_s

            if guess > number
                puts "You guessed #{guess} the number is greater than that " + "with #{number2.length} digit(s)"

            elsif guess < number
              puts "You guessed #{guess} the number is less than that " + "with a #{number2.length} digit(s) "

            elsif guess === number
              puts "Absolute madman, a monster among men. You have guessed the right number!"

            elsif rounds === 12 && guess != number
              puts "Unfortunately we must accept defeat today. You got this next time!" + "\n" + "Would you like to play again? (Yes or No"
              play_again = gets.chomp
              play_again2 = play_again.downcase
                if play_again2 === Yes
                  puts "Another try never hurt anyone, let's play again!"
                  rounds = 1
                  ask_user()
                end
            end
          end
      elsif whos_guessing === 2
        rounds = 1
        puts "What number (under 500) do you want the computer to try to guess?"
        number = gets.chomp.to_i
        while rounds < 12
          pc_guess = rand(500)
            if pc_guess != number
              puts "The computer guessed #{pc_guess} for this round"
            elsif pc_guess === number
              puts "Darn it, the computer guessed the number correctly"
            elsif rounds === 12 && pc_guess != number
              puts "You win! The computer couldn't guess your number in time"

        end
    end
  end

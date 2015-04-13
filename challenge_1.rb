# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator


def pmt(rate, nper, pv)
  # =========================================================
   #You shouldn't have to write or change code anywhere else.
    pmt = (rate*pv)/((1-(1+rate)**(-nper)))
  # =========================================================
end

  # Example usage of the method is below. Uncomment to test your pmt method,
  #   and once you have successfully defined it, re-comment them (before
  #   starting challenge_2.rb).
  # puts "Welcome to your fixed interest rate loan payment calculator."
  # puts "Please enter the annual interest rate (decimal form) of your loan."
  # rate = gets.chomp.to_f
  # puts "Please enter the term (in months) on your lease."
  # nper = gets.chomp.to_f
  # puts "Now please enter the principal value of your loan."
  # pv = gets.chomp.to_f
  # the_payment = pmt(0.0404/12, 60, 30000)
  # puts "Your monthly payment will be $#{the_payment.round(2)}."

# You should get $553.04.


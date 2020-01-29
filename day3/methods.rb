def foo(text)
  puts text
end

#foo "hello world"
#undef foo

def foo_return
  10
end

#x = foo_return
#puts x

def bar(par1, par2, par3 = "!", **kargs)
  puts par1 + " " + par2 + " " + par3
  puts args.each { |num| num + 1 }
end

student = {
    name: "Richard",
    age: 30
}

#bar "Hello", "World", "!", student

def withdrawal(par1, par2)
  puts "Sorry mate but did you really think you had $#{par1}? \n Try to get a job and come back when you found one!"
  sleep 1.0;
  atm_machine(par2)
end

def check_balance(par1)
  puts "You only have $3,- in your account"
  sleep 1.0;
  atm_machine(par1)
end

def deposit(par1, par2)
  puts "Sorry, we don't accept small amounts like #{par1}!"
  sleep 1.0;
  atm_machine(par2)
end

def rob_bank (par1)
  puts "Get ready #{par1.strip}!"
  sleep 0.5;
  puts "Rob The Bank In Progress..... "
  sleep 0.5;
  puts "Loading ammunition...."
  sleep 0.5;
  puts "Disable 911 services.... "
  sleep 0.5;
  puts "Escape vehicle in place...."
  sleep 0.5;
  puts " Blast that vault open!"
end

def atm_machine(name = nil)
  if !name
    puts "Please enter your name:"
    name = gets
  end
  puts "Welcome to Chase Bank USA #{name}"
  puts "Please select your option \n 1. Withdrawal \n 2. Check Balance \n 3. Deposit \n 4. Rob the Bank \n 5. Exit"
  option = gets.to_i

  if option === 1
    puts "How much would you like to withdraw?"
    number = gets.to_i
    withdrawal(number, name)
  elsif option === 2
    check_balance(name)
  elsif option === 3
    puts "How much would you like to deposit?"
    number = gets.to_i
    deposit(number, name)
  elsif option === 4
    rob_bank(name)
  elsif option === 5
    puts "Wait for it....."
    sleep 2.0
    puts "So lang MOOOOTTTTTHHHHEEERRRRFFFFFUUUUUUUUCCCCKKKKKKKAAAAAAAAAAAAAAAA.......!!!!!!!"
  end
end

atm_machine

#def foo (pa1, pa2, pa3, *args, pa4, **kwargs)
#  puts pa1, pa2, pa3
#  puts args
#  puts pa4
#  puts kwargs
#end

def foo (kwargs)
  #keys = kwargs.keys
  #values = kwargs.values
  #puts keys
  #puts values
  if kwargs.each do |key, value|
    if key == "name".to_sym && value == "Richard"
      puts("Great name #{value}")
      #puts key, value
    elsif key == "age".to_sym && value == 30
      puts("You're old mate, age: #{value}")
      #puts key, value
    else
      puts("Bummer no match")
      #puts key, value
    end
  end
  end
end

student = {
    name: "Richard",
    age: 30
}

#foo (student)


require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
laganga= Student.new("Laganga")
shangela= Student.new("Shangela")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
alyssa= Instructor.new("Alyssa Edwards")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
lip_sync_pass = laganga.add_boating_test("lip_syncing_101", "passed", alyssa)
lip_sync_fail = shangela.add_boating_test("lip_syncing_101", "failed", alyssa)
crashing = spongebob.add_boating_test("Crashing gentley", "pending", alyssa)
power_steering = patrick.add_boating_test("Power Steering 202", "pending", krabs)





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
binding.pry
0
 #leave this here to ensure binding.pry isn't the last line

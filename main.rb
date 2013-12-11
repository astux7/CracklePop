require_relative './lib/cracklepop'
#output data to file
def print_to_file
  File.open('first100.txt', "w") do |file|
    @result.each {|element| file.puts element }
  end
end
#creating array of result
def make_cracklepop
cp = CracklePop.new
1.upto(100) {|number|
  @result << cp.cracklepop(number)
}
end
#printin result to console
def print_to_console
  @result.each {|element| puts element}
end
#======== MAIN ==============
@result = []
make_cracklepop
print_to_file
print_to_console

 
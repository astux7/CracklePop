require_relative './lib/cracklepop'

def print_to_file
  File.open('first100.txt', "w") do |file|
    @result.each do |element|
      file.puts element
    end
  end
end

cp = CracklePop.new
@result = []
1.upto(100) {|number|
  @result << cp.cracklepop(number)
}
print_to_file

 
module Password
  def self.generate(length = 8, restricted = "", replace = "")
    char_range = *(33..126)
    password = []
    (1..length).each do |val|
      selected = char_range.sample(1).first.chr
      if restricted.split("").include?(selected)
        password << replace.split("").sample(1).first.chr
      else
        password << selected
      end
    end
    password.join("")
  end

end

def test_generate()
  uppers = *("A".."Z")
  uppers = uppers.join("")
  puts "Password of length 16 with all characters: #{Password.generate(16)}"
  puts "Password of length 8 with no uppercase characters replacing with '!': #{Password.generate(8, uppers, "!")} "
end

test_generate()

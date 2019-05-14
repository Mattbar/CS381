module Password
  # include Integer
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

puts Password.generate(10, "\\,.%$=?_()>{}/!", "ABC")
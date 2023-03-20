# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :string

    def initialize(string)
        @string = string
    end

    def parse
        e = @string.split(/[, ]/)
        f = e.reject{|element| element.empty?}
        z = f.uniq
    end

end

puts EmailAddressParser.new("john@doe.com, person@somewhere.org").parse

puts EmailAddressParser.new("john@doe.com person@somewhere.org").parse
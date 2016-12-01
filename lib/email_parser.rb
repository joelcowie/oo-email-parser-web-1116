# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse #this solution is terrible but it works and i'm behind on labs
    parsed_emails = @emails.split("")
    useless_variable = parsed_emails.delete(",")
    parsed_emails2 = parsed_emails.join
    return parsed_emails2.split(" ").uniq
  end


end

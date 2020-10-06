class EmailAddressParser 
    attr_accessor :name, :csv_emails
    
    def initialize(csv_emails)
      @csv_emails = csv_emails
    end 
  
    def parse 
      csv_emails.split(/\s*,\s*/)
    end 
  
    def parse 
      csv_emails.split.collect do |address|
        address.split(',') 
      end
      .flatten.uniq 
    end 
  end 
  
  emails1 = "john@doe.com, person@somewhere.org"
  parser1 = EmailAddressParser.new(emails1)
  parser1.parse 
  
  emails2 = "john@doe.com, person@somewhere.org"
  parser2 = EmailAddressParser.new(emails2)
  parser2.parse
  
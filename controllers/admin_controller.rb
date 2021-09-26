require "tty-prompt"

    

  class Admin
    def initialize (adminName = "samiul", adminPassword = "admin")
        @@admin = adminName 
        @@adminPassword = adminPassword 
    end


    def self.index
  
        puts "What is your name?"
        answer=gets.chomp.downcase
        if answer == @@admin
            puts "correct"
        else 
            puts "incorrect username"
        end

    end

    def self.print 
    p    @@admin 
    p @@adminPassword
    end 
  end  


require "tty-prompt"
require "./utils/utils"
require "./views/admin/admin"

  class Admin
    def initialize (adminName = "root", adminPassword = "admin")
        @@admin = adminName 
        @@adminPassword = adminPassword 
    end

    def self.index
        
        puts "What is your name?"
        answer=gets.chomp.downcase
        if answer == @@admin
         
            Admin_view::menu
              
        else 
            puts "You are not Admin!!!"
        end
    end

    def self.admin_choice

        
    end
  
  end  


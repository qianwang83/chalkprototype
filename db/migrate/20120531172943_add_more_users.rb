class AddMoreUsers < ActiveRecord::Migration
  def up
    User.create!(:username => "principal",:first_name => "Administrator:",
    :last_name => "Principal", :school_name => "Chalk",
    :password => "chalk", :password_confirmation => "chalk", :email => "principal@chalk.com" )

    User.create!(:username => "district_administrator",:first_name => "Administrator:",
    :last_name => "District", :school_name => "Chalk",
    :password => "chalk", :password_confirmation => "chalk", :email => "district_admin@chalk.com" )
    
    User.create!(:username => "new_teacher",:first_name => "New",
    :last_name => "Teacher", :school_name => "Chalk",
    :password => "chalk", :password_confirmation => "chalk", :email => "new_teacher@chalk.com" )
    
    User.create!(:username => "qian.wang",:first_name => "Qian",
    :last_name => "Wang", :school_name => "Stanford University",
    :password => "chalk", :password_confirmation => "chalk", :email => "firedove83@gmail.com" )

    User.create!(:username => "coulton.bunney",:first_name => "Coulton",
    :last_name => "Bunney", :school_name => "Stanford University",
    :password => "chalk", :password_confirmation => "chalk", :email => "cabunney@stanford.edu" )

    User.create!(:username => "sarah.chou",:first_name => "Sarah",
    :last_name => "Chou", :school_name => "Stanford University",
    :password => "chalk", :password_confirmation => "chalk", :email => "chou.sa@stanford.edu" )
    
    User.create!(:username => "josh.stern",:first_name => "Josh",
    :last_name => "Stern", :school_name => "St. Paul's Episcopal School",
    :password => "chalk", :password_confirmation => "chalk", :email => "stern.josh@gmail.com" )
    
    User.create!(:username => "dave.villafana",:first_name => "Dave",
    :last_name => "Villafana", :school_name => "CUSDK8",
    :password => "chalk", :password_confirmation => "chalk", :email => "villafana_dave@cusdk8.org" )
    
    User.create!(:username => "jackie.summerfield",:first_name => "Jackie",
    :last_name => "Summerfield", :school_name => "CUSDK8",
    :password => "chalk", :password_confirmation => "chalk", :email => "summerfield_jackie@cusdk8.org" )

    User.create!(:username => "michelle.weiss",:first_name => "Michelle",
     :last_name => "Weiss", :school_name => "CUSDK8",
     :password => "chalk", :password_confirmation => "chalk", :email => "weiss_michelle@cusdk8.org" )
     
    User.create!(:username => "rita.cole",:first_name => "Rita",
      :last_name => "Cole", :school_name => "CUSDK8",
      :password => "chalk", :password_confirmation => "chalk", :email => "cole_rita@cusdk8.org" )
      
    User.create!(:username => "crislyn.lawson",:first_name => "Crislyn",
       :last_name => "Lawson", :school_name => "CUSDK8",
       :password => "chalk", :password_confirmation => "chalk", :email => "lawson_crislyn@cusdk8.org" )
    
    User.create!(:username => "stuart.rosenberg",:first_name => "Stuart",
        :last_name => "Rosenberg", :school_name => "CUSDK8",
        :password => "chalk", :password_confirmation => "chalk", :email => "rosenberg_stuart@cusdk8.org" )
    
    User.create!(:username => "jennifer.auten",:first_name => "Jennifer",
         :last_name => "Auten", :school_name => "CUSDK8",
         :password => "chalk", :password_confirmation => "chalk", :email => "auten_jennifer@cusdk8.org" )  
    
    User.create!(:username => "christine.fairless",:first_name => "Christine",
              :last_name => "Fairless", :school_name => "CUSDK8",
              :password => "chalk", :password_confirmation => "chalk", :email => "cfairless@spes.org" )  
     
    #1 for principal #2 for district admin #3 new teacher
    
    Question.create!(:description => "What area of expertise would you most like to develop next school year to help meet your goals?", 
    :user_id => "1", :category_id => "1") 


    Question.create!(:description => "What is your favorite training or form of professional development that you have taken and what did you like about it?", 
    :user_id => "2",  :category_id => "1") 


    Question.create!(:description => "What supports and/or improvements would you like to see from your district/school system for this coming year?", 
    :user_id => "2",  :category_id => "1") 


    Question.create!(:description => "Are there any tools or methods you would like to see more of or like to try?", 
    :user_id => "1",  :category_id => "1") 

    Question.create!(:description => "Are there any processes that currently take up a lot of time but add little value to your work?", 
    :user_id => "2", :category_id => "1") 


    Question.create!(:description => "Do you have any tips for managing parent contact information and preparing for a difficult conversation with parents about their child?", 
    :user_id => "3", :category_id => "2") 

    Question.create!(:description => "Are there any good ways to deal with feeling overwhelmed and finding balance for my personal life ?", 
    :user_id => "3", :category_id => "2") 

    Question.create!(:description => "Any tips for facilitating meetings that stay on track and productive?", 
    :user_id => "3", :category_id => "2") 

    Question.create!(:description => "How should I best work with a colleague who seems very stuck in their way of doing things?", 
    :user_id => "3", :category_id => "2")
  end

  def down
  end
end

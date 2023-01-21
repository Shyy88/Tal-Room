class User < ApplicationRecord

    validates_uniqueness_of :username
# name as login
    def self.generate
      adjectives = ['Attractive', 'Charming', 'Wonderful', 'Effective', 'Flying', 'Gentle']
      nouns = ['Highway', 'Intern', 'Sherlock', 'King', 'Sensei']
      number = rand.to_s[2..4]
      username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
      create(username: username)
    end
  
  end

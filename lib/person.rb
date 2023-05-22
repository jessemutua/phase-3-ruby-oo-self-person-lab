class Person
    attr_reader :name, :bank_account
    
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
      @name = name
      @bank_account= bank_account
      self.happiness = happiness
      self.hygiene = hygiene
    end

    def bank_account=(balance)
        @bank_account = balance
      end
    
      def happiness
        @happiness
      end
  
    def happiness=(happiness)
     @happiness = happiness.clamp(0, 10)
    end
  
    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)
     
    end
  
    def hygiene
      @hygiene
    end

    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 
        if self.hygiene > 10
            self.hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
       "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic== 'politics'
             self.happiness -= 2
             friend.happiness -= 2
             "blah blah partisan blah lobbyist"
        elsif topic== 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            self.happiness += 0
            friend.happiness += 0
            "blah blah blah blah blah"
        end

    end

  end
  
  fido = Person.new("Jesse")
  
  puts fido.bank_account
  puts fido.happiness
  
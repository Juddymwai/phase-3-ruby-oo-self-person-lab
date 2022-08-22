

require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize (name, bank_account=25, hygiene=8, happiness=8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
   
    def bank_account

    end


    def happiness
        if @happiness <0
            @happiness= 0
        elsif @happiness > 10
            @happiness= 10
        else
            @happiness= @happiness
        end

    end
    def hygiene
        if @hygiene <0
            @hygiene= 0
        elsif @hygiene > 10
            @hygiene= 10
        else
            @hygiene= @hygiene
        end
        # gives a range of 0-10 only
        # @hygiene.clamp
    end

    def clean?
        # if @hygiene >7
        #     true
        # else
        #     false
        # end 
        self.hygiene>7
    end
    def happy?
        self.happiness >7
    end

    def get_paid(amount)
        @bank_account += amount
         "all about the benjamins"

    end

    def take_bath
        self.hygiene +=4
      "♪ Rub-a-dub just relaxing in the tub ♫"  
    end

    def work_out
        self.happiness+=2
        self.hygiene -=3
      "♪ another one bites the dust ♫"  
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness += 3
      "Hi #{friend.name} It's #{self.name}. How are you?"  
    end

    def start_converstion(friend, topic)
        if topic =="politics"
            friend.happiness -=2
            self.happiness -=2

        "blah blah partisan blah lobbyist"
        elsif topic== "weather"
            friend.happiness +=1
            self.happiness +=1

            "blah blah sun blah rain"
        else
             "blah blah blah blah blah"
        end

    end
end
# person1= Person.new(name)
# puts person1.work_out
# person = Person.new("Brian")
# puts person.happiness

# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account, :topic

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @topic = topic
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene+4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene-3
        self.happiness = self.happiness+2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness = self.happiness+3
        person.happiness = person.happiness+3
        "Hi #{person.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(person, topic)
        if topic == "politics" 
            self.happiness = self.happiness-2
            person.happiness = person.happiness-2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            self.happiness = self.happiness+1
            person.happiness = person.happiness+1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end

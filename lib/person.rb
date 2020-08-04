require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        @hygiene > 7 ? true : false 
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        @happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic === "politics"
            @happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic === "weather"
            @happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return 'blah blah blah blah blah'
        end
    end
end

isabel = Person.new("isabel")

# binding.pry
0
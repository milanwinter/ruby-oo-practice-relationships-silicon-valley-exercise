class FundingRound

    @@all = []

    def self.all
        @@all
    end

    attr_reader :startup,:venture, :type, :investment

    def initialize(startup,venture,type,investment)
        @startup = startup 
        @venture = venture 
        @type = type 
        @investment = investment
        @@all << self
    end

end

class Startup


    @@all = []

    def self.all
        @@all
    end

    def self.find_by_founder(name)
        @@all.find {|startup| startup.founder == name}
    end

    def self.domains
        @@all.map{|startup| startup.domain}.uniq
    end

    # attr_accessor :name, :founder, :domain
    attr_reader :name,:founder,:domain

    def initialize (name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def sign_contract (venture_capitalist,amount,funding_type)
        FundingRound.new(self,venture_capitalist,funding_type,amount)
    end

    def startup_funding_rounds
        FundingRound.all.select {|fund| fund.startup == self}
    end

    def num_funding_rounds
        startup_funding_rounds.size
    end

    def total_funds
        startup_funding_rounds.map {|fund| fund.investment}.sum
    end


    def investors
        startup_funding_rounds.map {|fund| fund.venture}.uniq
    end

    def big_investors
            investors.select do |investor|
                VentureCapitalist.tres_commas_club.include?(investor)
            end
    end


end

class VentureCapitalist

    @@all = []

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.select {|capitalist| capitalist.total_worth > 1000000000}
    end


    attr_reader :name, :total_worth


    def initialize(name,total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def offer_contract (startup, amount,type)
        FundingRound.new(startup,self,type,amount)
    end

    def funding_rounds
        FundingRound.all.select {|fund| fund.venture == self}
    end

    def portfolio
       funding_rounds.map do |fund|
        fund.startup
       end.uniq
    end

    def biggest_investment
        funding_rounds.max_by {|fund| fund.investment}
    end

    def invested_helper
        FundingRound.all.select {|fund| fund.startup.domain == domain}
    end
    def invested(domain)
        FundingRound.all.select {|fund| fund.startup.domain == domain}.map do |fund|
            fund.investment
        end.sum
    end

end

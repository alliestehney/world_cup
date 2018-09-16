class Team
    attr_accessor :country, :eliminated, :players
    def initialize(country)
        @country = country
        @players = []
        @eliminated = false
    end

    def add_player(player)
        @players << player
        return @players
    end

    def eliminated?
        return @eliminated
    end

    def players_by_position(desired_position)
        @same_position = []
        @players.each do |player|
            @same_position << player.position == desired_position
        end
        return @same_position
    end
end
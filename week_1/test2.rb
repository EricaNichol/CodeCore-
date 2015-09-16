class GroupDivider
  def initialize(list_of_names, number_of_teams)
    @list_of_names = list_of_names.split(", ").shuffle
    @number_of_teams = number_of_teams
  end

  def split
    person_per_team = @list_of_names.count / @number_of_teams
    remainder = @list_of_names.count % @number_of_teams
    output = []
    @list_of_names.each_slice(person_per_team) do |x|
      output << x
    end
    for x in 0...remainder
      output[x] << output[-1][x]
    end
    output.pop
    output
  end
end

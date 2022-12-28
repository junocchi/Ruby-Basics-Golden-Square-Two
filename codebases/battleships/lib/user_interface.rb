class UserInterface
  def initialize(io, game)
    @io = io
    @game = game
  end

  def run
    show "Welcome to the game!"
    show "Set up your ships first."
    show "You have these ships remaining: #{ships_unplaced_message}"
    prompt_for_ship_placement
    show "This is your board now:"
    show format_board
  end

  private

  def show(message)
    @io.puts(message)
  end

  def prompt(message)
    @io.puts(message)
    return @io.gets.chomp
  end

  def ships_unplaced_message
    return @game.unplaced_ships.map do |ship|
      "#{ship.length}"
    end.join(", ")
  end

  def prompt_for_ship_placement
    ship_length = prompt "Which do you wish to place?"
    ship_orientation = prompt "Vertical or horizontal? [vh]"
    ship_row = prompt "Which row?"
    ship_col = prompt "Which column?"
    show "OK."
    @game.place_ship(
      length: ship_length.to_i,
      orientation: {"v" => :vertical, "h" => :horizontal}.fetch(ship_orientation),
      row: ship_row.to_i,
      col: ship_col.to_i
    )
  end

  def format_board
    return (1..@game.rows).map do |y|
      (1..@game.cols).map do |x|
        next "S" if @game.ship_at?(x, y)
        next "."
      end.join
    end.join("\n")
  end
end

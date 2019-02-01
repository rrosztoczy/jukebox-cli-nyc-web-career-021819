songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

#This method should accept a number or song name and play it
def play(songs_array)
  puts "Please enter a song name or number:"
  now_playing = gets.chomp
    if songs_array.include?(now_playing)
      puts "Playing #{now_playing}"
    elsif now_playing.to_i > 0 && now_playing.to_i <= songs_array.length
      puts "Playing #{songs_array[now_playing.to_i - 1]}"
    else puts "Invalid input, please try again"
    end
end

def list(songs_array)
  songs_array.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  response = gets.chomp
  while response != "exit"
    if response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "play"
      play(songs_array)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "list"
      list(songs_array)
      puts "Please enter a command:"
      response = gets.chomp
    end
  end
  exit_jukebox
end



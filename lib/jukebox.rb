def songs
return [
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
end

def boombox
  input = gets.chomp
  if input == "help"
    help
  end
  if input == "list"
    list
  end
  if input == "play"
    play(songs)
  end
  if input == "exit"
    exit_jukebox
  end
end

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list
  puts songs
end

def play(playlist)
  root = "Please enter a song name or number:"
  puts root
  input = gets.chomp
  if playlist[input] != nil
    puts "Playing #{playlist[input]}"
  elsif
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

boombox
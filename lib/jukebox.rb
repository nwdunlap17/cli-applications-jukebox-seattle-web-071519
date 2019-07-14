def songs
return ["Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"]
end

def run(songs)
  "Please enter a command:"
  input = gets.chomp
  if input == "help"
    help
  end
  if input == "list"
    list(songs)
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

def list(playlist)
  playlist.size.times do |i|
    puts "#{i+1}. #{playlist[i]}"
  end
end

def play(playlist)
  root = "Please enter a song name or number:"
 # puts root
  #input = 2
  input = gets
  input = input.chomp
  input = integerize(input)
  p "input is #{input}"
  if playlist[input] != nil
    puts "Playing #{playlist[input]}"
  elsif
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def integerize(i)
  if i == "1"
    return 0
  elsif i == "2"
    return 1
  elsif i == "3"
    return 2
  elsif i == "4"
    return 3
  elsif i == "5"
    return 4
  elsif i == "6"
    return 5
  elsif i == "7"
    return 6
  elsif i == "8"
    return 7
  elsif i == "9"
    return 8
  end
  songs.size.times do |j|
    if songs[j] == i 
      return j
    end
  end
end

#jukebox
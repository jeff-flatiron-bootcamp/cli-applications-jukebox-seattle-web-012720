<<<<<<< HEAD
#helper class to determine if a string is numeric
=======
require "pry"

>>>>>>> 8e0ca8b01ae29d2ca326a94fb3bdb733b2a6b2f3
class String
  def numeric?
    Float(self) != nil rescue false
  end
end

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def playing_song(song)
  puts "Playing #{song}"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_selection = gets.strip
  valid_song_indexes = songs.length - 1
<<<<<<< HEAD
  song_selection_number = -1
  if(song_selection.numeric?)
    song_selection_number = (song_selection.to_i) - 1
  else
    song_selection_number = songs.find_index(song_selection)
  end
  output = ""
  if((nil == song_selection_number) || ((0..songs.length-1).member?(song_selection_number) == false))
    output = "Invalid input, please try again"
  else
    output = songs[song_selection_number]
  end
  puts output
  output
end

def list(songs)
=======
  if(song_selection.numeric?)
    binding.pry
    if((1..9).member?(song_selection.to_i))
      puts "Playing #{song}"
      puts "song_select = #{song_selection.to_i}"
    end
  elsif 
  binding.pry
    index_value = songs.find_index(song_selection)
    if((1..9).member?(index_value.to_i))
      song = songs[index_value.to_i]
      puts "Playing #{song}"
    end
  else
    
  end
    
  
  
  
  # if(song_selection.is_a?(Integer))
  #   if()
  #     binding.pry
  #     playing_song(songs[selection])
  #   end
  # elsif (song_selection.is_a?(String))
  #     index = song.index(song_selection)
  #   if(index != nil)
  #     playing_song(songs[index])
  #   else
  #     puts "Invalid song selection"
  #   end
  # else  
  #   puts "Invalid input, please try again."
  # end
end

def list(songs)
  #count = 0
  
  # while(songs[count]) do
  #   puts "#{count+1}. ##{songs[count]"
  # end
>>>>>>> 8e0ca8b01ae29d2ca326a94fb3bdb733b2a6b2f3
  songs.each_with_index{|item, index|
    puts "#{index+1}. #{songs[index]}"
  }
end

def exit_jukebox
<<<<<<< HEAD
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  loop do
=======
  
end

def run(songs)
  loop do
    puts "Please enter a command:"
>>>>>>> 8e0ca8b01ae29d2ca326a94fb3bdb733b2a6b2f3
    command = gets.strip
    if(command == "help")
      help
    elsif(command == "list")
      list(songs)
<<<<<<< HEAD
    elsif(command == "play")
      song = play(songs)
      playing_song(song)
    elsif(command == "exit")
      exit_jukebox
=======
    elsif
      play(songs)
    else
>>>>>>> 8e0ca8b01ae29d2ca326a94fb3bdb733b2a6b2f3
      break
    end 
  end
end


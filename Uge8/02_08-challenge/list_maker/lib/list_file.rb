module ListMaker
  class ListFile
    
    @@filename = 'lm_list.txt'
    
    def initialize
      # locate list file in APP_ROOT
      #   confirm that it is readable and writable
      # or create a new file in APP_ROOT
      #   Use File.new/open in write mode
      # if success, return self, otherwise exit program

      file = File.open(@@filename, 'a')
      file.close
      return self if File.readable?(@@filename) && File.writable?(@@filename)
      puts "File was not readable or writeable"
      exit!
    end
    
    def view
      puts "\nView List\n\n".upcase
      # Read from list file
      # Use File.new/open in read mode
      # add numbers next to list items

      File.open(@@filename, 'r') {|file| file.each_line {|line| puts "#{file.lineno}: " + line }}
    end
    
    def add(args=[])
      puts "\nAdd a List Item\n\n".upcase
      # Add item to the end of the list.
      # Use File.new/open in append mode

      File.open(@@filename, 'a') { |file| file.puts args[0] }
    end
    
    def edit(args=[])
      # get the item position from the args ("edit 3", "edit 7")
      # read list file and make sure that item exists
      #   Use File.readlines
      # return not found message if item does not exist
      # output text of current list item again
      # ask user to type new text
      # write list file with the new updated list
      #   Use File.write

      position = args != [] ? args.first.to_i : return
      all_lines = File.readlines(@@filename)
      if all_lines.length < position
        return "Element not found"
      end
      puts "\nEdit a List Item\n\n".upcase
      output = all_lines[position - 1]
      print "Enter new word:
> "
      input = gets.chomp
      all_lines[position - 1] = input
      File.open(@@filename, 'w') { |file| all_lines.each { |line| file.puts line }}
      output
    end
  end
end

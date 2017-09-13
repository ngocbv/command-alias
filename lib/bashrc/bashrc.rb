require 'etc'

class BashRC
  class << self
    def create_bash_alias
      file_path = File.join(File.dirname(__FILE__), 'helpful_bashrc.txt')
      bashrc = File.read(file_path)

      home_folder = Etc.getpwuid.dir
      File.open(File.join(home_folder, '.bashrc_command_alias'), 'w') do |f|
        f.write(bashrc)
      end
      puts "Created file ~/.bashrc_command_alias"

      File.open(File.join(home_folder, '.bashrc'), 'a') do |f|
        f.write("\nsource ~/.bashrc_command_alias")
      end
      puts "Added 'source ~/.bashrc_command_alias' to ~/.bashrc"

      system("source #{home_folder}/.bashrc")
      puts "Run 'source #{home_folder}/.bashrc'"
    end
  end
end

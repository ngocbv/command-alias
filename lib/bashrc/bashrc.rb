class BashRC
  class << self
    def create_bash_alias
      file_path = File.join(File.dirname(__FILE__), 'helpful_bashrc.txt')
      bashrc = File.read(file_path)

      File.open('~/.bashrc_command_alias', 'w') do |f|
        f.write(bashrc)
      end

      File.open('~/.bashrc', 'a') do |f|
        f.write("\nsource ~/.bashrc_command_alias")
      end
    end
  end
end

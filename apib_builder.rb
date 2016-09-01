class ApiaryBuilder
  def initialize(filename: 'apiary.apib', sequence: ['description.apib', 'get.apib', 'post.apib', 'put.apib', 'patch.apib'])
    @filename  = filename
    @sequence  = sequence
    @apib_file = File.new(filename, 'w')
  end

  def compose_from_dir path
    @sequence.each do |item|
      file_path = "#{path}/#{item}"
      @apib_file.write(File.read(file_path) + "\n\n") if File.exists?(file_path)
    end

    Dir.glob("#{path}/*").each { |sub_path| compose_from_dir(sub_path) }
  end

  def build!
    @apib_file.write(File.read('README.md') + "\n\n")
    compose_from_dir 'groups'
    @apib_file.close
  end
end

ApiaryBuilder.new.build!
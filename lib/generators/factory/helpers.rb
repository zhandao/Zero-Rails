module Generators::Factory
  module Helpers
    def self.included(base)
      base.extend Generators::Factory::ClassMethods
    end
  end

  module ClassMethods
    def run
      rescue_no_method_run { super() }
      descendants.each do |mdoc|
        *dir_path, file_name = mdoc.path.split('/')
        dir_path = "spec/factories/#{dir_path.join('/')}"
        FileUtils.mkdir_p dir_path
        file_path = "#{dir_path}/#{file_name}#{mdoc.version}.rb"

        # if Config.overwrite_files || !File::exist?(file_path)
        if true
          File.open(file_path, 'w') { |file| file.write mdoc.whole_file }
          puts "[Zero] Factory file has been generated: #{file_path}"
        end
      end
    end
  end
end

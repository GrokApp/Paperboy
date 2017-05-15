require Rails.root.join('lib/classes/nyt_parser.rb')

namespace :nyt do
  
  desc 'Load NYT Top Stores'
  task :load_top_stories => :environment do |t, args|
    NytParser.new.get_top_stories
  end

end

namespace :db do
  desc "Create database"
  task :migrate do
    exec 'sequel -m db/migrations/. sqlite://' + File.dirname(__FILE__) + '/db/rackspace-cloud-s3.db'
  end

  desc "Delete Database File"
  task :delete do
    FileUtils.rm_rf(File.dirname(__FILE__) + "/db/ganymede.db")
  end
end 

namespace :byebye do
  namespace :rackspace do
    desc "sync your rackspace cloud files to amazon s3"
    task :sync do
      puts "Call the main application once implemented"
    end
  end
end

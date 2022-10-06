class OpenBusiness::HealthController < OpenBusiness::ApplicationController
  
  include Sys
  
  #"health#index" -- test http connectivity
  def index
    results = {:status => "ok"}
    respond_to do |format|
      format.html { render :status => 200, :html => "ok" and return }
      format.json { render :status => 200, :json => results.to_json and return }
    end
  end
  
  # health#db -- test db connectivity with a simple query
  def db
  end
  
  #"health#who" -- test which site is running
  def who
    name = "site"
    results = {:name => name}
    respond_to do |format|
      format.html { render :status => 200, :html => name and return }
      format.json { render :status => 200, :json => results.to_json and return }
    end
  end
  
  #"health#df" -- test free disc space
  def df
    #stat = Sys::Filesystem.stat("/")
    require 'sys/filesystem'
    #include Sys
    stat = Filesystem.stat('/')
    mb_available = stat.block_size * stat.blocks_available / 1024 / 1024
    results = {:free => mb_available}
    respond_to do |format|
      format.html { render :status => 200, :html => "#{mb_available}" and return }
      format.json { render :status => 200, :json => results.to_json and return }
    end
  end
  
  #health#hosts
  def hosts
    hosts = File.read(File.join(Rails.root, ".hosts")).gsub(/"/,'').split(" ").compact.uniq
    respond_to do |format|
      format.html { render :status => 200, :html => hosts.join(',') and return }
      format.json { render :status => 200, :json => hosts.to_json and return }
    end
  end
  
  # test redis 
  def redis
    redis_server = Redis.new
    redis_server.set("mykey", "hello world")
    mykey = redis_server.get("mykey")
    respond_to do |format|
      format.html { render :status => 200, :html => "Redis is A-OK -- #{mykey}" and return }
      format.json { render :status => 200, :json => "Redis is A-OK".to_json and return }
    end
  end
  
  # test sidekiq
  def sidekiq
  end
end


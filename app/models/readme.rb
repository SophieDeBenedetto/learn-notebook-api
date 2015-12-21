class Readme < ActiveRecord::Base

  has_many :annotations


  before_save :set_title

  

  # def self.generate_readme(readme_params)
  #   url = readme_params["url"]
  #   repo = repo_name(url)
  #   Dir.chdir(File.join(Rails.root, 'tmp'))
  #   system "git init"
  #   system "git clone #{url}"
  #   Dir.chdir(File.join(Rails.root, 'tmp', repo))
  #   path = Dir.pwd
  #   file = path + "/README.md"
  #   content = File.read(file)
  #   Readme.create(content: content)
  #   remove_repo(repo)
  # end

  def self.generate_readme(client, readme_params)
    url = readme_params["url"]
    repo = repo_name(url)
    readme = client.readme("learn-co-curriculum/#{repo}")
    content = Base64.decode64(readme["content"])
    Readme.create(content: content)
  end

  def self.repo_name(url)
    url.split(":").last.split("/").last[0..-5]
  end

  def self.remove_repo(repo)
    directory = File.join(Rails.root, 'tmp', repo)
    FileUtils.rm_rf("#{directory}")
  end

  def set_title
    self.title = content.split("\n").first[2..-1]
  end
end

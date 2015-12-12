require 'FileUtils'

class Readme < ActiveRecord::Base

  has_many :sentences

  # attr_accessor :title

  before_save :set_title

  # def title
  #   self.sentences.where("title = ?", true)
  # end

  def self.generate_readme(readme_params)
    url = readme_params["url"]
    repo = repo_name(url)
    Dir.chdir(File.join(Rails.root, 'tmp'))
    system "git init"
    system "git clone #{url}"
    Dir.chdir(File.join(Rails.root, 'tmp', repo))
    path = Dir.pwd
    file = path + "/README.md"
    content = File.read(file)
    Readme.create(content: content)
    remove_repo(repo)
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

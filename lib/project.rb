require_relative './backer.rb'
class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_instance)
    @backers << backer_instance
    backer_instance.back_project(self)
  end

end

bk = Backer.new("Rob")
pj = Project.new("Kitchen Repair")

pj.add_backer(bk)

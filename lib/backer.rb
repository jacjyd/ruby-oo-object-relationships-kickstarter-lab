
class Backer

    attr_accessor :name, :project

    def initialize(name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select{|pb| pb.backer == self}.map{|project| project.project}
    end


end
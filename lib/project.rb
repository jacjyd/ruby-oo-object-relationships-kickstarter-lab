
class Project

    attr_accessor :backer, :title


    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select{|pb| pb.project == self}.map{|project| project.backer}
        
    end 


end
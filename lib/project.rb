class Project

    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects_array = ProjectBacker.all.select do |instance| 
             instance.project == self
         end
         projects_array.collect do |project|
             project.backer
         end
     end

end
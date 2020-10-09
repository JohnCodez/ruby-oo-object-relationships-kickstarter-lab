class Backer 

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       projects_array = ProjectBacker.all.select do |instance| 
            instance.backer == self
        end
        projects_array.collect do |backer|
            backer.project
        end
    end

end
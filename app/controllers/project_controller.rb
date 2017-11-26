class ProjectController < ApplicationController

    def create
    
       @type = params[:category_option]
       @small_type = params[:small_category]
    end
    def create_1
    end
    def new_create_1
        id=params[:category_option]
        new_project=Request.new(category_id: id)

        if new_project.save
            redirect_to "/project/create_2/new"
        end
    end
    def create_2
        
    end
    def new_create_2
        category=params[:small_category]
        new_pro=Request.last
        new_pro.small_category_id=category
        new_pro.time=params[:time]
        new_pro.amount_id=params[:amount_id]
        new_pro.project_type_id=params[:project_type_id]
        new_pro.save
        if new_pro.save
            redirect_to "/project/create_3/new"
        end
    end
    def create_3
    end
    def new_create_3
        new_pro=Request.last
        new_pro.title=params[:title]
        new_pro.end_date=params[:end_date]
        new_pro.contents=params[:contents]
        new_pro.tool=params[:tool]
        new_pro.save
        if new_pro.save
            redirect_to "/"
        end
    end
end

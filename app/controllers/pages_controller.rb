class PagesController < ApplicationController
  respond_to :html, :json
  def coursecatalog
    @courses  = Catalog.all
    @usercatalogs = current_user.usercatalogs.all
  end

  
  def minors
    @usercatalogs = current_user.usercatalogs.all
    @institution = Institution.where(:title => "Rice University")
    @institution.each do |type| 
      a = type.achievementtypes.all
      a.each do |t|
        if t.achievementtype == "minors" 
          @minors = t
        end
      end 
    end    
  end

  def majorsba
    @usercatalogs = current_user.usercatalogs.all
    @institution = Institution.where(:title => "Rice University")
    @institution.each do |type| 
      a = type.achievementtypes.all
      a.each do |t|
        if t.achievementtype == "majors_ba" 
          @majorsba = t
        end
      end 
    end
  end

  def majorsbas
    @usercatalogs = current_user.usercatalogs.build(params[:usercatalog])
    @institution = Institution.where(:title => "Rice University")
    @institution.each do |type| 
      a = type.achievementtypes.all
      a.each do |t|
        if t.achievementtype == "majors_ba_s" 
          @majorsbas = t
        end
      end 
    end
  end

  def majorsbs
    @usercatalogs = current_user.usercatalogs.all
    @institution = Institution.where(:title => "Rice University")
    @institution.each do |type| 
      a = type.achievementtypes.all
      a.each do |t|
        if t.achievementtype == "majors_bs" 
          @majorsbs = t
        end
      end 
    end
  end
end

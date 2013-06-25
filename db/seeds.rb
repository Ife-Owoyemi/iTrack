# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'


Dir::foreach('db/course_catalog_rice'){|field| 
  if field.length > 2 and field != ".DS_Store"
    Dir::foreach("db/course_catalog_rice/#{field}"){|subfield| 
      if subfield.length > 2 and subfield != ".DS_Store"
        count = 0
        CSV.foreach("db/course_catalog_rice/#{field}/#{subfield}") do |cell|
          if count == 0
          	count += 1
          elsif cell[0] != nil
            Catalog.create!(:college => field, :department => subfield[0..3], :num => cell[0][5..7], :credits => cell[1])
          end
        end
      end
    }
  end
}
Institution.create!(:title => "Rice University", :id => 1, :nickname => "Rice")
institution = Institution.find(1)
Dir::foreach('db/institutions/rice'){|achievementtype|
  if achievementtype.length > 2 and achievementtype != ".DS_Store"
    a = institution.achievementtypes.create!(:achievementtype => achievementtype)
    Dir::foreach("db/institutions/rice/#{achievementtype}"){|college|
      if college.length > 2 and college != ".DS_Store"
        b = a.colleges.create!(:college => college)
        Dir::foreach("db/institutions/rice/#{achievementtype}/#{college}"){|department|
          if department.length > 2 and department != ".DS_Store"
            count = 0
            CSV.foreach("db/institutions/rice/#{achievementtype}/#{college}/#{department}") do |cell|
              if count == 0
                c = b.achievementnames.create!(:achievementname => cell[0])
                d = c.specialties.create!(:specialty => "General")
                count += 1
              end
            end
          end
        }
      end
    }
  end
}
print institution


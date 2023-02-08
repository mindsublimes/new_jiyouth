class Admin::UploadersController < ApplicationController
  require 'spreadsheet'

  def create
    file = Spreadsheet.open params[:file].tempfile
    members = file.worksheet 0
    province = Province.find_or_create_by(title: members.first[1])
    district = District.find_or_create_by(title: members.first[0], province_id: province.id)
    if province.title == 'Punjab'  
      members.each_with_index(1) do |row, index|
        if row[0].present?
          unit = row[0]
          area =  if unit.downcase.include?('metropolitan')
                    :metropolitan_corporation
                  elsif unit.downcase.include?('municipal corporation')
                    :municipal_corporation
                  elsif unit.downcase.include?('tehsil')
                    :tehsil_council
                  elsif unit.downcase.include?('town')
                    :town_committee
                  else
                    :municipal_committee
                  end
          LocalGovernmentStructure.create(title: row[0], district_id: district.id, area: LocalGovernmentStructure.areas[area])
        end
        if row[1].present?
          unit = Unit.new(unit_name: Unit.unit_names[:union_council], title: row[1], local_government_structure_id: LocalGovernmentStructure.last.id)
          unit.save!
        end
      end
    else
      members.each_with_index(1) do |row, index|
        if row[0].present?
          unit = row[1]
          area =  if unit.downcase.include?('city local')
                    :city_local_government
                  else
                    :tehsil_local_government
                  end
          LocalGovernmentStructure.create(title: row[0], district_id: district.id, area: LocalGovernmentStructure.areas[area])
        end
        if row[1].present?
          unit = row[1]
          area_khyber =   if unit.downcase.include?('village')
                            :village_council
                          else
                            :neighbourhood_council
                          end

          unit = Unit.new(unit_name: Unit.unit_names[area_khyber], title: row[1], local_government_structure_id: LocalGovernmentStructure.last.id)
          unit.save!
        end
      end
    end
  end
end


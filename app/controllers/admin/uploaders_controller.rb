class Admin::UploadersController < ApplicationController
  require 'spreadsheet'

  def create
    file = Spreadsheet.open params[:file].tempfile
    members = file.worksheet 0
    province = Province.find_or_create_by(title: members.first[1])
    district = District.find_or_create_by(title: members.first[0], province_id: province.id)
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
        PunjabLocalGovernment.create(title: row[0], district_id: district.id, area: PunjabLocalGovernment.areas[area])
      end
      if row[1].present?
        Unit.create(title: row[1], punjab_local_government_id: PunjabLocalGovernment.last.id)
      end
    end
  end
end


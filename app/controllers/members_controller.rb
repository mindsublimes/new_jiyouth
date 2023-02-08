class MembersController < ApplicationController


  def districts
    province = Province.find_by_id(params[:id])
    @districts = province.districts
      respond_to do |format|
          format.js
      end 
  end

  def area
    district = District.find_by_id(params[:id])
    @areas = district.punjab_local_governments
      respond_to do |format|
          format.js
      end 
  end

  def units
    area = PunjabLocalGovernment.find_by_id(params[:id])
    @units = area.units
      respond_to do |format|
          format.js
      end 
  end

end

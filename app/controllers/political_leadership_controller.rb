class PoliticalLeadershipController < ApplicationController
  
  def provinces_and_districts
    @provinces = ProvinceJi.all
    @districts = @provinces.first.district_jis if @provinces.present?
  end

  def constituencies
    @district = DistrictJi.where('lower(title) LIKE :q', q: params[:id]).first
    @national_assemblies = @district.assembly_jis.na
    @provincial_assemblies = @district.assembly_jis.pp
  end

  def districts
    @districts = ProvinceJi.find(params[:id]).district_jis
    respond_to do |format|
      format.js   # Render JavaScript response for Ajax request
    end
  end
end

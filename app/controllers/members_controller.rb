class MembersController < ApplicationController

  def create
    unit =  if params["unit"].present?
              Unit.find_by_id(params["unit"])
            else
              LocalGovernmentStructure.find_by_id(params[:local_govt_structure_id])
            end
    member = unit.members.new(
                      father_name: params[:father_name],
                      name: params[:name], email: params[:email],
                      phone: params[:phone], cnic: params[:cnic]
                    )
    if member.save
      flash[:success] = "#{member.name} with CNIC no #{member.cnic} Registered Successfully "
      redirect_to new_member_path 
    else
      flash[:danger] = "#{member.name} with CNIC no #{member.cnic} Not Registered"
      redirect_to new_member_path
    end
  end

  def districts
    province = Province.find_by_id(params[:id])
    @districts = province.districts
      respond_to do |format|
          format.js
      end 
  end

  def area
    district = District.find_by_id(params[:id])
    @areas = district.local_government_structures
      respond_to do |format|
          format.js
      end 
  end

  def units
    area = LocalGovernmentStructure.find_by_id(params[:id])
    @units = area.units
      respond_to do |format|
          format.js
      end 
  end

end

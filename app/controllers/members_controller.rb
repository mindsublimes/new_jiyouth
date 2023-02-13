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
      redirect_to root_path
    else
      flash[:error] = "#{member.name} with CNIC no #{member.cnic} Not Registered"
      redirect_to new_member_path
    end
  end

  def check_cnic
    @member = Member.find_by_cnic(params[:cnic])
    respond_to do |format|
      format.js
    end
  end

  def districts
    province = Province.find_by_id(params[:id])
    @districts = province.present? ? province.districts : nil
      respond_to do |format|
        format.js
      end 
  end

  def area
    district = District.find_by_id(params[:id])
    @areas = district.present? ? district.local_government_structures : nil
      respond_to do |format|
          format.js
      end 
  end

  def units
    area = LocalGovernmentStructure.find_by_id(params[:id])
    @units = area.present? ? area.units : nil
      respond_to do |format|
          format.js
      end 
  end

end

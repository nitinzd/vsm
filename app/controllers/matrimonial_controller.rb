class MatrimonialController < ApplicationController

  def index

  end

  def new
    @m_profile = current_user.build_mprofile
  end

  private
  def matrimony_params
    params.require().permit(:height, :religion, :caste, :gothra, :raashi, :sunsign, 
    :mothertongue, :disability, :diet, :languages, :drink, :smoke, 
    :complexion, :p_value, :m_status, :children, :about, :f_type, 
    :status, :description, :occupation, :employed, :job, 
    :employer, :city, :qualification, :ocr, :csm, :words, :image)
  end

end

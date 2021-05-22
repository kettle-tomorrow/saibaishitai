class Api::CultivationRecordsController < ApplicationController
  skip_forgery_protection

  def create
    cultivation_record = CultivationRecord.new(cultivation_record_params)
    if cultivation_record.save
      render json: { status: :success, cultivation_record:{ id: cultivation_record.id,
                                         soil_humidity: cultivation_record.soil_humidity,
                                         date: cultivation_record.created_at } }
    else
      render json: { status: :fail }
    end
  end

  private

  def cultivation_record_params
    params.require(:cultivation_record).permit(:soil_humidity)
  end
end

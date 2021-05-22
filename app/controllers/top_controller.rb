class TopController < ApplicationController
  def index
    @cultivation_records = CultivationRecord.all.order(id: :DESC)
  end
end

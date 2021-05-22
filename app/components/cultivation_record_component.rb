# frozen_string_literal: true

class CultivationRecordComponent < ViewComponent::Base
  def initialize(cultivation_record:)
    @cultivation_record = cultivation_record
  end
end

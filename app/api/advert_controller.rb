class AdvertController < BaseController
  skip_before_action :authenticate_user!, only: [:adverts]

  def adverts
  end
end

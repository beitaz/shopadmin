class DiscoverController < BaseController
  skip_before_action :authenticate_user!, only: [:discovers]

  # 抓取数据
  def discovers
  end
end

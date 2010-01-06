module AssetsHelper
  def correspondin_asset(id)
    Asset.find(id).name
  end
end

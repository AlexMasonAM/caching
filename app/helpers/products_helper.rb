module ProductsHelper
  def cache_key_for_products(products)
    ids = products.map(&:id).join('-')
    max_updated_at = products.map(&:updated_at).max
    "products/#{ids}-#{max_updated_at.to_i}"
  end
end

module ParameterSetsHelper

  def disable_vote? pset
    return true unless user_signed_in?
    current_user.voted_on? pset
  end

  def no_image
    image_tag('https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg', width: 64)
  end

  def imgur_thumbnail_and_link img_hsh
    link_to image_tag(Image.small_thumbnail(img_hsh)), Image.imgur_page(img_hsh)
  end

  def image_for pset
    img_hash = pset.image
    return no_image if img_hash.nil? || img_hash.empty?
    imgur_thumbnail_and_link img_hash
  end

end

module ApplicationHelper
  def randomized_background_image_laurence
    images = ['AquarelleLaurence.jpeg', 'AquarelleLaurence2.jpeg', 'Les iris.jpeg']
    images[rand(images.size)]
  end
end

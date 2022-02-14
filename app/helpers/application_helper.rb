module ApplicationHelper
  def randomized_background_image
    images = ['../assets/images/beziers-exposition.jpeg', '../assets/images/expo-montpellier.jpeg', '../assets/images/gruissan-exposition.jpeg', '../assets/images/montpellier-exposition.jpeg', '../assets/images/sete-invitation.png']
    images[rand(images.size)]
  end
end

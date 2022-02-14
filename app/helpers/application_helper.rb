module ApplicationHelper
  def randomized_background_image
    images = ['beziers-exposition.jpeg', 'expo-montpellier.jpeg', 'gruissan-exposition.jpeg', 'montpellier-exposition.jpeg', 'sete-invitation.png']
    images[rand(images.size)]
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def random_img
    images = ['http://www.stanford.edu/dept/CTL/cgi-bin/academicskillscoaching/wp-content/uploads/2012/07/baby-duck.jpg', 'http://cliparts.co/cliparts/ziX/57r/ziX57rX7T.gif']
    images.sample
  end
end

require 'opencv'
include OpenCV

class FaceController < ApplicationController
  def face_index
  end
  def face_photo
    
    data = '/usr/share/opencv/haarcascades/haarcascade_frontalface_alt.xml'
    detector = CvHaarClassifierCascade::load(data)
    image = CvMat.load(params[:photo_file].path)
    detector.detect_objects(image).each do |region|
      color = CvColor::Red
      image.rectangle! region.top_left, region.bottom_right, :color => color
                                        end
    image.save_image("output.jpg")
    send_file("output.jpg", disposition: 'inline')

  end
end

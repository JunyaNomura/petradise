class CollectionsController < ApplicationController
  # delete button pet/show logic
  def delete_image_attachment
    @image = ActiveStorage::Blob.find_signed(params[:id])
    @image.attachments.first.purge
    redirect_to pet_path(current_user.pet)
  end
end

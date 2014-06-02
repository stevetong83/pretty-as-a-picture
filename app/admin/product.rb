ActiveAdmin.register Product do

  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs "Products" do
      f.input :title
      f.input :description
      f.input :price
      f.input :quanity_available
    end
    # f.inputs do
    #   f.has_many :images, allow_destroy: true, heading: 'Images' do |image|
    #     image.input :image
    #   end
    # end
    f.actions
  end
  
  show do |product|
    attributes_table do
      row :id
      row :title
      row :price
      row :quanity_available
      # row :logo do
      #   image_tag product.logo
      # end
      row :updated_at
      row :created_at
      # row :categories do 
      #   product.categories.map(&:name).join(", ").html_safe
      # end
    end
  end
end

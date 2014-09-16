ActiveAdmin.register Page do

  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :page
      f.input :title
      f.input :content, as: :html_editor
    end

    f.actions
  end


end

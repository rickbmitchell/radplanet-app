ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :title, :content, :name, :source

  index do
    column :id
    column :title
    column :content do |post|
      truncate(post.content, omision: "...", length: 100)
    end
    column :source do |post|
      truncate(post.source, omision: "...", length: 50)
    end
    column :name
    actions
  end

  form do |f|
    f.inputs "Post" do
      f.input :name, :as => :select, :collection => Choices['name']
      f.input :title
      f.input :content
      f.input :source
      f.input :created_at
    end
    f.actions
  end

end

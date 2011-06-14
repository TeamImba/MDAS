RailsAdmin.authorize_with :cancan

RailsAdmin.config do |config|
  config.model Product do
    create do
      field :name
      field :product_url
      field :image_url
      field :utm
      field :seller
      field :view_count do
        partial "disable_product_view_count"
      end
    end
    update do
      field :name
      field :product_url
      field :image_url
      field :utm
      field :seller
      field :view_count do
        partial "disable_product_view_count"
      end
    end
    list do
      field :name
      field :view_count
    end
  end
  
  config.model ProductAnalytic do
    visible { false }
  end
  config.model UserSignup do
    list do 
      field :full_name
      field :multiply_user_id do
        label "Multiply User ID"
      end
      field :email
      field :mobile_number
    end
  end
  
end
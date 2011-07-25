#RailsAdmin.authorize_with :cancan

RailsAdmin.config do |config|
  config.model Product do
    create do
      field :name
      field :product_url
      field :image_url
      field :seller
      field :position
      field :week_number
      field :category
      field :view_count do
        partial "disable_product_view_count"
      end
    end
    update do
      field :name
      field :product_url
      field :image_url
      field :seller
      field :position
      field :week_number
      field :category
      field :view_count do
        partial "disable_product_view_count"
      end
    end
    list do
      field :name
      field :view_count
      field :position
      field :week_number
      field :category
    end
  end
  
  config.model ProductAnalytic do
    visible { false }
  end
  config.model User do
    visible { false }
  end
  
  config.model UserSignup do
    list do 
      field :name
      field :multiply_user_id do
        label "Multiply User ID"
      end
      field :contact_number
      field :created_at_date do
        label "Date"
      end
      field :created_at_time do
        label "Time"
      end
    end
  end
  
end
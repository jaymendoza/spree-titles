# Uncomment this if you reference any of your controllers in activate
require_dependency 'application'

class TitlesExtension < Spree::Extension
  version "1.0"
  description "Replaces the general Spree title with accurate titles."
  url "http://github.com/jaymendoza/spree-titles"

  def activate
    Spree::BaseController.class_eval do
      def accurate_title
        nil
      end
      
      def default_title
        title = Spree::Config[:site_name]
        accurate_title ? "#{title}: #{accurate_title}" : title
      end
    end
    
    OrdersController.class_eval do
      def accurate_title
        translate('shopping_cart')
      end
    end
    
    PasswordResetsController.class_eval do
      def accurate_title
        translate('forgot_password')
      end
    end
    
    ProductsController.class_eval do
      def accurate_title
        @product.name if @product
      end
    end
    
    TaxonsController.class_eval do
      def accurate_title
        @taxon.name if @taxon
      end
    end
    
    UsersController.class_eval do
      def accurate_title
        translate('new_customer')
      end
    end
    
    UserSessionsController.class_eval do
      def accurate_title
        translate('login_as_existing')
      end
    end
    
  end
end

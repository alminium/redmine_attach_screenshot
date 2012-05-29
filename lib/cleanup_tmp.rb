require 'account_controller'
require 'find'

module AttachScreenshotPlugin
  module CleanupTmp
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      alias_method_chain :logout, :cleanup
    end
  end

  module InstanceMethods
    class ApplicationControllerPatchRoutes < Redmine::Hook::Listener
      def controller_account_success_authentication_after(params)
        InstanceMethods.cleanup
      end
    end

    def self.cleanup      
      ss = sprintf('%d_', User.current.id)
      Find.find("#{Rails.root}/tmp/") do |f|
        if (f[ss]!=nil)
          File.delete(f)
        end
      end
    end

    def logout_with_cleanup
      InstanceMethods.cleanup
      logout_without_cleanup
    end
  end
  end
end
AccountController.send(:include, AttachScreenshotPlugin::CleanupTmp)
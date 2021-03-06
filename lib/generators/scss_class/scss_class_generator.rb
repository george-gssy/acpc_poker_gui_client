class ScssClassGenerator < Rails::Generators::NamedBase
   source_root File.expand_path('../templates', __FILE__)

   def generate_scss_class
      template 'scss_class.scss', "app/assets/stylesheets/modules/#{file_name}/_#{file_name}.scss"
      template 'scss_class_defs.scss', "app/assets/stylesheets/modules/#{file_name}/_#{file_name}-defs.scss"
   end

   private

   def file_name
      name.underscore
   end
end

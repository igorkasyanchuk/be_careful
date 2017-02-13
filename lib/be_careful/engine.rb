module BeCareful

  class Engine < ::Rails::Engine
    isolate_namespace BeCareful

    console do |app|
      #if defined?(Rails)
        ::Pry.config.prompt = proc { |obj, nest_level, _| "[#{app_name}][#{formatted_env}]#{branch_name} #{obj}:#{nest_level}> " }
      #end
    end

    def formatted_env
      case Rails.env
      when 'production'
        Pry::Helpers::Text.red(Rails.env)
      when 'staging'
        Pry::Helpers::Text.yellow(Rails.env)
      else
        Pry::Helpers::Text.green(Rails.env)
      end
    end

    def app_name
      File.basename(Rails.root)
    end

    def branch_name
      name = system('git rev-parse --abbrev-ref HEAD') rescue nil
      return nil if name.blank?
      "[#{name}]"
    end

  end
end
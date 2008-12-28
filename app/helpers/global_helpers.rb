module Merb
  module GlobalHelpers
    def admin?
      if session.user
        return session.user.admin?
      else
        return false
      end
    end

    def css(stylesheet, opts={})
      opts = {
        :href => "/stylesheets/#{stylesheet}.css",
        :rel => "stylesheet", 
        :type => "text/css", 
        :media => "screen"
      }.merge!(opts)
      attributes = ""
      opts.map{|k,v| attributes << %{#{k}="#{v}" } }
      "<link %s/>" % attributes
    end
  end
end

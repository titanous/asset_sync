require 'fog'
require 'active_model'
require 'erb'
require "asset_sync/asset_sync"
require 'asset_sync/config'
require 'asset_sync/storage'


require 'asset_sync/railtie' if defined?(Rails)
require 'asset_sync/engine'  if defined?(Rails)

unless defined?(Mime)
  begin
    require 'mime/types'
  rescue LoadError
    abort "rails or the mime-types gem is required, could not find either"
  end
end

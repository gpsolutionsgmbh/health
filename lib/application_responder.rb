class ApplicationResponder < ActionController::Responder
  # include Responders::FlashResponder
  include Responders::HttpCacheResponder

  # Redirects resources to the collection path (index action) instead
  # of the resource path (show action) for POST/PUT/DELETE requests.
  # include Responders::CollectionResponder

  def json_resource_errors
    { errors: resource.errors.as_json }
  end
end

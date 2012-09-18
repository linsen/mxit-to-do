class ApplicationController < ActionController::Base

  # The body style is automatically applied to all pages
  mxit_style :body, 'background-color:#FFFFFF; color:#333333'

  # The title style is automatically applied to the page title
  mxit_style :title, 'padding:4px 6px; background-color:#998888; color:#ffffff;'

  # Links can only be styled on a per-page basis, not per link.  The :hover link is used 
  mxit_style :link_hover, 'background-color: #EA1A76; color: #ffffff;'
  mxit_style :link, 'color: #EA1A76;'

end

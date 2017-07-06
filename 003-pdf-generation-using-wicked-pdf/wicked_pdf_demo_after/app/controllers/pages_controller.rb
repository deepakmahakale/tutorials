class PagesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do
        render pdf:         'index', # Excluding ".pdf" extension.
               # allow debugging based on url param
               show_as_html: params.key?('debug'),
               # for a application.pdf.erb file
               layout:       'application'
      end
    end
  end
end

# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def privacy
    view_to_render = case params[:lang]
                     when 'pl'
                       'privacy_pl'
                     when 'es'
                       'privacy_es'
                     else
                       'privacy'
                     end
    render view_to_render
  end

  def current_time
    @actual_date = DateTime.now
  end
end

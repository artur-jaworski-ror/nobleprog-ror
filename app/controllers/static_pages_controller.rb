class StaticPagesController < ApplicationController

    def privacy
        view_to_render = if params[:lang] == 'pl'
                'privacy_pl'
            elsif params[:lang] == 'es'
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

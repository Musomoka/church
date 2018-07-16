module SermonsHelper



    def featured_sermon
        @sermons.first
        
    end
        
    def status_select_options

    options_for_select(['published', 'features','editing', "review", "Draft" ], "Draft")
    end

   def toggle_buttons   
        if sermon.body.split('').count > 50
            sermon.body.truncate(8)

        end
  
   end

        

   

end

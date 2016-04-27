require 'mailgun'
class FourthController < ApplicationController
    
    def yahoo
    end
    def write
        
        @content = params[:second]
        @recept = params[:third]
        @title = params[:fourth]
        
        mg_client = Mailgun::Client.new("key-c1dabab3978af3f76d281e9c976bf0f0")

            message_params =  {
                   from: 'cnpanic@gmail.com',
                   to:   @recept,
                   subject: @title,
                   text:    @content
                  }

            result = mg_client.send_message('sandboxd070310999b4412992faad3b7c65c7d4.mailgun.org', message_params).to_h!

            message_id = result['id']
            message = result['message']
    end
    
        
        
end

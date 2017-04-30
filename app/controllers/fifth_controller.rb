require 'mailgun'
class FifthController < ApplicationController
    def fifth_index
    end
    def fifth_write
        
        @fifthtitle = params[:erbtitle]
        @fifthcontent = params[:erbcontent]
        @fifthdestination = params[:erbdestination]
        redirect_to "/fifth_list"
        
        mg_client = Mailgun::Client.new("key-c1dabab3978af3f76d281e9c976bf0f0")

            message_params =  {
                   from: 'cnpanic@gmail.com',
                   to:   @fifthdestination,
                   subject: @fifthtitle,
                   text:    @fifthcontent
                  }

            result = mg_client.send_message('sandboxd070310999b4412992faad3b7c65c7d4.mailgun.org', message_params).to_h!

            message_id = result['id']
            message = result['message']
        
        new_post = Post.new
        new_post.erbtitle = @fifthtitle
        new_post.erbcontent = @fifthcontent
        new_post.erbdestination = @fifthdestination
        new_post.save
    end
    def fifth_list  
        @every_post = Post.all.order("id desc")
    end
    
    def destroy
        @one_post = Post.find(params[:post_id])
        @one_post.destroy
        redirect_to "/fifth_list"
    end
end


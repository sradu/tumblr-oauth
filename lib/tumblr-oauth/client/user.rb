module TumblrOAuth
  class Client
    module User
      def user_info
        @user_info ||= request(:post, 'user/info')
      end
      
      def primary_blog
        blog = info.response.user.blogs.find {|blog| blog.primary }
        URI.parse(blog.url).host
      end
      
    end
  end
end

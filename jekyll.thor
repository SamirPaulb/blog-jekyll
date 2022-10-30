require "stringex"
class Jekyll < Thor
  desc "new", "create a new post"
  method_option :editor, :default => "subl"
  def new(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    filename = "_posts/#{date}-#{title.to_url}.markdown"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "description: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "image:"
      post.puts "  path: /assets/img/blog-featured-image.webp"
      post.puts "  width: 661"
      post.puts "  height: 132"
      post.puts "  alt: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "categories: [Blog]"
      post.puts "tags: [blog, coding, computer-science]"
      post.puts "published: true"
      post.puts "sitemap: true"
      post.puts "pin: false"
      post.puts "---"
    end 

    system(options[:editor], filename)
  end
end

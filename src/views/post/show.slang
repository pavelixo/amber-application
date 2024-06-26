h1 Show Post
p = post.title
p = post.body
p
  == link_to("Back", "/posts", class: "btn btn-light btn-sm")
  == link_to("Edit", "/posts/#{post.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/posts/#{post.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")

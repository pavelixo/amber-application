.row
  .col-sm-11
    h2 Posts
  .col-sm-1
    a.btn.btn-success.btn-sm href="/posts/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Title
        th Body
        th Actions
    tbody
      - posts.each do |post|
        tr
          td = post.title
          td = post.body
          td
            span
              == link_to("Show", "/posts/#{post.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/posts/#{post.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/posts/#{ post.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")

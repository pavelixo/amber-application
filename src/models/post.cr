class Post < Granite::Base
  connection sqlite
  table posts

  column id : Int64, primary: true
  column title : String?
  column body : String?
end

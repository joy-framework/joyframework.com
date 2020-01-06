(import joy :prefix "")
(import ./routes/home :as home)
(import ./routes/posts :as posts)

(defroutes app
  [:get "/" home/index])

(defroutes post
  [:get "/posts" posts/index]
  [:get "/posts/:title" posts/show])

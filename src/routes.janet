(import joy :prefix "")
(import ./routes/home :as home)
(import ./routes/not-found :as not-found)

(defroutes app
  [:get "/" home/index]
  [:get "/*" not-found/index])

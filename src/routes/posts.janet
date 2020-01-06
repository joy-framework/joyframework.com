(use joy)
(import moondown)


(def titles {"intro" "What is joy?"
             "janet" "Janet"})


(defn post [p]
  (let [[name] (string/split "." p)]
    [:a {:href (string "/" name ".html")
         :class "white f3 tl mt4-ns"}
      (get titles name)]))


(defn index [request]
  (let [posts (os/dir "posts")]
    [:vstack {:class "mt4"}
     (map post posts)]))


(defn show [request]
  (let [title (get-in request [:params :title])]
    (with-file [f (string "posts/" title ".md")]
      (render :html
        [:div {:class "white bg-transparent lh-copy mt4"}
          (raw (moondown/render (string (file/read f :all))))]))))

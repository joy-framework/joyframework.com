(use joy)
(import moondown)


(defn index [request]
  [:vstack {:class "mt4"}
   [:a {:href "/intro.html"
        :class "white f3 tl mt4-ns"}
    "What is joy?"]])


(defn show [request]
  (let [title (get-in request [:params :title])]
    (with-file [f (string "posts/" title ".html")]
      (render :html
        [:div {:class "white bg-transparent lh-copy mt4"}
          (raw (string (file/read f :all)))]))))

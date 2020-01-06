(import joy :prefix "")


(defn head []
  [:head
   [:meta {:charset "utf-8"}]
   [:meta {:name "viewport" :content "width=device-width, initial-scale=1"}]
   [:link {:href "/tachyons.css" :rel "stylesheet"}]
   [:link {:href "/pylon.css" :rel "stylesheet"}]
   [:link {:href "/nord.css" :rel "stylesheet"}]
   [:link {:href "/app.css" :rel "stylesheet"}]
   [:title "Joy Framework"]])


(defn menu []
  [:hstack {:spacing "l"}
   [:div {:class "white"}
    [:a {:href (url-for :home/index) :class "white no-underline"}
     "😇Joy"]]
   [:spacer]
   [:a {:href (url-for :posts/index) :class "white"} "Posts"]
   [:a {:href "https://github.com/joy-framework/joy" :class "white"} "Github"]])


(defn app [response]
  (let [{:body body} response]
    (respond :html
      (html
       (doctype :html5)
       [:html {:lang "en"}
        (head)
        [:body {:class "bg-purple-gradient"}
          [:vstack {:class "mw8 center pa4-ns pa3"}
           (menu)
           body]
         [:script {:src "/app.js"}]]]))))


(defn post [response]
  (let [{:body body} response]
    (respond :html
      (html
       (doctype :html5)
       [:html {:lang "en"}
        (head)
        [:body {:class "bg-purple"}
          [:vstack {:class "mw8 center pa4-ns pa3"}
           (menu)
           body]
         [:script {:src "/app.js"}]]]))))


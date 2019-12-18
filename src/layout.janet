(import joy :prefix "")

(defn app [response]
  (let [{:body body} response]
    (respond :html
      (html
       (doctype :html5)
       [:html {:lang "en"}
        [:head
         [:meta {:charset "utf-8"}]
         [:meta {:name "viewport" :content "width=device-width, initial-scale=1"}]
         [:link {:href "/tachyons.css" :rel "stylesheet"}]
         [:link {:href "/pylon.css" :rel "stylesheet"}]
         [:link {:href "/app.css" :rel "stylesheet"}]
         [:title "Joy Framework"]]
        [:body {:class "bg-purple-gradient"}
          [:div {:class "mw8 center pa4-ns pa3"}
           [:hstack {:spacing "l"}
            [:div {:class "white"} "😇Joy"]
            [:spacer]
            [:a {:href "https://github.com/joy-framework/joy" :class "white"} "Github"]]
           body]
         [:script {:src "/app.js"}]]]))))

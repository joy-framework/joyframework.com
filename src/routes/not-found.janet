(import joy :prefix "")

(defn index [request]
  [:div {:class "pt4 pt5-ns"}
   [:vstack {:spacing "l"}
    [:hstack {:spacing "l" :class "responsive"}
     [:vstack {:spacing "l"}
      [:div {:class "mw8 white"}
       [:h1 {:class "white lh-title f1-ns f2"}
        "404 - Not Found"]
       [:div {:class "white lh-copy f4"}
        [:span "We can't seem to find what you're looking for. Feel free to click on the Joy logo, or any of our navigation links!"]]]]]
      ]])

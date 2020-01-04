(import joy :prefix "")

(defn code []
  [:div {:class "mw6"}
   [:span {:class "washed-purple"} "("] [:span {:class "orange"} "use"] [:span " "] [:span {:class "white"} "joy"] [:span {:class "washed-purple"} ")"]
   [:br]
   [:br]
   [:span {:class "washed-purple"} "("] [:span {:class "orange"} "defn"] [:span " "] [:span {:class "white"} "home"] [:span " "] [:span {:class "washed-purple"} "["] [:span {:class "white"} "request"] [:span {:class "washed-purple"} "]"]
   [:br]
   [:span (raw "&nbsp;&nbsp;")]
   [:span {:class "washed-purple"} "("]
   [:span {:class "white"} "render"]
   [:span " "]
   [:span {:class "orange"} ":text"]
   [:span " "]
   [:span {:class "light-orange"} `"You found joy!"`]
   [:span {:class "washed-purple"} "))"]
   [:br]
   [:br]
   [:span {:class "washed-purple"} "("]
   [:span {:class "orange"} "def"]
   [:span " "]
   [:span {:class "white"} "app"]
   [:span " "]
   [:span {:class "washed-purple"} "("]
   [:span {:class "white"} "handler"]
   [:span " "]
   [:span {:class "washed-purple"} "[["]
   [:span {:class "orange"} ":get"]
   [:span " "]
   [:span {:class "light-orange"} `"/"`]
   [:span " "]
   [:span {:class "white"} "home"]
   [:span {:class "washed-purple"} "]]"]
   [:span {:class "washed-purple"} ")"]
   [:span {:class "washed-purple"} ")"]
   [:br]
   [:br]
   [:span {:class "washed-purple"} "("]
   [:span {:class "white"} "server"]
   [:span " "]
   [:span {:class "white"} "app"]
   [:span " "]
   [:span {:class "orange"} "8000"]
   [:span {:class "washed-purple"} ")"]])


(defn h1 [s]
  [:h1 {:class "f3 lh-title white black-ns"} s])


(defn features []
  [:hstack {:spacing "l" :class "responsive"}
   [:div {:class "feature-1"}
    (h1 "Starts fast, stays fast")
    [:p {:class "lh-copy black-ns white"} "Joy starts up in milliseconds so you can get started (and restarted) without worrying about restarting the repl and waiting... a while"]]
   [:div {:class "feature-2"}
    (h1 "Low Memory Usage")
    [:p {:class "lh-copy black-ns white"} "Joy takes so little memory, you can run dozens (if not hundreds) of instances on a cheap virtual private server"]]
   [:div {:class "feature-3"}
    (h1 "Clojure-like")
    [:p {:class "lh-copy black-ns white"} "Joy is written with janet, a modern lisp with clojure-ish idioms, including data literals and immutable data structures"]]])


(defn index [request]
  [:div {:class "pt4 pt5-ns"}
   [:vstack {:spacing "l"}
    [:hstack {:spacing "l" :class "responsive"}
     [:vstack {:spacing "l"}
      [:div {:class "mw6 white"}
       [:h1 {:class "white lh-title f1-ns f2"}
        "Make web apps fast with Joy"]
       [:div {:class "white lh-copy f4"}
        [:span "Joy is a web framework written in "]
        [:a {:href "https://janet-lang.org" :class "white underline"} "janet"]
        [:span " for people who like clojure syntax, fast startup time and very low memory usage."]]]]

     [:div {:class "br3 pa4 bg-purple"}
      (code)]]

    [:div {:class ""}
     (features)]]])

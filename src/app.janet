(import joy :prefix "")
(import ./layout :as layout)
(import ./routes :as routes)


(defn web [handler]
  (-> handler
      (body-parser)
      (extra-methods)
      (query-string)
      (server-error)
      (logger)
      (static-files)))


(def home (-> (handler routes/app)
              (layout layout/app)
              (web)))


(def posts (-> (handler routes/post)
               (layout layout/post)
               (web)
               (not-found)))


(def app (app home posts))


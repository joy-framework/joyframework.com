(import joy :prefix "")
(import ./layout :as layout)
(import ./routes :as routes)


(def app (-> (handler routes/app)
             (layout layout/app)
             (body-parser)
             (extra-methods)
             (query-string)
             (server-error)
             (logger)
             (static-files)
             (not-found)))

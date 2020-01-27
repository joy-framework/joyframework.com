(import joy)
(import ./src/app :prefix "")

(def port (scan-number (joy/env :port)))

(joy/server app port)

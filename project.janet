(declare-project
  :name "joy-framework.com"
  :description ""
  :dependencies [{:repo "https://github.com/joy-framework/joy" :tag "27d24ed98935277b9c26d972cb0c16f4f76cdbba"}
                 {:repo "https://github.com/joy-framework/tester" :tag "c14aff3591cb0aed74cba9b54d853cf0bf539ecb"}]
  :author "@swlkr"
  :license "MIT"
  :url "https://joy-framework.com"
  :repo "https://github.com/joy-framework/joy-framework.com")

(declare-executable
  :name "joyframeworkdotcom"
  :entry "main.janet")

(phony "server" []
  (do
    (os/shell "pkill -xf 'janet main.janet'")
    (os/shell "janet main.janet")))

(phony "watch" []
  (do
    (os/shell "pkill -xf 'janet main.janet'")
    (os/shell "janet main.janet &")
    (os/shell "fswatch -o src | xargs -n1 -I{} ./watch")))


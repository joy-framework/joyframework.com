(declare-project
  :name "joy-framework.com"
  :description ""
  :dependencies [{:repo "https://github.com/joy-framework/joy" :tag "0.5.2"}
                 {:repo "https://github.com/joy-framework/tester" :tag "0.1.0"}]
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


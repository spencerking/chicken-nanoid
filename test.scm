(load "nanoid.scm")

(display (generate-nanoid 25))

(display "\n")

(display (generate-nanoid-custom 25 (list->vector '("1" "2" "q"))))

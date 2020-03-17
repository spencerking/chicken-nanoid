(import (chicken random))

(define alphabet (list->vector '("_" "-" "0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")))

(define size 64)

(define (generate-nanoid len) 
    (cond ((= 0 len) "")
        (else (string-append (vector-ref alphabet (pseudo-random-integer size)) (generate-nanoid (- len 1)))))
  )

(display (generate-nanoid 25))

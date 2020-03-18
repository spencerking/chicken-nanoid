(import (chicken random))

; The default alphabet
(define a (list->vector '("_" "-" "0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")))

; The size of the default alphabet
(define s 64)

; Generates a nanoid of length len from a given alphabet
(define (internal-generate len alphabet size) 
    (cond ((= 0 len) "")
        (else (string-append (vector-ref alphabet (pseudo-random-integer size)) (internal-generate (- len 1) alphabet size))))
  )

; Wrapper around the generate function
; Uses the default alphabet with a user defined length
(define (generate-nanoid len)
  (internal-generate len a s))

; Wrapper around the generate function
; Uses a user defined length and alphabet
(define (generate-nanoid-custom len alphabet)
  (internal-generate len alphabet (vector-length alphabet)))

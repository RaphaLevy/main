#lang racket

<<<<<<< HEAD
(require rackunit)

=======
>>>>>>> 6799083ec9500221e05ca839d50ab540bc0b97df
;Questão 18

;Given two indices, I and K, the slice is the list containing
;the elements between the I'th and K'th element of the original list (both limits included).
;Start counting the elements with 1.

<<<<<<< HEAD
=======
;Example:
;* (slice '(a b c d e f g h i k) 3 7)
;(C D E F G)

>>>>>>> 6799083ec9500221e05ca839d50ab540bc0b97df
(define (select list n)
  (if (or (= n 0) (null? list)) empty
      (cons (car list) (select (cdr list) (- n 1)))))

(define (slice list i k)
  (cond ((empty? list) empty)
        ((= i 1) (slice list 0 k))
        ((> i 1) (slice  (cdr list) (- i 1) (- k 1)))
        (else (select list k))))


(slice '(1 2 3 4 5 6 7 8 9) 2 8)
<<<<<<< HEAD
(slice '(1 2 3 4 5 6 7 8 9 10 11 12 13) 3 10)
(check-equal? (slice '(a b c d e f g h i k) 3 7) '(c d e f g))
(check-equal? (slice '(a b c d e f g h i k l m n o) 4 9) '(c d e f g))

(provide slice)
=======
(slice '(1 2 3 4 5 6 7 8 9) 1 9)
(slice '(a b c d e f g h i k) 3 7)
>>>>>>> 6799083ec9500221e05ca839d50ab540bc0b97df

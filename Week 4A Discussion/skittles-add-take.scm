; Using objects to represent Skittles is kind of a classic (I’m really not sure why). But it’s easy enough, so
; let’s try one!
; Consider this class skittle (the singular of “skittles”, of course):
; (define-class (skittle color))
; This is a class with no methods (how many interesting things can a skittle do?) and a single property – its
; color. Now, we’d like to hold skittles in a bag, so let’s define a bag class:
; (define-class (bag)
;  (instance-vars (skittles ‘()))
;  (method (tag-line) ‘taste-the-rainbow)
;  (method (add s) ...) ;; adds a skittle s to the bag
;  (method (take) ...)) ;; takes a skittle from the bag
; A bag object will be able to hold multiple skittles, and you can add or take skittles to or from the bag.
; 1.Implement the add and take methods.

(define-class (skittle color))

(define-class (bag)
 (instance-vars (skittles '()))
 (method (tag-line) 'taste-the-rainbow )
 (method (add s) (set! skittles (cons s skittles))) ;; adds a skittle s to the bag
 (method (take) (set! skittles (cdr skittles)))) ;; takes a skittle from the bag

(define bg (instantiate bag))
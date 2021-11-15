; 2.Implement a (take-color color) method that takes a skittle of the specified color from the
; bag. You can use find or remove.

(define-class (skittle color))

(define-class (bag)
 (instance-vars (skittles '()))
 (method (tag-line) 'taste-the-rainbow )
 (method (add s) (set! skittles (cons s skittles))) ;; adds a skittle s to the bag
 (method (take) (set! skittles (cdr skittles)));; takes a skittle from the bag
 (method (take-color color) (get-color skittles color))
 ) 

(define (get-color skittles color)
	(cond ((null? skittles) '())
		((equal? (ask (car skittles) 'color ) color) color)
		( (get-color (cdr skittles) color))))

(define bg (instantiate bag))
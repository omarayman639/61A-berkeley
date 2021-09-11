;Implement a representation for rectangles in
;a plane. (Hint: You may want to make use of Exercise 2.2.) In
;terms of your constructors and selectors, create procedures
;that compute the perimeter and the area of a given rectangle.

(define (make-point x y)
   (cons x y))

(define (x-point point)
   (car point))

(define (y-point point)
   (cdr point))

(define (make-rect bottom-left top-right)
   (cons bottom-left top-right))

(define (bottom-left rect)
   (car rect))
   
(define (bottom-right rect)
   (make-point (x-point (cdr rect)) (y-point (car rect))))

(define (top-right rect)
   (cdr rect))

(define (top-left)
   (make-point (x-point (car rect)) (y-point (cdr rect))))

(define (rect-length rect)
   (- (x-point (bottom-right rect)) (x-point (bottom-left rect))))

(define (rect-width rect)
   (- (y-point (top-right rect)) (y-point (bottom-right rect))))

(define (rect-area rect)
   (* (rect-length rect) (rect-width rect)))

(define (rect-peri rect)
   (* 2 (+ (rect-length rect) (rect-width rect))))
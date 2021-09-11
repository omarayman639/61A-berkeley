
;Implement a representation for rectangles in
;a plane. (Hint: You may want to make use of Exercise 2.2.) In
;terms of your constructors and selectors, create procedures
;that compute the perimeter and the area of a given rectangle.

(define (make-rectangle length width)
   (cons length width))

(define (length rectangle)
   (car rectangle))

(define (width rectangle)
   (cdr rectangle))

(define (perimeter rectangle)
      (* 2 (length rectangle) (width rectangle)) 
   )

(define (area rectangle)
      (* (length rectangle) (width rectangle))  
   )

(make-rectangle (make-segment (make-point 0 0) (make-point 10 0)) (make-segment (make-point 0 0) (make-point 0 10)))
(area (make-rectangle (make-segment (make-point 0 0) (make-point 10 0)) (make-segment (make-point 0 0) (make-point 0 10))) )
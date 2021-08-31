; I’m standing at the origin of some x-y coordinate system for no reason when a pot of
;gold dropped onto the point (x, y). I would love to go get that gold, but because of some
;arbitrary constraints or (in my case) mental derangement, I could only move right or up
;one unit at a time on this coordinate system. I’d like to find out how many ways I can
;reach (x, y) from the origin in this fashion (because, umm, my mother asked). Write
;count­ways that solves this for me.

(define (count­ways x y)
    (cond ((or (< x 0) (< y 0)) 0)
          ((and (= x 0) (= y 0)) 1)
          (else (+ (count­ways (­ x 1) y)
                   (count­ways x (­ y 1)))))) 


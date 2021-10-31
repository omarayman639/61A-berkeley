; Write (square-tree tree), which returns the same tree structure, but with every element
; squared.

(define (square-tree tree)
   (make-tree (square (datum tree)) (square-forest (children tree)))      
)

(define (square-forest forest)
   (if (null? forest)
      '()
      (cons (square-tree (car forest)) (square-forest (cdr forest))))
   ) 
   
   
   
   (define (square x) (* x x)) 
   (define make-tree cons)
    (define datum car) (define children cdr) 
    (define (leaf? node) (null? (children node)) ) 
    
    (define x (make-tree 3 (list (make-tree 4 '()) (make-tree 5 '()) )))
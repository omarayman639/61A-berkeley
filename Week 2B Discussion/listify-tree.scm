; Write (listify-tree tree) that turns the tree into a list in any order. 

(define (listify-tree tree)
   (cons (datum tree) (listify-forest (children tree)))
)

(define (listify-forest forest)
   (if (null? forest)
     '() 
      (append (listify-tree (car forest)) (listify-forest (cdr forest))))
)

;test tree
(define x 
   (make-tree 3 (list (make-tree 4 '()) (make-tree 5 '())))
)

(define kennedy
      (make-tree 'joseph (list (make-tree 'johnf (list 'johnjr ) )  (make-tree 'robert (list 'katheline ) )  (make-tree 'edward '())) )
)

(define kennedy 
      (make-tree 'joseph (list (make-tree 'johnf (make-tree 'johnjr (make-tree 'caroline '())) )  (make-tree 'robert (make-tree 'katheline '()) )  (make-tree 'edward '())) )
)
      
(define bush 
      (make-tree 'georgehw (list (make-tree 'georgew (make-tree 'jenna (make-tree 'barbara '())) )  (make-tree 'jeb (make-tree 'noelle '()) )  (make-tree 'neil '())) )
)

(define make-tree cons)
(define datum car)
(define children cdr)
(define (leaf? node)
(null? (children node)) )

(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))
(define (make-tree entry left right)
    (list entry left right))


(define tree1
    (make-tree 7
	(make-tree 3
	    (make-tree 1 '() '())
	    (make-tree 5 '() '()))
	(make-tree 9 '() (make-tree 11 '() '()))))
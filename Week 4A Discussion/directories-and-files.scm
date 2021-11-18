; Consider a directory class that can hold multiple directories and files:
; (define-class (directory name)
;  (instance-vars (content ‘()))
;  (method (type) ‘directory) ...)
; And a file class that holds a list of symbols as content:
; (define-class (file name content)
;  (method (type) ‘file) ...)
; We’d like to be able to do these:
; (define root (instantiate directory ‘root))
; (define hw1 (instantiate file ‘hw1.scm ‘(I have no idea how to do this)))
; (define hw2 (instantiate file ‘hw2.scm ‘(please have mercy on me)))
; (define proj1-soln
;  (instantiate file ‘proj1.scm ‘(my dad is going to kill me)))
; (ask root ‘add hw1) ;; add the hw1 file to root
; (ask root ‘add hw2) ;; add the hw2 file to root
; (ask root ‘mkdir ‘proj1) ;; makes an empty directory in root named ‘proj1’
; (define proj1 (ask root ‘cd ‘proj1)) ;; returns directory named ‘proj1’
; (ask proj1 ‘add proj1-soln) ;; add file proj1-soln to directory proj1
; (ask root ‘mv ‘hw1.scm ‘proj1) ;; moves file hw1.scm from root to proj1
; (ask root ‘ls) ;; returns list ‘(proj1 hw2.scm)
; (ask proj1 ‘ls) ;; returns list ‘(hw1.scm proj1.scm)
; 1.Implement the add, mkdir, cd, mv and ls methods for the directory class.
; 2.Implement a size method for the file class; it returns the length of its content.
; 3.The size of a directory is defined as the sum of the sizes of all files in that directory and in all its subdirectories. 
; Implement the size method for the directory class.

(define-class (directory name)
	(instance-vars (content '()))
	(method (type) 'directory ) 
	(method (add data) (set! content (cons data content)))
	(method (mkdir dir) (ask self 'add (instantiate directory dir)))
	(method (cd dirname) (get-dir content dirname))
	(method (mv 'thing 'dir ) 
		(let ((found (find (lambda(f) (eq? thing (ask f 'name )))
		content)))
		(ask (ask self 'cd dir) 'add found)
		(set! content (remove found content)))
	)
	(method (ls) (map (lambda (f) (ask f 'name )) content))
	(method (size) (accumulate (lambda (x y) (+ (ask x 'size ) y)) 0 content))
)


(define (get-dir content name)
	(cond ((null? content) '())
		((equal? (ask (car content) 'name ) name) (car content))
		( (get-dir (cdr content) name))))

(define-class (file name content) 
	(method (type) 'file )
(method (size) (length content))
)

(define root (instantiate directory 'root))
(define hw1 (instantiate file 'hw1.scm '(I have no idea how to do this)))
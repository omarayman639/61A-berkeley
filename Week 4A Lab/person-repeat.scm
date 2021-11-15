;  Modify the person class given in the lecture notes for week 7 (it’s in the file demo2.scm in the
; ~cs61a/lectures/3.0 directory) to add a repeat method, which repeats the last thing said.


(define-class (person name)
	(instance-vars (last-said '()))
  	(method (say stuff) (begin (set! last-said stuff) stuff))
  	(method (ask stuff) (begin ( set! last-said (ask self 'say (se '(would you please) stuff))) 
	  (ask self 'say (se '(would you please) stuff))))

  	(method (greet) (begin (set! last-said (ask self 'say (se '(hello my name is) name)))
	   (ask self 'say (se '(hello my name is) name))))

	(method (repeat) last-said)  
	 )


(define omar (instantiate person 'omar))
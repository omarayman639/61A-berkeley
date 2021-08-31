;Write a procedure substitute that takes three arguments: a sentence, an old word, and a new
;word. It should return a copy of the sentence, 
;but with every occurrence of the old word replaced by the new word.

(define (substitute sent old new)
   (cond ((empty? sent) '())
      ((equal? old (first sent)) (se new (substitute (bf sent) old new)))
      (else (se (first sent) (substitute (bf sent) old new)))
      )                     
   )
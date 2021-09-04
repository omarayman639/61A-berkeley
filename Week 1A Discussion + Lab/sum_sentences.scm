;Define a procedure sum­of­sents that takes in two sentences and outputs a sentence
;containing the sum of respective elements from both sentences. The sentences do not
;have to be the same size!

(define (sum­of­sents sent1 sent2)
    (cond ((empty? sent1) sent2)
          ((empty? sent2) sent1)
                (else (se (+ (first sent1) (first sent2))
                    (sum­of­sents (bf sent1) (bf sent2))))))

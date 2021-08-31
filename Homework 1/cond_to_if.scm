;Convert the following cond statement into its equivalent if statement

(cond ((= area­code 415) (word 'san 'francisco))
((= area­code 510) 'berkeley)
(else 'where­you­from))

;solution:
(if (= area­code 415)
    (word 'san 'francisco)
    (if (= area­code 510)
        'berkeley
        'where­you­from))
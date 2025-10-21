(defun f(s) (append (last s) (cdr (butlast s)) (list(car s)) )  )
(print (f '(h t m l )))
(format t "~%--------------------------------")
(format t "~%Lab 2")
(format t "~%--------------------------------")
(format t "~%Assingment 3")
(format t "~%")
(format t "~%Default list:")
(format t "~%")
( print '(1 -2 -3 4 5 6 -7 8 9) )
(format t "~%")
(format t "~%")

(defun add (L)
  (cond
		(
			(null L) nil
		)
    
		(
			(null (cdr L)) L
		)
    
		(
			t (  cons ( + (car L) (car (last L)) ) ( add (butlast (cdr L)) )  )
		)
   )
)

;;(trace add)
(format t "~%Additioned list:")
(format t "~%")
( print (add '(1 -2 -3 4 5 6 -7 8 9) ) )
(format t "~%")
;;(untrace add)
(format t "~%--------------------------------")


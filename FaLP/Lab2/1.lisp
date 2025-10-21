(format t "~%--------------------------------")
(format t "~%Lab 2")
(format t "~%--------------------------------")
(format t "~%Assingment 1")
(format t "~%")
(format t "~%Default list:")
(format t "~%")
( print '(-1 d 6 -3 a 0) )
(format t "~%")

(defun change(x L)
				( 
						cond
								(
									(null L) nil
								)
								(
									(listp (car L)) (cons (change x (car L)) (change x (cdr L)))
								) 
								(
									(and (numberp (car L)) (>= (car L) 0)) (cons (list (car L) x ) (change x (cdr L)))
								) 
								(
									t ( cons (car L) ( change x (cdr L) ) ) 
								) 
					) 	
 
				)

;;(trace change)
(format t "~%Changed list:")
(format t "~%")
( print (change '* '(-1 d 6 -3 a 0)) )
(format t "~%")
;;(untrace change)
(format t "~%--------------------------------")


(format t "~%--------------------------------")
(format t "~%Lab 2")
(format t "~%--------------------------------")
(format t "~%Assingment 2")
(format t "~%")
(format t "~%Default lists:")
(format t "~%")
(format t "~%List 1")
( print '(1 2 3 4 5 6 7 8) )
(format t "~%")
(format t "~%List 2")
( print '(a s d f) )
(format t "~%")
(format t "~%")

(defun comb(L1 L2)
				( 
					cond
						(
							( and ( null (car L1) ) ( null (car L2) ) ) nil 
						)
						(
							(null (car L1)) (cons (car L2) (comb L1 (cdr L2)))
						)
						(
							t ( cons (car L1) (comb L2 (cdr L1)) )
						)
				)
)

;;(trace comb)

(format t "~%Combined list:")
(format t "~%")
( print (comb '(1 2 3 4 5 6 7 8) '(a s d f)) )
(format t "~%")
;;(untrace comb)
(format t "~%--------------------------------")


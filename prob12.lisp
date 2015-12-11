(defun decode (l)
	; unpack the head then pass the rest of the body
	(if (null l)
		nil
		(let ((head (first l)))
			(if (listp head)
				(append (unpack head) (decode (rest l)))  ; (\d \w)
				(cons head (decode (rest l)))  ; \w
			)
		)
	)
)

(defun unpack (l)
	(if (> (first l) 0)
		(cons (second l) (unpack (list (- (first l) 1) (second l))))
		nil
	)
)
(defun drop (l n)
	; 
	(if (null l)
		nil
		(append (nthcar (- n 1) l) (drop (nthcdr n l) n))
	)
)

(defun nthcar (n l)
	; (reverse (nthcdr n (reverse l)))
	(if (null l)
		nil
		(if (< n 1)
			nil
			(cons (first l) (nthcar (- n 1) (rest l)))
		)
	)
)
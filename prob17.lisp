(defun split (l n)
	(if (null l)
		nil
		(list (nthcar n l) (nthcdr n l))
	)
)

(defun nthcar (n l)
	(if (null l)
		nil
		(if (< n 1)
			nil
			(cons (first l) (nthcar (- n 1) (rest l)))
		)
	)
)
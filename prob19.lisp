(defun rotate (l n)
	(cond
		((> n 0)
			(append (nthcdr n l) (nthcar n l))
		)
		((< n 0)
			(append (last l (* n -1)) (nbutlast l (* n -1)))
		)
		(t l)
	)
)

(defun nthcar (n l)
	; get the first n elems of a list
	(if (null l)
		nil
		(if (< n 1)
			nil
			(cons (first l) (nthcar (- n 1) (rest l)))
		)
	)
)
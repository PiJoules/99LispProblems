(defun slice (l start end)
	(nthcdr (- start 1) (nthcar end l))
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
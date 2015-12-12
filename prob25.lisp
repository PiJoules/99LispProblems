(defun rnd-permu (l)
	; "Generate a random permutation of the elements of a list."
	; Basically shuffle the list.
	(rnd-select l (list-length l))
)

(defun rnd-select (l n)
	(if (null l)
		nil
		(if (< n 1)
			'()
			; (cons (nth (random (list-length l)) l) (rnd-select ()))
			(let ((i (random (list-length l))))
				(cons (nth i l) (rnd-select (remove-at l (+ i 1)) (- n 1)))
			)
		)
	)
)

(defun remove-at (l n)
	; Remove the nth elem of a list (not index n)
	; (remove-at '(a b c d) 2) => (A C D)
	(if (null l)
		nil
		(append (subseq l 0 (- n 1)) (nthcdr n l))
	)
)
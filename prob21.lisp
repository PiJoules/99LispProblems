(defun insert-at (elem l n)
	; "Insert an element at a given position into a list."
	; Example:
	; * (insert-at 'alfa '(a b c d) 2)
	; (A ALFA B C D)
	; 
	; They actually mean the "nth position" instead of "psoition n"
	(append (subseq l 0 (- n 1)) (list elem) (nthcdr (- n 1) l))
)
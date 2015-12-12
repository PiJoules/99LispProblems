(defun range (start end)
	; If first argument is smaller than second, produce a list in decreasing order.
	; (range 4 9) => (4 5 6 7 8 9)
	(if (<= start end)
		(cons start (range (+ start 1) end))
		'()
	)
)
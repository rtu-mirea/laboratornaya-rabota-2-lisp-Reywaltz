(defun pos_insert (pos lst element)
    (let ((fst  (subseq lst 0 pos))
          (scnd (subseq lst pos)))
        (push element scnd)
        (concatenate 'list fst scnd)))
(list 26 14 58 0 7 6)
(pos_insert 2 '(26 14 58 0 7 6) '99)

    
(defun del_func (index list)
  (cond ((null list) nil)
  ((zerop index) (cdr list))
  (t (cons (car list) (del_func (1- index) (cdr list))))))
(del_func 2 (list 12 59 82 91 32 84 56 22))


(defun index (element lst)
  (cond ((eq element (car lst)) 0)
        (t (+ 1 (index element (cdr lst))))))
(index '2 '(12 13 14 2 16 18))
(defun file_read()
(let ((in (open "C:/Users/GeorgePC/Desktop/Учёба/Функциональное прог/lab_2/2_lab/file.txt" :if-does-not-exist nil)))
      (when in
            (loop for line = (read-line in nil)
            while line do (format t "~a~%" line))
      (close in))))
(file_read)
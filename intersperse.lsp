
(defun intersperse (o l) (interwrap o l ()))
(defun interwrap (o l acc)
  (cond ((null l) (reverse acc))
        ((null (cdr l)) (interwrap o (cdr l) (cons (car l) acc)))
        (t (interwrap o (cdr l) (cons o (cons (car l) acc))))))

(defun intertwo (o l) (intertwowrap o (reverse l) ()))
(defun intertwowrap (o l acc)
  (cond ((null l) acc)
        ((null (cdr l)) (intertwowrap o (cdr l) (cons (car l) acc)))
        (t (intertwowrap o (cdr l) (cons o (cons (car l) acc))))))

(defun interitr (o l)
  (let ((acc ()))
    (do ((i 0 (+ i 1)))
        ((>= i (length l)) (reverse acc))
      (if (= i (- (length l) 1))
          (setf acc (cons (nth i l) acc))
          (setf acc (cons o (cons (nth i l) acc)))))))

(defun interitr2 (o l)
  (do ((i 0 (+ i 1))
       (acc () (cons o (cons (nth i l) acc))))
    ((>= i (length l)) (reverse acc)))) 

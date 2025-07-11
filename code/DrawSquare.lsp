(defun c:DrawSquare (/ pt1 sideLength pt2 pt3 pt4) 
  (princ "\n--- Draw Square Routine ---")

  ;; Get the first corner from the user
  (setq pt1 (getpoint "\nPick the lower-left corner of the square: "))

  ;; Get the side length from the user
  (setq sideLength (getreal "\nEnter the side length of the square: "))

  ;; Check if a valid sideLength was entered (must be greater than 0)
  (if (and pt1 (> sideLength 0)) 
    (progn 
      ;; Calculate the other three corners
      (setq pt2 (list (+ (car pt1) sideLength) (cadr pt1))) ; Lower-right corner
      (setq pt3 (list (+ (car pt1) sideLength) (+ (cadr pt1) sideLength))) ; Upper-right corner
      (setq pt4 (list (car pt1) (+ (cadr pt1) sideLength))) ; Upper-left corner

      ;; Draw the square using the PLINE command and close it
      (command "_PLINE" pt1 pt2 pt3 pt4 "C")

      (princ "\nSquare drawn successfully!")
    )
    (princ "\nInvalid input. Side length must be positive and a point must be selected.")
  )
  (princ) ; Suppress the last evaluated expression
)

;; Provide a message to the user when the LISP is loaded
(princ "\nType DRAWSQUARE to run the square drawing routine.")
(princ)
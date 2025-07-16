(defun c:AUTOCOUNT () 
  
  (if (= InitialValue nil)(setq InitialValue 1))  
  (setq TempInitialValue (getint (strcat "\nEnter starting number: <" (rtos InitialValue 2 0) ">: ")))
  (if TempInitialValue (setq InitialValue TempInitialValue)) 
    
  (if (= Incrementer nil)(setq Incrementer 1))
  (setq TempIncrementer (getint (strcat "\nEnter increment value: <" (rtos Incrementer 2 0) ">: " )))
  (if TempIncrementer (setq Incrementer TempIncrementer)) 
  
  (while (setq POINT (getpoint "\nSelect point for counter: ")) 
    (command "_TEXT" POINT 6 0 InitialValue)
    (setq InitialValue (+ InitialValue Incrementer))
  )
  (princ)
)
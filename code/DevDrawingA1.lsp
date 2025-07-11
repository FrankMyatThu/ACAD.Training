(defun C:DRAWSHAPE ()
  (command "_LINE"
    '(100 100 0)   ; Start of first line (P1)
    '(300 100 0)   ; End of first line (P2)
    '(400 250 0)   ; End of second line (P3) - automatically connects from P2
    '(200 300 0)   ; End of third line (P4)
    '(50 200 0)    ; End of fourth line (P5)
    "C"            ; Close the polygon back to P1
  )

  ; Now for the internal lines. Each set of two points defines a new line.
  (command "_LINE"
    '(100 100 0)   ; P1
    '(250 150 0)   ; An internal point (e.g., P7)
    ""             ; End the line command
  )

  (command "_LINE"
    '(200 300 0)   ; P4
    '(150 180 0)   ; An internal point (e.g., P6)
    ""
  )

  (command "_LINE"
    '(300 100 0)   ; P2
    '(150 180 0)   ; P6
    ""
  )

  (command "_LINE"
    '(400 250 0)   ; P3
    '(150 180 0)   ; P6
    ""
  )

  (command "_LINE"
    '(50 200 0)   ; P5
    '(250 150 0)   ; P7
    ""
  )

  ; ... continue for all other internal lines
  ; You'll need to carefully map out all the connections.

  (princ) ; Suppress the return value in the command line
)
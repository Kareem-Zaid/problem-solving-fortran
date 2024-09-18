 10   READ(*,*) A,B,C
      IF(A.EQ.0.0) GOTO 70
      CALL SOLVE(A,B,C)
      CALL OUTPUT
      GOTO 10
  70  STOP
      END
      SUBROUTINE SOLVE(A,B,C)
      COMMON X1,X2,Z1,Z2
      D=B**2-4*A*C
      IF(D.LT.0) GOTO 20
      X1=(-B+SQRT(D))/(2*A)
      X2=(-B-SQRT(D))/(2*A)
      Z1=0
      GOTO 30
  20  X1=-B/(2*A)
      Z1=SQRT(-D)/(2*A)
      X2=X1
      Z2=-Z1
   30 RETURN
      END
      SUBROUTINE OUTPUT
      COMMON X1,X2,Z1,Z2
      IF(Z1.EQ.0.0) THEN
      WRITE(*,*) X1,X2
      ELSE
      WRITE(*,60) X1,Z1,X2,Z2
      ENDIF
   60 FORMAT(F7.3,'+',F7.3,'J',7X,2F7.3,'J')
      RETURN
      END       
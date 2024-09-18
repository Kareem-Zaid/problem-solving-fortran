      INTEGER A
      DIMENSION A(50)
      DATA A(1),A(2),A(3)/7.2,2.7,3.3/
      DO 10 I=1,2
      DO 10 J=I+1,3
      IF(A(I).LE.A(J)) GOTO 10
      X=A(I)
      A(I)=A(J)
      A(J)=X
   10 CONTINUE
      WRITE(*,*) (A(I),I=1,3)
      STOP
      END     
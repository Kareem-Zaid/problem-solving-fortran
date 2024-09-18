      REAL I
      DATA X,M,I/3,1,-1/
      SUM=0.0
      DO 10 J=1,8
      I=I+2
      P=1
      DO 20 K=1,I
      P=K*P
   20 CONTINUE
      M=M+1
      SUM=SUM+(-1)**M*X**I/P
   10 CONTINUE
      WRITE(*,*) SUM,X,M,I
      STOP
      END     
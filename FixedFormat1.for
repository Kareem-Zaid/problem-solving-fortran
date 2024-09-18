      WRITE(*,30)
  30  FORMAT(9X,'N',8X,'N-SQ',6X,'N-CU',3X)   
      DO 10 N=11,99
      N2=N**2
      N3=N**3
      WRITE(*,20) N,N2,N3
  10  CONTINUE
  20  FORMAT(I10,1X,I10,2X,I10)  
      STOP
      END
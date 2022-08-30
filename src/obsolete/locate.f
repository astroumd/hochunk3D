      SUBROUTINE locate(xx,n,x,j)
c     from numerical recipes
c     searches an ordered table, using bisection
      INTEGER j,n
      REAL*8 x,xx(n)
      INTEGER jl,jm,ju
      jl=0
      ju=n+1
10    if(ju-jl.gt.1)then
        jm=(ju+jl)/2
        if((xx(n).gt.xx(1)).eqv.(x.gt.xx(jm)))then
          jl=jm
        else
          ju=jm
        end if
      goto 10
      end if
      j=jl
      return
      END

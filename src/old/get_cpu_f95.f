      real function get_cpu()

c  use gfortran intrinsic CPU_TIME

      call CPU_TIME(get_cpu)

      return
      end
	
      real function etime()

c  use gfortran intrinsic CPU_TIME

      call CPU_TIME(etime)

      return
      end


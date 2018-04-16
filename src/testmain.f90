program test_comp
  use sample_module
  implicit none

  real(kind=real8) x, y, z

  x = 5.2
  y = 20.7
  z = 0.0

  call sample_sub(x, y, z)

  print *, "z = ", z

end program test_comp

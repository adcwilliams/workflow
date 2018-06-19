! Program: test_comp
! 
!> @author
!> Andrew Williams a.d.c.williams@bristol.ac.uk
!> Bristol Composites Institute (ACCIS), University of Bristol
!
! Description:
!> Simple main program to demonstrate documentation and use of modules.
!
! Code Description: 
!   Language:           Fortran 2003
!   Software Standards: "European Standards for Writing and  
!     Documenting Exchangeable Fortran 90 Code"
program test_comp
  use sample_module
  implicit none

  !> Declare variables used in the calculation
  real(kind=real8) x, y, z

  ! Set some initial values designed to produce a known result
  x = 5.2
  y = 20.9
  z = 0.0

  ! Perform the sample calculation and print out the answer.
  call sample_sub(x, y, z)

  print *, "z = ", z

end program test_comp

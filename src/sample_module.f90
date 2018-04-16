! Module: sample_module
!
!> @author
!> Bristol Composites Institute (ACCIS), University of Bristol
!
! Description:
!> An example Fortran 90+ style module
!
! Code Description: 
!   Language:           Fortran 90. 
!   Software Standards: "European Standards for Writing and  
!     Documenting Exchangeable Fortran 90 Code". 
!
!> @param real8 Double Precision real type in Fortran 2003 style
!> @param zero_dp Zero in real8 precision
module sample_module
  implicit none
  private

  integer, parameter, public :: real8 = selected_real_kind(15)
  real(kind=real8), parameter, public :: zero_dp = 0.0d0

  public :: sample_sub

contains
!
!> @author
!! Bristol Composites Institute (ACCIS), University of Bristol
!
!> @brief
!! A sample subroutine encapsulated in a module
!> @details
!! Description of how the routine works
!! Extended description
!
!> @param[in] varA First paramater
!> @param[in] varB Second paramater
!> @param[out] resZ Return result
!
  subroutine sample_sub(varA, varB, resZ)
    implicit none

    real(kind=real8), intent(in) :: varA
    real(kind=real8), intent(in) :: varB

    real(kind=real8), intent(out) :: resZ

    resZ = varA + varB

  end subroutine sample_sub

end module sample_module

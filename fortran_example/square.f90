subroutine square()
    use vars_mod
    ! 可以访问全局变量 a 和 b
    a = a * a
    b = b * b
  end subroutine square
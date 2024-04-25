module global_vars
    implicit none
    integer :: a, c
end module global_vars
  
  program main
    use global_vars
    ! 定义全局变量 a 和 c
    a = 5
    c = 10
  
    ! 调用子过程，直接操作全局变量
    call my_subroutine()
  
    ! 打印修改后的 c 的值
    print *, "Modified c:", c

contains
    subroutine my_subroutine()
        use global_vars
        ! 可以直接访问主程序中定义的变量 a 和 c
        c = a + 2
      end subroutine my_subroutine    
end program main
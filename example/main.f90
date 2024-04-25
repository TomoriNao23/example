program main
    use exchange_mod
    external square
    ! 定义全局变量 a 和 c
    a = 5
    b = 2
  
    ! 调用子过程，直接操作全局变量
    call square()
    call exchange(a,b)

    ! 打印修改后的 c 的值
    print *, "result:", a,b

end program main
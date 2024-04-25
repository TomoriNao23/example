module exchange_mod
use vars_mod
contains
subroutine exchange(x,y)
    integer ::x,y,z
    z = x
    x = y
    y = z
endsubroutine exchange
end module exchange_mod
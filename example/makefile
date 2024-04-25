# 定义编译器和编译选项
FC = ifort
FFLAGS = -O2

# 定义目标文件和依赖关系
TARGET = exe
MODULES = vars_mod exchange_mod#顺序
SUBROUTINE = square
MAIN = main
OBJS = $(MAIN:=.o) $(MODULES:=.o) $(SUBROUTINE:=.o)

#生成可执行文件
$(TARGET): $(OBJS) 
	$(FC) $(FFLAGS) $(OBJS) -o $@

#编译模块子函数主程序
$(MAIN:=.o): $(MAIN:=.f90) $(MODULES:=.o) $(SUBROUTINE:=.o)
	$(FC) $(FFLAGS) -c $(MAIN:=.f90)
$(SUBROUTINE:=.o): $(SUBROUTINE:=.f90) $(MODULES:=.o)
	$(FC) $(FFLAGS) -c $(SUBROUTINE:=.f90)
$(MODULES:=.o): $(MODULES:=.f90)
	$(FC) $(FFLAGS) -c $(MODULES:=.f90)

# 清理生成的文件
clean:
	rm -f *.o *.mod exe

# 运行程序
run: $(TARGET)
	./$(TARGET)
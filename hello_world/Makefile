SRCS = $(wildcard *.c src/*/*.c ../common/src/*/*.c)    #所有源文件
OBJS = $(SRCS:.c=.o)    #所有中间文件
OUTPUT = ouput   #输出程序名称

INCDIR = -Iinc -I../common/inc    #包含路径
LIBDIR = -Llib -L../common/lib #-lxxx 引用libxxx  #库路径
CC =  gcc  #编译器
CCFLAGS = -g -Wall -p -O0   #包含调试信息, 显示警告 剖析符号信息, 不进行优化
#CCFLAGS += -v #  显示详细信息
#CCFLAGS += --static #静态


all:$(OUTPUT) 

$(OUTPUT) : $(OBJS) 
	$(CC)  $^  $(INCDIR) $(CCFLAGS) $(LIBDIR) -o $(OUTPUT)
.c.o:
	$(CC) -o $@ -c $< \
	    $(INCDIR)\
		$(LIBDIR)\
		$(CCFLAGS)
%.c:%.h



.PHONY:clean_mid
clean_mid: #删除中间文件
	rm -f $(OBJS) 
clean: #删除所有生成文件
	rm -f $(OBJS) $(OUTPUT)

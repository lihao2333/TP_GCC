SRCS = $(wildcard *.c src/*.c)    #所有源文件
OBJS = $(SRCS:.c=.o)    #所有中间文件
OUTPUT = ouput   #输出程序名称

INCLUDES = -Isrc     #包含路径
LIBS = -Llib  #-lxxx 引用libxxx  #库路径
CC =  gcc  #编译器
CCFLAGS = -g -Wall -p -O0   #包含调试信息, 显示警告 剖析符号信息, 不进行优化
#CCFLAGS += -v #  显示详细信息
#CCFLAGS += --static #静态


all:$(OUTPUT) clean

$(OUTPUT) : $(OBJS)
	$(CC)  $^ -o $@ $(INCLUDES) $(CCFLAGS) $(LIBS)
$(OBJS) : $(SRCS)
	$(CC) -c $^ -o $@ $(INCLUDES) $(CCFLAGS) $(LIBS)

.PHONY:clean
clean:
	rm -f  *.o

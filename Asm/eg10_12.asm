;问题：子程序中使用的寄存器，很可能在主程序中也要使用，造成寄存器上的使用冲突

;我们需要想出一个方案来解决问题
;(1)编写调用子程序的程序不必惯性子程序到底使用了那些寄存器
;(2)编写子程序的时候，不必关心调用者使用了那些寄存器
;(3)不会发生寄存器冲突

;解决此问题的简洁方法
;在此程序开始时候，将子程序中所有用到的寄存器中的内容保存起来,在子程序返回前在
;恢复。可以用栈保存寄存器中的内容

;子程序标准框架

子程序开始:子程序使用的寄存器入栈
    子程序内容
    子程序使用的寄存器出栈
    返回(ret、retf)



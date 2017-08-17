from magma import wire, compile, EndCircuit
from loam.boards.icestick import IceStick, ROM6

icestick = IceStick()
for i in range(6):
    icestick.J1[i].input().on()
icestick.J3[0].rename('D0').output().on()


main = icestick.main()

rom = ROM6(63*[0]+[1])
rom(main.J1)
wire(rom.O, main.D0)

EndCircuit()

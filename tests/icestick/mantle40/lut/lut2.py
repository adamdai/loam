from magma import wire, compile, EndCircuit
from loam.boards.icestick import IceStick, LUT2, A0, A1

icestick = IceStick()
icestick.J1[0].rename('I0').input().on()
icestick.J1[1].rename('I1').input().on()
icestick.J3[0].rename('D0').output().on()

main = icestick.main()

lut = LUT2(A0&A1)
lut(main.I0, main.I1)
wire(lut.O, main.D0)

EndCircuit()

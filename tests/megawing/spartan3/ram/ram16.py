from magma import *
from mantle.xilinx.spartan3.RAM import RAM16
from loam.boards.papilioone import PapilioOne
from loam.shields.megawing import MegaWing

megawing = MegaWing(PapilioOne)
megawing.Clock.on()
megawing.Switch.on(6)
megawing.LED.on(1)

main = megawing.main()
A = main.SWITCH[0:4]
O = main.LED

ram = RAM16(4 * [1, 0, 0, 0])
wire(A, ram.A)
wire(main.SWITCH[4], ram.I)
wire(main.SWITCH[5], ram.WE)

wire(ram.O, O)




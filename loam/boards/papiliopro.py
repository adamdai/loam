import magma as m
from loam.parts.xilinx.spartan6 import XC6SLX9
from loam.parts.generic.crystal import Crystal
#from loam.parts.ftdi.ft232r import FT232R
#from loam.peripherals.timer import Timer
from .papilio import Papilio


'''
SPECS: Xilinx XC6SLX9
-------------------------------------------
Logics Cells                       : 9152
Slices (4 LUTs + 8 FFs)            : 1430
Flip-Flops                         : 11440
Max Distributed RAM (Kb)           : 90
DSP Slices (18x18 mul+adder+accum) : 16
BRAM (Kb)                          : 576
CMTs (2 DCMs + PLL)                : 2
Memory Controller Blocks           : 2
Max User I/O                       : 200
-------------------------------------------
'''

#
# UCF file for the Papilio Pro board
# Generated by pin_converter, written by Kevin Lindsey
# https://github.com/thelonious/papilio_pins/tree/development/pin_converter

# Main board wing pin [] to FPGA pin Pxx map
# -------C-------    -------B-------    -------A-------
# [GND] [C00] P114   [GND] [B00] P99    P100 [A15]
# [2V5] [C01] P115   [2V5] [B01] P97    P98 [A14]
# [3V3] [C02] P116   [3V3] [B02] P92    P93 [A13]
# [5V0] [C03] P117   [5V0] [B03] P87    P88 [A12]
#       [C04] P118         [B04] P84    P85 [A11] [5V0]
#       [C05] P119         [B05] P82    P83 [A10] [3V3]
#       [C06] P120         [B06] P80    P81 [A09] [2V5]
#       [C07] P121         [B07] P78    P79 [A08] [GND]
# [GND] [C08] P123   [GND] [B08] P74    P75 [A07]
# [2V5] [C09] P124   [2V5] [B09] P95    P67 [A06]
# [3V3] [C10] P126   [3V3] [B10] P62    P66 [A05]
# [5V0] [C11] P127   [5V0] [B11] P59    P61 [A04]
#       [C12] P131         [B12] P57    P58 [A03] [5V0]
#       [C13] P132         [B13] P55    P56 [A02] [3V3]
#       [C14] P133         [B14] P50    P51 [A01] [2V5]
#       [C15] P134         [B15] P47    P48 [A00] [GND]
#
class PapilioPro(Papilio):

    def __init__(self, fpga = XC6SLX9):
        super(PapilioPro,self).__init__("PapilioPro")

        self.fpga = fpga = fpga(board=self)

        self.A = [fpga.P48, fpga.P51, fpga.P56, fpga.P58, 
                  fpga.P61, fpga.P66, fpga.P67, fpga.P75,
                  fpga.P79, fpga.P81, fpga.P83, fpga.P85, 
                  fpga.P88, fpga.P93, fpga.P98, fpga.P100]

        self.B = [fpga.P99, fpga.P97, fpga.P92, fpga.P87, 
                  fpga.P84, fpga.P82, fpga.P80, fpga.P78,
                  fpga.P74, fpga.P95, fpga.P62, fpga.P59, 
                  fpga.P57, fpga.P55, fpga.P50, fpga.P47]

        self.C = [fpga.P114, fpga.P115, fpga.P116, fpga.P117, 
                  fpga.P118, fpga.P119, fpga.P120, fpga.P121,
                  fpga.P123, fpga.P124, fpga.P126, fpga.P127, 
                  fpga.P131, fpga.P132, fpga.P133, fpga.P134]


        # Clock setup
        self.CLKIN = fpga.P94
        self.CLKIN.rename('CLKIN')

        self.Crystal = Crystal(32000000, board=self)
        m.wire(self.Crystal.O, self.CLKIN.I)

        self.Clock = fpga.clock
        m.wire(self.CLKIN.O, self.Clock.I)


        # Timer setup
        #self.Timer = Timer(fpga, name='systimer')


        # led1
        self.LED1 = fpga.P112

        # usart setup
        self.RX = fpga.P101
        self.RX.rename('RX').input()

        self.TX = fpga.P105
        self.TX.rename('TX').output()

        #self.usart = FT232R(board=self)
        #m.wire(self.TX, self.usart.RX)
        #m.wire(self.usart.TX, self.RX)

        #self.usart0 = fpga.USART(fpga)
        #self.usart.peripheral(self.usart0)
        #m.wire(self.usart0.TX, self.TX)
        #m.wire(self.RX, self.usart0.RX)

        # jtag
        #self.JTAG_TMS = fpga.P107
        #self.JTAG_TCK = fpga.P109
        #self.JTAG_TDI = fpga.P110
        #self.JTAG_TDO = fpga.P106

        # flash
        #self.FLASH_CS = fpga.P38
        #self.FLASH_CK = fpga.P70
        #self.FLASH_SI = fpga.P64
        #self.FLASH_SO = fpga.P65

        #self.Flash = Flash(self)
        #self.SCLK.rename('SCLK').output()
        #self.MOSI.rename('MOSI').output()
        #self.MISO.rename('MISO').output()
        #self.CS.  rename('CS')  .output()
        #m.wire(self.SCLK, self.Flash.SCLK)
        #m.wire(self.MOSI, self.Flash.MOSI)
        #m.wire(self.Flash.MISO, self.MISO)
        #m.wire(self.CS, self.Flash.CS)

        # sdram(self)


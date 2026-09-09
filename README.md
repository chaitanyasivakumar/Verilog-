1. Comparator
A Comparator is a combinational circuit used to compare two binary numbers.

It determines whether:

A > B
A < B
A = B
Applications:

Digital systems
Microprocessors
Address comparison
Control circuits
2. D Latch
A D Latch is a level-sensitive storage element used to store one bit of data.

Inputs:

D – Data
Enable – Control signal
When Enable is active, the output follows the input. When Enable is inactive, the previous value is retained.

Applications:

Data storage
Registers
Memory circuits
3. Decoder
A Decoder converts n input lines into up to 2ⁿ output lines.

For example, a 2-to-4 Decoder has:

2 input lines
4 output lines
Only one output is activated for each input combination.

Applications:

Memory address decoding
Instruction decoding
Data selection
4. Encoder
An Encoder performs the reverse operation of a decoder. It converts multiple input lines into a smaller number of binary output lines.

For example, an 8-to-3 Encoder converts 8 input lines into 3 output lines.

Applications:

Keyboard encoding
Data compression
Digital communication
5. JK Latch
The JK Latch is a sequential logic circuit derived from the SR latch. It eliminates the invalid state found in the basic SR latch.

Inputs:

J
K
Clock/Enable
Operation
J	K	Output
0	0	No Change
0	1	Reset
1	0	Set
1	1	Toggle

Applications:

Counters
Registers
Sequential circuits
6. SR Latch
The SR (Set-Reset) Latch is one of the simplest sequential circuits used to store a single bit.

Inputs:

S – Set
R – Reset
Operation
S	R	Output
0	0	No Change
0	1	Reset
1	0	Set
1	1	Invalid

Applications:

Basic memory elements
Switch debouncing
Control circuits
7. Traffic Light
The Traffic Light Controller is a practical example of a sequential digital system.

It controls traffic signals using predefined states:

🔴 Red → Stop
🟢 Green → Go
🟡 Yellow → Ready/Wait

A digital logic implementation can use counters, flip-flops, state machines, and combinational logic to control the sequence.

Applications:

Traffic signal systems
Industrial control
Embedded systems
Finite State Machines
🛠️ Concepts Used
Combinational Logic
Sequential Logic
Logic Gates
Truth Tables
Boolean Algebra
Latches
Encoders & Decoders
Comparators
State Machines
Digital Control Systems
📁 Project Structure
Digital-Logic/
│
├── Comparator/
├── D_Latch/
├── Decoder/
├── Encoder/
├── JK_Latch/
├── SR_Latch/
└── Traffic_Light/
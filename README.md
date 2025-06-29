# RAM-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: UPPU HIMAJASREE

*INTERN ID*: CT08DN217

*DOMAIN*: VLSI

*DURATION*: 8 WEEKS

*MENTOR*: NEELA SANTHOSH KUMAR

Name of Task: Using Verilog to Design and Simulate a Synchronous RAM Module

The main goal of this task was to use the Verilog hardware description language to design, implement, and verify a synchronous RAM (Random Access Memory) module. The work was done on EDA Playground, an online platform that lets users use a range of commercial and open-source simulation tools to write, simulate, and debug digital design code. In this case, the ModelSim or Icarus Verilog simulator included in EDA Playground was used to run the simulation, and Verilog was selected as the hardware description language. The platform is a great option for hardware design tasks because it offers a web-based integrated development environment that facilitates accessibility, rapid testing, and visualization through waveform outputs.
The RAM module's creation and the creation of a testbench to confirm its functionality were the two main phases of the task. The RAM module (sync_ram) is scalable for different memory sizes because it was made to be parameterizable in terms of both address width and data width. A clocked always block was used to achieve synchronous behavior, and an internal register array was defined to mimic memory locations. The module determines whether the write-enable (we) signal is active on each positive clock edge. If so, the given address is where the input data (din) is kept. A testbench (tb_sync_ram) was created to verify the operation after the RAM module's design. In order to assess whether the RAM module was acting correctly, this testbench instantiated it and applied a number of input stimuli. An always block that toggled every five time units was used to create a basic clock signal. A value (8'h55) was written to address 4'd3 in the test sequence after the write-enable was asserted. To mimic a read operation from the same address, the write-enable was then deasserted. The waveform output produced by the standard Verilog system tasks $dumpfile and $dumpvars, which create VCD (Value Change Dump) files for waveform viewing, was used to observe the value read from the RAM. These waveforms attest to the write's proper execution.
There are many uses for this type of work in computer architecture and digital design. In larger systems where quick access to data and temporary storage are essential, like microprocessors, digital signal processors, and embedded systems, the synchronous RAM module created for this task can be incorporated. Basic components of computer systems, RAM modules are frequently tailored to meet particular performance, size, and latency needs. Additionally, as this task demonstrates, parameterized Verilog modules are very flexible and reusable, which makes them useful in the scalable and modular design methodologies prevalent in contemporary hardware engineering. This assignment prepares students for more intricate system-level designs by providing a hands-on introduction to memory design and verification techniques in an academic setting.

#OUTPUT

![Image](https://github.com/user-attachments/assets/1504408a-a2d0-4231-b721-d5739f954623)

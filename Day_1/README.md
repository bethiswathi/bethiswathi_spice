# 🚀 CMOS Fundamentals

## What is SPICE?
- **SPICE** stands for **Simulation Program with Integrated Circuit Emphasis**
- It's a **circuit simulation tool** which is now an industry standard for analyzing electronic circuits.
- There are many versions and extensions of SPICE (like **Ngspice, LTspice, PSpice etc), but they all serve the same core purpose.

## Why do we need SPICE simulations?
- Fabricating ICs is costly and time-consuming, so designers use **simulation tools** to explore and verify designs before fabrication.
- Simulations are inexpensive and operate at different **levels of abstraction**:

   - **Process simulators** (e.g., SUPREME) model how manufacturing conditions affect device characteristics.

   - **Circuit simulators** (e.g., SPICE, Spectre) predict circuit behavior like voltages, currents, performance, and power.

   - **Logic simulators** (e.g., VCS, ModelSim) verify correct operation of digital designs described in HDL.

   - **Architecture simulators** analyze instruction-level behavior to guide decisions on pipelining, memory, and performance.
- The purpose of SPICE simulations is to **analyze, verify, and understand** the behavior of electrical and electronic circuits **before physically building them**.
  
👉 In short, simulation tools enable accurate, low-cost design verification across all stages of IC development.

- A **circuit simulator** uses an input file that includes:

    - A **netlist** describing circuit components and their connections (manually written or extracted from CAD tools).

    - **Device models** and parameters defining component behavior.

    - The circuit’s **initial conditions**.

    - **Stimulus inputs** applied to the circuit.

    - **Simulation options and analysis commands** specifying the type of simulation to perform.

👉 In short, the simulator needs the circuit’s structure, device behavior, initial state, inputs, and simulation settings to analyze circuit performance.


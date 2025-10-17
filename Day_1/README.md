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

| ![CircuitDesignWorkshop_D1_Basic_Spice_Syntax_Ngspice_1](/docs/images/CircuitDesignWorkshop/CircuitDesignWorkshop_D1_Basic_Spice_Syntax_Ngspice_1.png) | ![CircuitDesignWorkshop_D1_Basic_Spice_Syntax_Ngspice_2](/docs/images/CircuitDesignWorkshop/CircuitDesignWorkshop_D1_Basic_Spice_Syntax_Ngspice_2.png) |
|:---:|:---:| 

**Analysis Types supported by SPICE:**
| Analysis Type | Details |
|:---|:---|
| DC Analysis | Find the DC operating point of the circuit i.e., all voltages and currents |
| AC Small-Signal Analysis | AC analysis is limited to analog nodes and represents the small signal, sinusoidal solution of the analog system described at a particular frequency or set of frequencies.
| Transient Analysis | Transient analysis is an extension of DC analysis to the time domain. In other words, it solves a DC Analysis for each timestep based on initial conditions. |
| Pole-Zero Analysis | Computes the poles and/or zeros in the small-signal ac transfer function. |
| Small-Signal Distortion Analysis | Computes steady-state harmonic and intermodulation products for small input signal magnitudes. |
| Sensitivity Analysis | Calculate either the DC operating-point sensitivity or the AC small-signal sensitivity of an output variable with respect to all circuit variables, including model parameters. |
| Noise Analysis | Measures the device-generated noise for a given circuit. |
<br>

The following image shows a SPICE deck written to perform DC analysis of a NMOS transistor <br><br>
<img width="549" height="369" alt="image" src="https://github.com/user-attachments/assets/c123665b-0da4-4880-980d-f6bc1ff4f82b" />
<br>























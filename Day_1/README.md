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

## **Analysis Types supported by SPICE:**
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

<img width="840" height="436" alt="image" src="https://github.com/user-attachments/assets/e7866dd3-8854-4a9d-9169-16df13cc7ee5" />

<img width="840" height="498" alt="image" src="https://github.com/user-attachments/assets/03e8a19d-8122-47b6-ab5b-dbc70d28df03" />

<img width="840" height="459" alt="image" src="https://github.com/user-attachments/assets/439b4a6f-6e19-467c-9e51-87de8271ac89" />

<img width="840" height="433" alt="image" src="https://github.com/user-attachments/assets/10a687dc-826d-4e5c-83ec-a001559bb2ec" />

<img width="840" height="403" alt="image" src="https://github.com/user-attachments/assets/5b767a94-0036-4542-accd-7a553b354771" />

<img width="840" height="433" alt="image" src="https://github.com/user-attachments/assets/bebc4752-0f5b-4d73-85c5-d227e86329be" />

<img width="840" height="465" alt="image" src="https://github.com/user-attachments/assets/594c9fa6-5a2d-4b21-b58e-96602cfcdfaf" />

### NMOS Transistor
<img width="840" height="385" alt="image" src="https://github.com/user-attachments/assets/65ca76f5-da76-4c9a-bca7-5df172f73f52" />
<img width="840" height="342" alt="image" src="https://github.com/user-attachments/assets/7868ba03-65c5-49e4-878b-27a157e66d48" />
<img width="840" height="369" alt="image" src="https://github.com/user-attachments/assets/220ee8e2-8cac-4158-b033-fac4dd4f6d05" />
<img width="840" height="364" alt="image" src="https://github.com/user-attachments/assets/bf08dd26-3809-40b4-b8fd-ac770e04b0f2" />
<img width="840" height="367" alt="image" src="https://github.com/user-attachments/assets/b6c08fed-4594-4665-bbe3-59c35fdfa7af" />
<img width="840" height="352" alt="image" src="https://github.com/user-attachments/assets/5286687d-5322-4f7e-9f2f-bef1154fd1a2" />
<img width="840" height="379" alt="image" src="https://github.com/user-attachments/assets/496242ee-0a22-4536-8bae-0146fd302b40" />
<img width="840" height="359" alt="image" src="https://github.com/user-attachments/assets/cdca0073-ad88-4bbf-8ae0-5be02cecc2ce" />
















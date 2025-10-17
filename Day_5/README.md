## Power Supply Variations

| **Point**                                | **Description**                                                                                                                                        |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **1. Definition**                        | Power supply variation refers to fluctuations or deviations in the supply voltage (**VDD**) from its nominal value.                                    |
| **2. Causes**                            | Variations can occur due to **IR drops**, **switching noise**, **temperature changes**, or **process variations** in fabrication.                      |
| **3. Effect on Threshold & Performance** | Changes in VDD alter the **transistor operating regions**, **switching threshold**, and **drive strength**, affecting circuit speed and stability.     |
| **4. Impact on Noise Margins**           | A lower VDD reduces the difference between logic ‘0’ and ‘1’ levels, **decreasing noise margins** and making the circuit more prone to errors.         |
| **5. Impact on Power Consumption**       | - **Dynamic power ∝ VDD²**, so a higher VDD increases power dissipation. <br> - Lower VDD saves power but may cause slower switching or logic failure. |
| **6. Design Consideration**              | Circuits are designed with **tolerances** (e.g., ±10% of nominal VDD) to ensure reliable operation despite supply variations.                          |

### 18.1.1 Lab - Supply Scaling - sky130 Inverter (Wp/Wn=1u/0.36u, L=0.15u)
<details> <summary> SPICE File: day5_inv_supplyvariation_Wp1_Wn036.spice </summary>

```
*** Model Description ***
.param temp=27

*** Including sky130 library files ***
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

*** Netlist Description ***
XM1 out in vdd vdd sky130_fd_pr__pfet_01v8 w=1 l=0.15
XM2 out in 0 0 sky130_fd_pr__nfet_01v8 w=0.36 l=0.15
Cload out 0 50fF
Vdd vdd 0 1.8V
Vin in 0 1.8V

.control
let powersupply     = 1.8
let powersupply_min = 0.8
let increment_step  = -0.2

dowhile powersupply >= powersupply_min
    dc Vin 0 1.8 0.01
    let powersupply = powersupply + increment_step
    alter Vdd = powersupply
end

plot dc1.V(out) dc2.V(out) dc3.V(out) dc4.V(out) dc5.V(out) dc6.V(out) vs in 
+ xlabel 'Input Voltage(V)' ylabel 'Output Voltage(V)' title 'Inverter VTC for different VDD'

plot deriv(dc1.V(out)) deriv(dc2.V(out)) deriv(dc3.V(out)) deriv(dc4.V(out)) deriv(dc5.V(out)) deriv(dc6.V(out)) vs in 
+ xlabel 'Input Voltage(V)' ylabel 'Gain (dVout/dVin)' title 'Inverter Gain for different VDD'
.endc

.end
```
</details>

**Output**








## Device Variations

| **Point**                            | **Description**                                                                                                                                               |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. Definition**                    | Device variations refer to **deviations in transistor parameters** from their intended (nominal) values due to manufacturing process imperfections.           |
| **2. Causes**                        | Occur due to **lithography limits**, **dopant fluctuations**, **oxide thickness variations**, and **etching inaccuracies** during fabrication.                |
| **3. Affected Parameters**           | Key parameters that vary include **threshold voltage (VTH)**, **carrier mobility (μ)**, **oxide thickness (tox)**, and **channel length/width (L/W)**.        |
| **4. Impact on Circuit Performance** | Variations lead to **differences in drive current, delay, and power**, causing mismatch between transistors and **timing errors** in logic circuits.          |
| **5. Types of Variations**           | - **Global variations:** Affect the entire wafer or chip uniformly. <br> - **Local variations:** Affect individual transistors differently (device mismatch). |
| **6. Design Mitigation**             | Designers use **process corners**, **statistical analysis**, and **layout techniques** (like common-centroid matching) to ensure reliable circuit operation.  |



<details> <summary> SPICE File: day5_inv_devicevariation_wp7_wn042.spice </summary>

```
*** Model Description **
.param temp=27
.param Wp=0.84
.param Wn=0.42

*** Including sky130 library files ***
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

*** Netlist Description ***
XM1 out in vdd vdd sky130_fd_pr__pfet_01v8 w={Wp} l=0.15
XM2 out in 0 0 sky130_fd_pr__nfet_01v8 w={Wn} l=0.15
Cload out 0 50fF
Vdd vdd 0 1.8V
Vin in 0 1.8V

*** Simulation Commands ***
.dc Vin 0 1.8 0.01

.control
alterparam Wp=0.84
alterparam Wn=0.42
reset
run

alterparam Wp=0.42
alterparam Wn=7
reset
run

alterparam Wp=7
alterparam Wn=0.36
reset
run

plot dc1.V(out) dc2.V(out) dc3.V(out) vs in 
+ xlabel 'Input Voltage(V)' ylabel 'Output Voltage(V)' title 'Inverter VTC for Extreme Device Variations'
.endc
.end
```
</details>

**Output**















## Static Behavior Robustness


### Noise Margin

| **Point**                         | **Description**                                                                                                       |
| --------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **1. Definition**                 | Noise margin is the maximum noise voltage a CMOS circuit can tolerate without causing logic errors.                   |
| **2. Purpose**                    | Ensures reliable logic operation even when noise is present in the system.                                            |
| **3. Logic Integrity**            | A logic ‘1’ with small noise is still recognized as ‘1’, and a logic ‘0’ with small noise is still recognized as ‘0’. |
| **4. Effect of Exceeding Margin** | If noise exceeds the noise margin, logic levels may flip, leading to circuit malfunction.                             |
| **5. Attenuation**                | Noise below the margin gets attenuated as it passes through logic gates, maintaining signal quality.                  |
| **6. Importance**                 | Noise margin indicates the robustness and reliability of digital circuits against disturbances.                       |

## Understanding Noise Margin

| **Point**                    | **Description**                                                                                                          |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| **1. Setup**                 | Two CMOS inverters are connected back-to-back, with one inverter driving the next.                                       |
| **2. Purpose**               | Used to study the Voltage Transfer Characteristics (VTC) of the CMOS inverter.                                           |
| **3. Ideal VTC**             | Shows a sharp transition between logic ‘0’ and ‘1’ — perfect switching with no intermediate states.                      |
| **4. Piece-wise Linear VTC** | Approximates the inverter behavior using linear segments, simplifying analysis.                                          |
| **5. Realistic VTC**         | Displays a smooth, nonlinear transition due to actual transistor behavior and device parameters.                         |
| **6. Key Insight**           | The realistic VTC helps understand noise margins, switching thresholds, and signal stability in practical CMOS circuits. |


 <img width="402" height="300" alt="image" src="https://github.com/user-attachments/assets/9c33088d-4ef2-469e-a1f2-95a4252e5025" /> 
  <img width="371" height="300" alt="image" src="https://github.com/user-attachments/assets/4c0864ec-d04a-42d2-b173-522b20eb6cf2" /> 
                                                  
<img width="490" height="300" alt="image" src="https://github.com/user-attachments/assets/275dc6b7-06c3-4e9b-82f1-8238e81c0af7" /> 
  
<img width="440" height="300" alt="image" src="https://github.com/user-attachments/assets/ade5a76a-c682-4d19-a099-2815d1b351ff" /> 
  <img width="482" height="250" alt="image" src="https://github.com/user-attachments/assets/ab429a68-b163-49e7-9db5-d3abc8461c5b" /> 

```
  -----------------------
Output Characteristics:
-----------------------
VOL_Min : Minimum output voltage that the logic gate can drive for a logic "0" output.
VOL_Max : Maximum output voltage that the logic gate will drive corresponding to a logic "0" output.
VOH_Min : Minimum output voltage that the logic gate will drive corresponding to a logic "1" output.
VOH_Max : Maximum output voltage that the logic gate can drive for a logic "1" output.

----------------------
Input Characteristics:
----------------------
VIL_Min : The minimum input voltage to the gate corresponding to logic "0" -- is equal to the VSS
VIL_Max : The maximum input voltage to the gate that will be recognized as logic "0"
VIH_Min : The minimum input voltage to the gate that will be recognized as logic "1"
VIH_Max : The maximum input voltage to the gate corresponding to logic "1" -- is equal to the VDD
                                                 
```

| **Point**                             | **Description**                                                                                                                                    |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| **1. Condition for Proper Operation** | For reliable logic operation:  ( V_{OL_MAX} < V_{IL_MAX} ) and ( V_{OH_MIN} > V_{IH_MIN} ).                                                        |
| **2. Stable Regions**                 | When ( V_{in} \leq V_{IL} ) or ( V_{in} \geq V_{IH} ), the inverter gain magnitude is **less than 1**, so the output is stable.                    |
| **3. Transition Region**              | For ( V_{IL} < V_{in} < V_{IH} ), the inverter gain magnitude is **greater than 1**, causing a large change in output.                             |
| **4. Undefined Range**                | The transition region is **undefined** for digital logic — noise in this range can cause incorrect logic transitions.                              |
| **5. Noise Margin Definitions**       | - **Low-level Noise Margin (NML):** ( NML = V_{IL_MAX} - V_{OL_MAX} )  <br> - **High-level Noise Margin (NMH):** ( NMH = V_{OH_MIN} - V_{IH_MIN} ) |
| **6. Overall Noise Margin**           | The **effective noise margin** of the circuit is ( NM = \min(NML, NMH) ).                                                                          |
<img width="840" height="408" alt="image" src="https://github.com/user-attachments/assets/1791423a-7ec6-480f-a628-760702f113b1" />
<img width="840" height="400" alt="image" src="https://github.com/user-attachments/assets/aa082aff-b5d8-4cf3-8696-e825c25087ab" />

### Noise Margin Robustness against variations in Device Ratio
<img width="840" height="404" alt="image" src="https://github.com/user-attachments/assets/51e41d64-5555-4e46-8880-1019d9f548a7" />

### 17.1.3 Lab: Noise Margin - sky130 Inverter (Wp/Lp=1u/0.15u, Wn/Ln=0.36u/0.15u)
<details> <summary> SPICE File: day4_inv_noisemargin_wp1_wn036.spice </summary>

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

*** Simulation Commands ***
.op
.dc Vin 0 1.8 0.01

.control
run
setplot dc1
display
.endc

.end
```
</details>

**Output**
<img width="840" height="400" alt="image" src="https://github.com/user-attachments/assets/2d70bc2c-8910-4ea7-a0e4-6b89ccba56de" />





























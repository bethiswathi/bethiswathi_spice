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

### Transistor operation
- When no gate voltage is applied, the MOSFET is in the cut-off region with no conduction between source and drain.
- As the gate-to-source voltage (VGS) increases, minority carriers form a conductive channel under the gate.
- At a specific voltage called the threshold voltage (VT), surface inversion occurs — the minority carrier concentration in the channel equals the majority carrier concentration in the substrate, enabling current flow.
- When the gate-to-source voltage (VGS) increases several thermal voltages (Φt) beyond the threshold voltage, the MOSFET enters the strong inversion region.
- In this region, the channel is well-formed, and the minority carrier concentration becomes strongly dependent on the gate voltage, allowing significant current flow.
<img width="840" height="369" alt="image" src="https://github.com/user-attachments/assets/220ee8e2-8cac-4158-b033-fac4dd4f6d05" />
<img width="840" height="364" alt="image" src="https://github.com/user-attachments/assets/bf08dd26-3809-40b4-b8fd-ac770e04b0f2" />
<img width="840" height="367" alt="image" src="https://github.com/user-attachments/assets/b6c08fed-4594-4665-bbe3-59c35fdfa7af" />
<img width="840" height="352" alt="image" src="https://github.com/user-attachments/assets/5286687d-5322-4f7e-9f2f-bef1154fd1a2" />
<img width="840" height="379" alt="image" src="https://github.com/user-attachments/assets/496242ee-0a22-4536-8bae-0146fd302b40" />
<img width="840" height="359" alt="image" src="https://github.com/user-attachments/assets/cdca0073-ad88-4bbf-8ae0-5be02cecc2ce" />

### Effect of Substrate/body bias on Threshold voltage
- The effect of substrate (body) bias on threshold voltage is known as the body effect.
- In an NMOS transistor, when the source-to-body voltage (VSB) increases (i.e., the body becomes more negatively biased relative to the source):
- The source–body junction becomes more reverse-biased.
- It becomes harder to form the inversion layer (channel).
- Therefore, a higher gate-to-source voltage (VGS) is needed to turn the transistor on.

👉 Result: The threshold voltage (VT) increases with increasing VSB.

<img width="683" height="255" alt="image" src="https://github.com/user-attachments/assets/2ceaa002-cca6-4fbc-8504-3d4431ed2460" />

👉 In short, Increasing body bias (VSB) → increases threshold voltage → reduces transistor drive current.

<img width="840" height="470" alt="image" src="https://github.com/user-attachments/assets/71aae5af-696a-445a-9a37-7c72c350673b" />
<img width="840" height="472" alt="image" src="https://github.com/user-attachments/assets/ee53e995-ae2f-4dac-b6d1-7c0bf6e6bad0" />
<img width="840" height="491" alt="image" src="https://github.com/user-attachments/assets/76881c2e-0edc-4d85-ab37-5099bf4c8e3f" />
<img width="840" height="411" alt="image" src="https://github.com/user-attachments/assets/bc0473f3-c565-4a93-a04d-fd3bd5aa63e4" />
<img width="840" height="413" alt="image" src="https://github.com/user-attachments/assets/83a4d7a4-0b2d-4721-9cea-f65e2dea6f49" />

## Resistive/Linear/Triode Region of operation
Let us analyse the condition when we apply a Gate-Source potential, $V_{GS} >= V_{TH}$ and a small value of $V_{DS}$ is applied across the channel from Drain-to-Source.
<img width="840" height="471" alt="image" src="https://github.com/user-attachments/assets/cd215709-c368-4e72-b71b-cedc26e768f2" />

## Derivation of Drain-current Equation
Using a first-order analysis, the drain current (ID) in a MOSFET arises from the drift of charge carriers in the channel, caused by the lateral electric field established by the applied drain-to-source voltage (VDS)

<img width="840" height="426" alt="image" src="https://github.com/user-attachments/assets/a820d21f-b738-4adb-9b5f-e86ce30a80bb" />
<img width="840" height="466" alt="image" src="https://github.com/user-attachments/assets/b7c0b64c-2d18-4ff7-8e2b-041e6612728c" />
<img width="840" height="454" alt="image" src="https://github.com/user-attachments/assets/56338dc0-b6bc-476f-84e5-12b91c2f7384" />
<img width="840" height="511" alt="image" src="https://github.com/user-attachments/assets/802f0dda-1752-4da0-8a52-c377813911ce" />
<img width="840" height="513" alt="image" src="https://github.com/user-attachments/assets/83cd8597-a80f-43e6-98c2-70023c3ca07d" />
<img width="840" height="543" alt="image" src="https://github.com/user-attachments/assets/fb9c0a74-7efe-415e-aca4-dae3f9eade4e" />
<img width="640" height="371" alt="image" src="https://github.com/user-attachments/assets/816764f0-13a9-41d7-ae84-63919698835d" />

  - Let $V_{GS}$ be held constant at a value greater than $V_{TH}$.  
  - The applied $V_{DS}$ appears as a voltage drop across the length of the channel.  
  - As we travel along the channel from Source to Drain, the voltage (measured relative to the Source terminal) increases from zero to $V_{DS}$.
  - Thus the voltage between the gate and points along the channel decreases from $V_{GS}$ at the Source end to $V_{GD} = V_{GS}-V_{DS}$ at the Drain end.


  - At a point x along the channel, the voltage is $V(x)$, and the gate-to-channel voltage at that point equals $V_{GS} – V(x)$.

Under the assumption that this voltage exceeds the threshold voltage all along the channel, the induced channel charge per unit area at point x can be computed.

$Q_i(x) = -C_{ox} [V_{GS} - V(x) -V_{TH}]$  
$where:$  
$~~~~~~~~ C_{ox} = \dfrac{\epsilon_{ox}}{t_{ox}}$

The current is given as the product of the drift velocity of the carriers, $v_n$ and the
available charge. Due to charge conservation, it is a constant over the length of the channel.
W is the width of the channel in a direction perpendicular to the current flow.

$I_D = -v_n(x) * Q_i(x) * W$

The electron velocity is related to the electric field through a parameter called the mobility $\mu_n$ (expressed in $\dfrac{m^2}{V.s}$).  

Drift velocity, $v_n = -\mu_n \dfrac{dV}{dx}$

$\therefore I_D = -\mu_n \dfrac{dV}{dx} * -C_{ox} [V_{GS} - V(x) - V_{TH}] * W$  

$i.e., I_D dx = \mu_n C_{ox} W [V_{GS} - V(x) -V_{TH}] dV$

Integrating the equation over the length of the channel L yields the voltage-current relation of the transistor:  
$\boxed{I_D = {k_n}^\prime \dfrac{W}{L} \left[ (V_{GS}-V_{TH})V_{DS} - \dfrac{{V_{DS}}^2}{2} \right]
     = k_n \left[ (V_{GS}-V_{TH})V_{DS} - \dfrac{{V_{DS}}^2}{2} \right]}$

$where:$  
$~~~~~~~~ {k_n}^\prime$ is the _process transconductance parameter._  
$~~~~~~~~ {k_n}^\prime = \mu_nC_{ox}$

The product of process transconductance, ${k_n}^\prime$ and the $\dfrac{W}{L}$ ratio of the transistor is called the _gain factor_, $k_n$ of the device.

$~~~~~~~~ k_n = {k_n}^\prime * \left( \dfrac{W}{L} \right)$

Now, the above equation for Drain Current:  
$I_D = k_n * \left[(V_{GS} - V_{TH}) * V_{DS} - \dfrac{V_{DS}^2}{2}\right]$
is a quadratic function of $V_{DS}$.  

But at low values, the $\dfrac{V_{DS}^2}{2}$ term can be ignored as it is close to zero. Hence the equation for $I_D$ can be approximated to be a linear function of $V_{DS}$:  

$\boxed {i.e., I_D = k_n * (V_{GS} - V_{TH}) * V_{DS}} ~~~~ $
_Hence the name Linear Region_

<img width="840" height="521" alt="image" src="https://github.com/user-attachments/assets/2de38ed9-a4b9-42ed-894b-ce708d63cff3" />

## Saturation/Pinch-off region of Operation
When a **VDS** is applied, the **channel voltage** varies along its length, causing the **channel-depth** to be **non-uniform**.
  - The channel is **deepest** at the source, proportional to $\boxed { V_{GS} - V_{TH}} ~~~~ $
  - It is **shallowest** at the drain, proportional to $\boxed { V_{GS} - V_{TH} - V_{DS}} ~~~~ $
    
✅This results in a **tapered channel** shape from source to drain. 

### Pinch-off Region Condition
As **VDS** increases, the channel voltage at the drain end can drop to the threshold voltage (VTH), causing the **channel depth at the drain** to become zero.
- This condition is called **pinch-off**.
- It occurs when $\boxed { V_{GS} - V_{TH} = V_{DS}} ~~~~ $
- Beyond this point, the channel **disappears at the drain** and conduction is limited by pinch-off. 
<img width="840" height="459" alt="image" src="https://github.com/user-attachments/assets/59c74553-c992-4487-94ad-d57c7359c398" />
<img width="840" height="458" alt="image" src="https://github.com/user-attachments/assets/e50cd4b9-023d-41aa-a377-fa5ffe73e5e5" />
<img width="840" height="459" alt="image" src="https://github.com/user-attachments/assets/812cda89-8a9d-4e14-a1c0-fc8f4d1e5460" />
<img width="840" height="466" alt="image" src="https://github.com/user-attachments/assets/5a36b70f-d22f-4d06-b764-aa6126a4b914" />


### Drain current Model for Saturation region of operation
<img width="564" height="374" alt="image" src="https://github.com/user-attachments/assets/c4087c6e-f3b1-4d4e-9db7-82e05fe4ba77" />

- When VDS exceeds
-   $\boxed {V{DSsat} =  V_{GS} - V_{TH}} ~~~~ $, the MOSFET enters the saturation (pinch-off) region 
- The channel shape and charge no longer change with further increases in VDS.
- The drain current (ID) saturates at:
    $\boxed{i.e., I_{Dsat} = \dfrac{1}{2} {k_n}^\prime \dfrac{W}{L} {\left[ {V_{GS}-V_{TH}}^2\right]}}$
  
- Pinch-off does not block current; electrons are accelerated through the depletion region into the drain.
- Any additional VDS appears across the depletion region, leaving IDsat and VDSsat essentially constant.

<img width="840" height="454" alt="image" src="https://github.com/user-attachments/assets/b8d96b80-b500-418e-81c8-045974e8268b" />
<img width="840" height="401" alt="image" src="https://github.com/user-attachments/assets/2b900669-028b-423f-a276-9a07828c0981" />
<img width="840" height="463" alt="image" src="https://github.com/user-attachments/assets/54523ec7-75ac-406f-a733-80b8a3fb5a7d" />


### Channel length Modulation and Finite output resistance in Saturation Region
- In ideal saturation, ​ID is independent of VDS implying finite incremental drain resistance.
​- In practice, increasing VDS shifts the pinch-off point toward the source, reducing channel length.
- This Channel Length Modulation (CLM) causes ​ID to increase slightly with VDS
- The modified drain current is:

 $\boxed{\therefore I_{D} = \dfrac{1}{2} {k_n}^\prime \dfrac{W}{L} \left[ {(V_{GS}-V_{TH}}^2\right] (1 + \lambda V_{DS})}$

​λ is the CLM parameter, dependent on process and channel length.
- The output resistance becomes finite:
    $r_o = \dfrac{1}{\lambda I_D}$ 

✅ CLM explains why saturated MOSFETs have slightly rising current and finite output resistance.

<img width="840" height="453" alt="image" src="https://github.com/user-attachments/assets/41e4c0b3-6985-4257-a405-f186c6dce6a9" />
<img width="840" height="406" alt="image" src="https://github.com/user-attachments/assets/2f0ee752-5f2a-4b15-a1a6-824e7ebdb39e" />


### Installation of Ngspice
Initially update using the following command
```
 sudo apt update
```
<img width="800" height="409" alt="image" src="https://github.com/user-attachments/assets/0a4ee60e-908b-415a-82cc-727f78460552" />
<img width="800" height="413" alt="image" src="https://github.com/user-attachments/assets/abc92449-8b39-4337-ac93-9e8eeaeeeff9" />

### Simulation Using Ngspice
After installing Ngspice, clone the repository
```
 https://github.com/kunalg123/sky130CircuitDesignWorkshop.git
```



### 14.2.6 Lab: ID vs. VDS for different VGS - sky130 NMOS (W=5um, L=2um)
<details> <summary> SPICE File: day1_nfet_idvds_L2_W5.spice </summary>

```
*** Model Description ***
.param temp=27

*** Including sky130 library files ***
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

*** Netlist Description ***
XM1 vdd n1 0 0 sky130_fd_pr__nfet_01v8 w=5 l=2
R1 n1 in 55
Vdd vdd 0 1.8
Vin in 0 1.8

*** Simulation Commands ***
.op
.dc Vdd 0 1.8 0.1 Vin 0 1.8 0.2

.control
run
display
setplot dc1
.endc

.end
```
</details>

**Output**

<img width="840" height="475" alt="image" src="https://github.com/user-attachments/assets/a2cfd192-3092-4caa-98a1-e18992697b3c" />
<img width="840" height="480" alt="image" src="https://github.com/user-attachments/assets/9a53dfa2-4d27-46da-9530-36a5f8950ff5" />



































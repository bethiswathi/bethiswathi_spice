# Velocity Saturation and CMOS Inverter VTC

## Velocity Saturation
**Definition**: At high electric fields, carrier drift velocity stops increasing linearly with the field and reaches a maximum limit called saturation velocity (vsat)

**Cause**: In short-channel MOSFETs, large VDS creates strong electric fields near the drain causing frequent scattering of carriers

**Effect on current**: Drain current no longer follows the quadratic law -- it increases linearly with (VGS-VTH) instead of quadratically
​
**Result**: Current saturates earlier, reducing transistor current drive and affecting switching speed.

**Significance**: Velocity saturation is a key short-channel effect and must be included in modern CMOS device models. 

### Drain current in Resistive/linear Region

$I_D = -v_n(x) * Q_i(x) * W$  
$I_D = -v_n(x) * -C_{ox} [V_{GS} - V(x) -V_{TH}] * W$  
$v_n = \dfrac{\mu_n E}{1+(E/E_c)}$  

Now, $E = \dfrac{dV}{dx}$  

$\therefore v_n = \dfrac{\mu_n (dV/dx)}{1+(1/E_c)(dV/dx)}$  


$\therefore I_D = \dfrac{\mu_n (dV/dx)}{1+(1/E_c)(dV/dx)} * C_{ox} [V_{GS} - V(x) - V_{TH}] * W$  

$i.e., I_D \left[ 1+\dfrac{1}{E_c}\dfrac{dV}{dx}\right] = \mu_n \dfrac{dV}{dx} * C_{ox} [V_{GS} - V(x) - V_{TH}] * W$  

Integrating w.r.t $x$ from $x=0 ~~ (where ~~ V=0)$ to $x=L ~~ (where ~~ V=V_{DS})$, we get:  

$I_D \left[ L+(V_{DS}/E_c)\right] = \mu_n C_{ox} [(V_{GS} - V_{TH})V_{DS} - \dfrac{V_{DS}^2}{2} ] * W$  

Re-arranging:  
$I_D = \left[\dfrac{1}{L+(V_{DS}/E_c)}\right] \mu_n * C_{ox} [(V_{GS} - V_{TH})V_{DS} - \dfrac{V_{DS}^2}{2} ] * W$  

$i.e., I_D = \left[\dfrac{1}{1+(V_{DS}/E_c L)}\right] \mu_n * C_{ox} [(V_{GS} - V_{TH})V_{DS} - \dfrac{V_{DS}^2}{2} ] * \dfrac{W}{L}$  

$i.e., \boxed{I_D = \left[\dfrac{1}{1+(V_{DS}/E_c L)}\right]~\mu_n C_{ox} \dfrac{W}{L} [(V_{GS} - V_{TH})V_{DS} - \dfrac{V_{DS}^2}{2} ]}$  

$~~~~~~~~~~~~\boxed{I_D = \kappa(V_{DS}) \mu_n C_{ox} \dfrac{W}{L}\left[(V_{GS}-V_{TH})V_{DS} - \dfrac{{V_{DS}^2}}{2} \right]}$  

$~~~~~~~~~~~~where, ~~~~ \kappa(V_{DS}) = \dfrac{1}{1+(V_{DS}/E_c L)}$  

 - $\kappa$ is a measure of the velocity saturation since $V_{DS}/L$ is the average field in the channel.
 - In the case of long-channel devices (where $L$ is large), or when the value of $V_{DS}$ is small, $\kappa$ approaches 1 and the above equation simplifies to the traditional equation we had derived first using the constant mobility model.
 - For short-channel devices, $\kappa$ is smaller than 1, implying the delivered current is smaller than what would be normally expected.


### Drain current in Saturation Region
$I_D = -v_n(x) * -C_{ox} [V_{GS} - V(x) -V_{TH}] * W ~~~~~~~~ |with ~~ v_n(x)=v_{sat} ~~ and ~~ V(x)=V_{DSAT}$  
$i.e., \boxed{I_{DSAT} = v_{sat} C_{ox} W [(V_{GS} - V_{TH}) - V_{DSAT}]}$  

$I_{DSAT}$ can also be evaluated by replacing $V_{DS}=V_{DSAT}$ in the linear region equation derived in the previous section.  

$\therefore ~~~~ \boxed{I_{DSAT} = \kappa(V_{DSAT}) \mu_n C_{ox} \dfrac{W}{L}\left[(V_{GS}-V_{TH})V_{DSAT} - \dfrac{{V_{DSAT}^2}}{2} \right]}$


Equating these two expressions for $I_{DSAT}$ to solve for $V_{DSAT}$, we get:  
$I_{DSAT} = v_{sat} C_{ox} W [(V_{GS} - V_{TH}) - V_{DSAT}]~= \kappa(V_{DSAT}) \mu_n C_{ox} \dfrac{W}{L}\left[(V_{GS}-V_{TH})V_{DSAT} - \dfrac{{V_{DSAT}^2}}{2} \right]$

$i.e.,$  
$\dfrac{\mu_n E_c}{2} C_{ox} W [(V_{GS} - V_{TH}) - V_{DSAT}] = \kappa(V_{DSAT}) \mu_n C_{ox} \dfrac{W}{L}\left[(V_{GS}-V_{TH})V_{DSAT} - \dfrac{{V_{DSAT}^2}}{2} \right]$

$E_c L [(V_{GS} - V_{TH}) - V_{DSAT}] = \kappa(V_{DSAT}) \left[2(V_{GS}-V_{TH})V_{DSAT} - {V_{DSAT}^2} \right]$

This can be further simplified to the below:  
$~~~~~~~~ \boxed{V_{DSAT} = \kappa(V_{GT}) ~ V_{GT}} ~~~~ , where ~ V_{GT} = (V_{GS} - V_{TH})$  

<br>

**This has the following implications:**

  1)  The saturation current $I_{DSAT}$ displays a linear dependence with respect to the Gate-to-Source voltage $V_{GS}$, which is in contrast with the squared dependence in the long-channel devices. This reduces the amount of current a transistor can deliver for a given control voltage.

  2) For a short-channel device and for large enough values of $V_{GT}$, $\kappa(V_{GT})$ is substantially smaller than 1, hence $V_{DSAT} < V_{GT}$. The device enters saturation before $V_{DS}$
reaches $(V_{GS} - V_{TH})$. Short-channel devices therefore experience an extended saturation region and tend to operate more often in saturation region compared to long-channel devices.

<img width="577" height="488" alt="image" src="https://github.com/user-attachments/assets/41f39f60-471a-4f19-8f95-f134e6ff0a24" />
<img width="807" height="486" alt="image" src="https://github.com/user-attachments/assets/247c04a6-cde3-4df2-8787-52ad3e596eab" />
<img width="807" height="503" alt="image" src="https://github.com/user-attachments/assets/47de0778-7b43-4f1f-b034-f3973d60aa78" />
<img width="840" height="508" alt="image" src="https://github.com/user-attachments/assets/833b6f67-bc04-4e62-9a1e-59a0e4bbc5bb" />
<img width="840" height="464" alt="image" src="https://github.com/user-attachments/assets/e1963822-8c64-4359-8221-356fd32c770b" />
<img width="840" height="454" alt="image" src="https://github.com/user-attachments/assets/70da13bc-c974-4d54-8357-a22ad6f298de" />

### Unified MOS Model for Manual Analysis
A simplified mathematical model of the MOS transistor is needed to provide an intuitive understanding of circuit behavior without overly complex equations.

This first-order unified model represents the MOSFET as a single current source whose value depends on the terminal voltages and a set of key device parameters:
$V_{TO}, ~ \gamma, ~ V_{DSAT}, ~ k^{\prime}, ~ and ~ \lambda$.

✅ It captures the essential electrical behavior of the MOSFET while remaining analytically manageable for circuit design and analysis.


### 15.1.4 Lab: Velocity Saturation - ID vs. VDS - tsmc 0.25um
<details> <summary> SPICE File: nmos_chara_W1.8u_L1.2u.spice </summary>

```
*** Netlist Description ***
M1 vdd n1 0 0 nmos W=1.8u L=1.2u
R1 in n1 55
Vdd vdd 0 2.5
Vin in 0 2.5

*** .include model ***
.lib "tsmc_025um_model.mod" cmos_models

*** Simulation Commands ***
.op
.dc Vdd 0 2.5 0.1 Vin 0 2.5 0.5

.control
run
display
setplot dc1
plot -vdd#branch
.endc

.end
```
</details>

<details> <summary> SPICE File: nmos_chara_W0.375u_L0.25u.spice </summary>

```
*** Netlist Description ***
M1 vdd n1 0 0 nmos W=0.375u L=0.25u
R1 in n1 55
Vdd vdd 0 2.5
Vin in 0 2.5

*** .include model ***
.lib "tsmc_025um_model.mod" cmos_models

*** Simulation Commands ***
.op
.dc Vdd 0 2.5 0.1 Vin 0 2.5 0.5

.control
run
display
setplot dc1
plot -vdd#branch
.endc

.end
```
</details>

**Output**



### 15.1.5 Lab: Velocity Saturation - sky130 (W=0.39um, L=0.15um)
<details> <summary> SPICE File: day2_nfet_idvds_L015_W039.spice </summary>

```
*** Model Description ***
.param temp=27

*** Including sky130 library files ***
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

*** Netlist Description ***

XM1 Vdd n1 0 0 sky130_fd_pr__nfet_01v8 w=0.39 l=0.15
R1 n1 in 55
Vdd vdd 0 1.8V
Vin in 0 1.8V

*** Simulation commands ***
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



### 15.1.6 Lab: Velocity Saturation - ID$ vs. VGS - sky130 NMOS (5u/2u vs. 0.39u/0.15u)
<details> <summary> SPICE File: day2_nfet_idvgs_L015_W039.spice </summary>

```
*** Model Description ***
.param temp=27

*** Including sky130 library files ***
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

**** Netlist Description ***
XM1 Vdd n1 0 0 sky130_fd_pr__nfet_01v8 w=0.39 l=0.15
R1 n1 in 55
Vdd vdd 0 1.8V
Vin in 0 1.8V

*** Simulation Commands ***
.op
.dc Vin 0 1.8 0.1 Vdd 1.8 1.8 0.2 

.control
run
display
setplot dc1
.endc

.end
```
</details>

**Output**

### CMOS Inverter Characteristics









# Inverted Pendulum

Maintaining the balance of the inverted pendulum along a vertical position with
Applying force to a cart is a common problem in control engineering. This system is inherently unstable. In this project we follow these steps to control inverted  pendulum.
- Linearization of nonlinear pendulum equations
- Obtaining the transformation function and the state space model of the system
- Obtaining dominant poles
- plotting root locus, nyquist, bode graph 

<img width="227" alt="Screen Shot 1402-02-27 at 23 31 17" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/a7b19121-4b58-425a-8d66-5f14373211a1">


## 

## Linearized equations and state space matrixes 

<img width="392" alt="Screen Shot 1402-02-28 at 00 07 15" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/71ff767c-b4b3-415b-a9b0-b84b903b78a0">
<img width="196" alt="Screen Shot 1402-02-28 at 00 07 29" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/6d52d6d6-0731-4795-ac96-1b5ef28ebbf1">
<img width="357" alt="Screen Shot 1402-02-28 at 00 08 28" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/9750b356-1b4f-4934-87e3-e721af306fb7">


## Tarnsition function (Φ) 
<img width="568" alt="Screen Shot 1402-02-28 at 00 09 21" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/87bb7914-6a42-4c48-a3d0-65ecc9d3fb43">


## Poles and Zeros
This system has a right hand side zero and pole, so this system is non-minimum phase and unstable.

## Step response of pendulum and cart (befor applying controller)
<img width="337" alt="Screen Shot 1402-02-28 at 00 11 29" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/78a36755-4077-43ae-8670-48b8508512e4">


## Stabilization
We use state feedback controller to Stabilization this sytem, but befor applying that we have to be sure that this syetem is observable and controllable simultaneously.
<img width="348" alt="Screen Shot 1402-02-28 at 00 12 17" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/628b3431-7dee-48d9-af21-817035e119f4">

<img width="364" alt="Screen Shot 1402-02-28 at 00 12 39" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/a131b52e-6e3f-4a17-83b6-babc00d2b449">
<img width="364" alt="Screen Shot 1402-02-28 at 00 13 09" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/c03e7656-6723-42ff-84a7-d760dffd3d51">


## Step response after applying controller

<img width="507" alt="Screen Shot 1402-02-28 at 00 13 40" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/65fe4669-f130-489f-8460-0203a7ed393d">


## Root Locus Diagram
<img width="553" alt="Screen Shot 1402-02-28 at 00 14 02" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/123a08f3-1cb8-4c39-94e2-ebec822004f3">


## Bode Diagram
<img width="548" alt="Screen Shot 1402-02-28 at 00 17 53" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/22bb1df9-d2e2-480e-8bdd-02a634fc3d9f">


## Nyquist Diagram
<img width="548" alt="Screen Shot 1402-02-28 at 00 15 00" src="https://github.com/ReyhanehAhani/Inverted_Pendulum/assets/88882191/1b1fd95a-6da0-4ce0-82fd-416e79412498">


##### check report.pdf for more information about project.
##### Contributers :
- Forough Afkhami
- Reyhaneh Ahani
- Fatemh Rafiee

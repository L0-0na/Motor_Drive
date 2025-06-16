# Stepper Motor Drive Circuit Project

**Authors:** Luna Salameh, Zaid Nasser  
**Supervisors:** M. Maher Al-Homsi, M. Ali Abbas, M. Mahjoub Daher  
**Institution:** Higher Institute of Applied Sciences and Technology (HIAST), Electronic and Mechanical Systems Department  
**Date:** April 4, 2022  

---

## 📌 Project Overview

This project involved the design and implementation of a drive circuit for a hybrid two-phase stepper motor (type 42BYGH801). The motor was controlled in both open-loop and closed-loop configurations, achieving speeds up to 150 RPM. We applied control strategies including:
- Open-loop PWM signal generation for H-bridge driving
- Closed-loop current control using a PI corrector for stable operation at various speeds

---

## ⚙️ Key Features

- **Hybrid stepper motor control**: Open-loop and closed-loop with PI current correction.
- **Unipolar and bipolar control modes**: Detailed analysis and comparison.
- **Voltage-to-frequency conversion** for speed command input.
- **PWM generation** with adjustable duty cycle for H-bridge control.
- **Current sensing** circuit with amplifier for feedback.
- **Simulation and practical testing**: Achieved stable control and verified the design against theoretical models.

---

## 🔩 Hardware Components

- Hybrid stepper motor (42BYGH801)
- H-bridge driver circuit
- Arduino / custom microcontroller for PWM generation
- Operational amplifiers for signal conditioning and current measurement
- Voltage regulator and DC supply

---

## 🧠 Control Architecture

1️⃣ **Speed Command:** DC voltage input → voltage-to-frequency converter → reference square wave signals  
2️⃣ **PWM Generation:** Compare reference signals with triangle wave (from waveform generator) → produce PWM  
3️⃣ **H-Bridge Drive:** PWM controls H-bridge transistors for motor phases  
4️⃣ **Feedback:** Current measured and compared to reference → PI controller adjusts PWM duty cycle  

---

## 🚀 How to Use

1. Set desired speed via DC voltage input.
2. The system generates PWM signals for the H-bridge according to voltage-to-frequency output.
3. The motor spins with speed proportional to the input voltage.
4. In closed-loop mode, the PI controller ensures current tracks the reference accurately.

---

## 🛠 Practical Notes

- Maximum tested speed: 150 RPM  
- PI controller design reduced rise time to ~1.36 ms (best achievable with given corrector capabilities)  
- System exhibits robust closed-loop current control across tested frequencies  

---

## 📄 References

- Sedra, A.S., Smith, K.C. (1982). *Microelectronic Circuits*, Oxford University Press  
- [Stepper Motor Basics - Inventables](https://blog.inventables.com/p/stepper-motors.html)  
- [Oriental Motor - Stepper Motor Technology](https://www.orientalmotor.com/stepper-motors/technology/everything-about-stepper-motors.html)

---

## 📌 License

This project was developed for academic purposes at HIAST.

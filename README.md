# 🔶 4-bit Modular Arithmetic Logic Unit (ALU) – Verilog HDL

### 🧠 Project Overview
This project implements a **4-bit modular Arithmetic Logic Unit (ALU)** in **Verilog HDL**, designed and simulated using **Xilinx Vivado 2025.1**.  
The ALU performs **eight arithmetic and logical operations** selected through a 3-bit `opcode`, with each operation implemented in a separate Verilog module for modularity and scalability.

---

### ⚙️ Features and Specifications
| Signal | Width | Description |
|---------|--------|-------------|
| **A** | 4-bit | Operand 1 |
| **B** | 4-bit | Operand 2 |
| **opcode** | 3-bit | Control signal to select operation |
| **result** | 8-bit | Output (extended for multiplication results) |

---

### 🧩 Supported Operations
| Opcode | Operation | Description |
|---------|------------|-------------|
| 000 | **ADD** | Adds A and B |
| 001 | **SUB** | Subtracts B from A |
| 010 | **MUL** | Multiplies A and B |
| 011 | **DIV** | Divides A by B |
| 100 | **AND** | Bitwise AND |
| 101 | **OR** | Bitwise OR |
| 110 | **XOR** | Bitwise XOR |
| 111 | **ROL** | Rotate Left (Custom Operation) |

---

### 🧱 Project Structure
```
4-bit-ALU-Verilog-Vivado/
│
├── add.v          # Addition module
├── sub.v          # Subtraction module
├── mul.v          # Multiplication module
├── div.v          # Division module
├── and_gate.v     # Bitwise AND
├── or_gate.v      # Bitwise OR
├── xor_gate.v     # Bitwise XOR
├── custom.v       # Custom Rotate Left operation
│
├── alu_top.v      # Top-level ALU integration
├── alu_tb.v       # Testbench for simulation
│
├── features.txt   # Opcode and operation mapping
├── report/
│   ├── report.pdf
│   └── waveforms/
│       └── alu_waveform.png
│
└── README.md
```

---

### 🧪 Simulation Details
- **Tool Used:** Xilinx Vivado 2025.1  
- **Simulation Type:** Behavioral  
- **Testbench:** `alu_tb.v`  
- Each test case runs for **10 ns** before opcode changes.  
- The waveform below shows correct execution of all operations (000–111):

#### 🖼️ Simulation Waveform
![ALU Simulation Waveform](report/waveforms/alu_waveform.png)

---

### 🧾 Design Highlights
- Fully **modular and hierarchical** structure.  
- **Custom operation (ROL)** demonstrates creativity and Verilog mastery.  
- **8-bit result** supports larger arithmetic operations.  
- Includes a **comprehensive testbench** for automatic verification.  

---

### 🛠️ How to Simulate (Vivado)
1. Open **Vivado → Create New RTL Project**
2. Add all `.v` files as **Design Sources** and `alu_tb.v` as **Simulation Source**
3. Set **`alu_tb`** as the top simulation module  
4. Run **Behavioral Simulation** → **Zoom to Full View**
5. Observe signal transitions for all operations in waveform

---

### 🚀 Key Learnings
- Modular RTL design and hierarchical integration  
- Writing self-checking Verilog testbenches  
- Using Vivado for simulation and waveform analysis  
- Understanding opcode-based ALU control logic  

---

### 💡 Future Enhancements
- Add **Overflow**, **Carry**, and **Zero** flags  
- Extend to **8-bit or 16-bit ALU**  
- Implement **pipelining** for high-performance designs  

---

### 👤 Author
**Rammohan M**  
B.Tech CSE (Cyber Security) – **SNU Chennai**  
BS in Electronic Systems – **IIT Madras**

📧 Email: rammohan15122006@gmail.com  
🔗 LinkedIn: [linkedin.com/in/rammohan06](https://www.linkedin.com/in/rammohan06/)  
🧰 GitHub: [github.com/rammohan2006](https://github.com/rammohan2006)

---

### 🏁 License
This project is open-source and available under the **MIT License**.  
Feel free to use, modify, and distribute for educational purposes.


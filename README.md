# Diamond-Pattern-in-Assembly
Diamond Pattern in Assembly (8086)
This project contains an 8086 Assembly language program that prints a diamond-shaped pattern using asterisks (*). The pattern is printed in the console using DOS interrupt 21h.

💡 Description
The program creates a symmetric diamond like the one below, made with increasing and then decreasing numbers of stars:
    *
   * *
  * * *
 * * * *
* * * * *
 * * * *
  * * *
   * *
    *

This is achieved using nested loops, character printing via interrupt INT 21H, and stack operations for looping control.

📂 File Structure
diamond.asm: The main assembly code file.

The code uses .MODEL SMALL and is meant to run in real-mode DOS emulators like EMU8086.

⚙️ How It Works
Upper Half:

Uses MOV CX, 5 for 5 rows.

In each line, prints spaces followed by asterisks.

Number of asterisks increases by 2 every row.

Lower Half:

Uses a second loop to mirror the upper triangle.

Decreases stars and increases blanks accordingly.

INT 21H Function 2:

Used for printing characters (DL stores the ASCII character).

Line breaks with ASCII codes 10 and 13.

Registers:

CX, BX, BH, BL for loop counters and tracking stars/blanks.

AH, DL for printing.

🛠 Requirements
To run this program, you will need:

EMU8086 or any x86 emulator supporting .asm files.

DOSBox or equivalent if running from a Windows/Linux machine.

🚀 How to Run
Open diamond.asm in EMU8086.

Assemble and run the program.

The diamond pattern will display in the emulator's console.

📌 Notes
This program is for educational purposes to demonstrate basic loop control, character output, and stack use in assembly.

Customize MOV CX and initial values for a different pattern size.

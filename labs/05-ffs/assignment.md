# Lab 5: Petra Slotova

## 1. Preparation

 ![Characteristic equations](images/ffs.png)

 **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | Reset |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | Reset |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | Set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | Set |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 1 | 1 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | 0 | Reset |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | 0 | Reset |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 0 | 1 | Set |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | 1 | Set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | 1 | Toggle |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | 0 | Toggle |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | Output did not change |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | Invert |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | Invert |

# VSD_CNN_accelerator
## System architecture
### NN architecture
* NIN model structure
  * We use NIN to improve the accurancy of detection with less parameter needed,
  * model structure :
    ![圖片1](https://github.com/user-attachments/assets/169c07c8-17a4-485d-a641-b687fc7d5162)
* Dataset
  * Source : GTSRB - German Traffic sign  ( kaggle )
  * Number of classes: 43
  * Train : 34799 imgs
  * Validation : 4410 imgs
  * Test : 12630 imgs
  * Image size: $32*32$
* Clip-Q
  * Clip-Q is used to save the usage of Mem, reduce the numbers of parameters.
  * Clip-Q Step :
  * ![圖片3](https://github.com/user-attachments/assets/dff43a18-bab8-4076-ab10-df0b33cc5d48)
### HW architecture
* The HW component's details
  ![圖片4](https://github.com/user-attachments/assets/4270d810-6b9f-429a-ae47-1815295f3f9e)


### EPU architecture
* EPU structure
  * EPU Buffer : 152KB
  * DM : 64 KB
  * SDRAM : 113 KB

* EPU mode
  * 2 Conv3x3
   * 4PE,each with 9 MACs
  * 2 Max Pooling
  * Fully connected 
![image](https://github.com/user-attachments/assets/892f6830-a928-47d7-8123-9f9990609434)


## Verification
### System Flow Chart
![image](https://github.com/user-attachments/assets/7b7bb3bc-0c3b-4c31-93c7-f9a44f34e705)

### EPU verification
1. TB loads input/weight/bias/parameter data into RTL-simulated SRAM buffers.
2. EPU starts computation and writes results to output buffer.
3. TB verify the content of output buffer.
   ![image](https://github.com/user-attachments/assets/dbbb66c8-7fc0-4989-be8e-df23f7b921db)


### Full sys verification
1. Assume ALL input/weight/bias/parameter data in DRAM.
2. Use DMA to move data from DRAM to EPU’s buffer.
3. CPU writes to EPU ctrl registers and starts EPU to computation.
4. EPU finishes and send interrupt to CPU. CPU continues with ISR(Interrupt service routine).
5. CPU writes ctrl signals for next layer.
6. If done, DMA move data from EPU to DRAM.
7. TB verifies the maximum content of DRAM as the EPU's predicted result and compares it with golden.
![image](https://github.com/user-attachments/assets/9e324c08-9aa6-466b-84b4-b19b80ff6163)

## Overall results
![image](https://github.com/user-attachments/assets/50691d50-a9b8-4065-aef7-a29828beaf07)
![image](https://github.com/user-attachments/assets/3a9f8e89-3f8f-41d8-80db-ae0293887b44)


## Contribution
Thanks to 陳彥佑 林晉宇 張正德 柯岳宏 蔡硯安 to complete this project.
 

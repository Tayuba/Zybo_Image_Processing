# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/simpleProjects/LedPushButton_app_system/_ide/scripts/systemdebugger_ledpushbutton_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/simpleProjects/LedPushButton_app_system/_ide/scripts/systemdebugger_ledpushbutton_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B105D5A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B105D5A-23727093-0"}
fpga -file /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/simpleProjects/LedPushButton_app/_ide/bitstream/PushButton_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/simpleProjects/LedPushButtonPlatform/export/LedPushButtonPlatform/hw/PushButton_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/simpleProjects/LedPushButton_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/simpleProjects/LedPushButton_app/Debug/LedPushButton_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con

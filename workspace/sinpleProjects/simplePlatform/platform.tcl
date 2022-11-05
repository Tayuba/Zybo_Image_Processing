# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/sinpleProjects/simplePlatform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/sinpleProjects/simplePlatform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {simplePlatform}\
-hw {/home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/sinpleProjects/ledOn/simple1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/ayuba/Zybo_Image_Processing/Zybo_Image_Processing/workspace/sinpleProjects}

platform write
platform generate -domains 
platform active {simplePlatform}
platform generate

@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 2fc78b92b3cb44a2bd499e9cdf2d77e4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot vio_file_behav xil_defaultlib.vio_file xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

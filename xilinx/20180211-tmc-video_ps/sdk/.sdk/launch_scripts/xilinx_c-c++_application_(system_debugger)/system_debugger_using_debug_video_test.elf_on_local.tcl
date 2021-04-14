connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183756705A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Basys3 210183756705A"} -index 0
dow /home/trevor/mylab/experiments/20180211-tmc-video_ps/sdk/video_test/Debug/video_test.elf
bpadd -addr &main

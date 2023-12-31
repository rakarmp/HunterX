MODDIR=${0%/*}
write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor performance
write /sys/devices/system/cpu/cpufreq/performance/go_hispeed_load 100
write /sys/devices/system/cpu/cpufreq/performance/above_hispeed_delay 0
write /sys/devices/system/cpu/cpufreq/performance/boost 1
write /sys/module/msm_performance/parameters/touchboost 1
write /sys/devices/system/cpu/cpufreq/performance/max_freq_hysteresis 1
write /sys/devices/system/cpu/cpufreq/performance/align_windows 1
write /sys/devices/soc/1c00000.qcom,kgsl-3d0/devfreq/1c00000.qcom,kgsl-3d0/governor performance
write /sys/class/kgsl/kgsl-3d0/devfreq/governor msm-adreno-tz
write /sys/module/adreno_idler/parameters/adreno_idler_active 1
write /sys/module/lazyplug/parameters/nr_possible_cores 8
write /dev/cpuset/foreground/cpus 0-3,4-7
write /dev/cpuset/foreground/boost/cpus 4-7
write /dev/cpuset/top-app/cpus 0-7

# SELinux
setenforce 1

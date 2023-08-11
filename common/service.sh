MODDIR=${0%/*}
echo 1 > /sys/kernel/fast_charge/force_fast_charge

while [ `getprop vendor.post_boot.parsed` != "1" ]; do
    sleep 1s
done

sleep 30

# Core control parameters
echo 1 > /sys/devices/system/cpu/cpu0/core_ctl/enable
echo 1 > /sys/devices/system/cpu/cpu0/core_ctl/min_cpus
echo 4 > /sys/devices/system/cpu/cpu0/core_ctl/max_cpus
echo 100 > /sys/devices/system/cpu/cpu0/core_ctl/offline_delay_ms
echo 0 > /sys/devices/system/cpu/cpu0/core_ctl/is_big_cluster
echo 1 > /sys/devices/system/cpu/cpu4/core_ctl/enable
echo 2 > /sys/devices/system/cpu/cpu4/core_ctl/min_cpus
echo 4 > /sys/devices/system/cpu/cpu4/core_ctl/max_cpus
echo 70 > /sys/devices/system/cpu/cpu4/core_ctl/busy_up_thres
echo 60 > /sys/devices/system/cpu/cpu4/core_ctl/busy_down_thres
echo 100 > /sys/devices/system/cpu/cpu4/core_ctl/offline_delay_ms
echo 1 > /sys/devices/system/cpu/cpu4/core_ctl/is_big_cluster
echo 4 > /sys/devices/system/cpu/cpu4/core_ctl/task_thres

# CPU setting
echo '4:2803200' > /sys/module/msm_performance/parameters/cpu_max_freq
echo '5:2803200' > /sys/module/msm_performance/parameters/cpu_max_freq
echo '6:2803200' > /sys/module/msm_performance/parameters/cpu_max_freq
echo '7:2803200' > /sys/module/msm_performance/parameters/cpu_max_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo '2803200' > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
echo '2803200' > /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu5/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
echo '2803200' > /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu6/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
echo '2803200' > /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu7/cpufreq/scaling_max_freq
echo '4:825600' > /sys/module/msm_performance/parameters/cpu_min_freq
echo '5:825600' > /sys/module/msm_performance/parameters/cpu_min_freq
echo '6:825600' > /sys/module/msm_performance/parameters/cpu_min_freq
echo '7:825600' > /sys/module/msm_performance/parameters/cpu_min_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo '825600' > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
echo '825600' > /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu5/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
echo '825600' > /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu6/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq
echo '825600' > /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu7/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
chmod 644 /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
chmod 644 /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
chmod 644 /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
echo '0:1766400' > /sys/module/msm_performance/parameters/cpu_max_freq
echo '1:1766400' > /sys/module/msm_performance/parameters/cpu_max_freq
echo '2:1766400' > /sys/module/msm_performance/parameters/cpu_max_freq
echo '3:1766400' > /sys/module/msm_performance/parameters/cpu_max_freq
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo '1766400' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
echo '1766400' > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
echo '1766400' > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
echo '1766400' > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
echo '0:300000' > /sys/module/msm_performance/parameters/cpu_min_freq
echo '1:300000' > /sys/module/msm_performance/parameters/cpu_min_freq
echo '2:300000' > /sys/module/msm_performance/parameters/cpu_min_freq
echo '3:300000' > /sys/module/msm_performance/parameters/cpu_min_freq
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo '300000' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
echo '300000' > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
echo '300000' > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
echo '300000' > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo 'schedutil' > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor

# CPU Boost
echo "0:0 4:0" > /sys/module/cpu_boost/parameters/topkek_boost_freq
echo '100' > /sys/module/cpu_boost/parameters/topkek_boost_ms
echo '0:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '1:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '2:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '3:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '4:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '5:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '6:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '7:0' > /sys/module/cpu_boost/parameters/input_boost_freq
echo '100' > /sys/module/cpu_boost/parameters/input_boost_ms

echo '20000' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us
echo '1000' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us	
echo '1' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/iowait_boost_enable
echo '1209600' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/hispeed_freq
echo '90' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/hispeed_load
echo '1' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/pl
echo '20000' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/down_rate_limit_us
echo '1000' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/up_rate_limit_us
echo '1' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/iowait_boost_enable
echo '1574400' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/hispeed_freq
echo '90' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/hispeed_load
echo '1' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/pl

# minfree
echo 1 > /sys/module/lowmemorykiller/parameters/enable_adaptive_lmk
echo "16384,24576,32768,65536,131072,163840" > /sys/module/lowmemorykiller/parameters/minfree

# ZRAM
echo '2097152' > /sys/block/zram0/queue/read_ahead_kb

# better idling
echo 0-3 > /dev/cpuset/restricted/cpus

# cpusets tuning
echo 100 > /sys/module/cpu_boost/parameters/input_boost_ms
echo 0-7 > /dev/cpuset/top-app/cpus
echo 0-7 > /dev/cpuset/game/cpus
echo 0-7 > /dev/cpuset/gamelite/cpus
echo "2-3,6-7" > /dev/cpuset/foreground/cpus
echo 2-3 > /dev/cpuset/background/cpus
echo 0-1 > /dev/cpuset/system-background/cpus

echo 1 > /dev/stune/top-app/schedtune.colocate
echo 1 > /dev/stune/top-app/schedtune.sched_boost_enabled
echo 1 > /dev/stune/top-app/schedtune.sched_boost_no_override
echo 0 > /dev/stune/top-app/schedtune.prefer_idle
echo 0 > /dev/stune/top-app/schedtune.boost
echo 0 > /dev/stune/foreground/schedtune.colocate
echo 1 > /dev/stune/foreground/schedtune.sched_boost_enabled
echo 0 > /dev/stune/foreground/schedtune.sched_boost_no_override
echo 0 > /dev/stune/foreground/schedtune.prefer_idle
echo 0 > /dev/stune/foreground/schedtune.boost
echo 0 > /dev/stune/background/schedtune.colocate
echo 1 > /dev/stune/background/schedtune.sched_boost_enabled
echo 0 > /dev/stune/background/schedtune.sched_boost_no_override
echo 0 > /dev/stune/background/schedtune.prefer_idle
echo 0 > /dev/stune/background/schedtune.boost
echo 0 > /dev/stune/schedtune.colocate
echo 1 > /dev/stune/schedtune.sched_boost_enabled
echo 0 > /dev/stune/schedtune.sched_boost_no_override
echo 0 > /dev/stune/schedtune.prefer_idle
echo 0 > /dev/stune/schedtune.boost

# Power Saving
chmod 664 /sys/module/workqueue/parameters/power_efficient
echo 'Y' > /sys/module/workqueue/parameters/power_efficient
echo "mem" > /sys/power/autosleep
echo "deep" > /sys/power/mem_sleep

echo "Y" > /sys/kernel/debug/dsi-panel-ebbg-fhd-ft8716-video_display/dsi-phy-0_allow_phy_power_off
echo "Y" > /sys/kernel/debug/dsi-panel-ebbg-fhd-ft8716-video_display/ulps_enable
echo "Y" > /sys/kernel/debug/dsi_panel_ebbg_fhd_ft8719_video_display/dsi-phy-0_allow_phy_power_off
echo "Y" > /sys/kernel/debug/dsi_panel_ebbg_fhd_ft8719_video_display/ulps_enable
echo "Y" > /sys/kernel/debug/dsi_panel_jdi_fhd_r63452_cmd_display/dsi-phy-0_allow_phy_power_off
echo "Y" > /sys/kernel/debug/dsi_panel_jdi_fhd_r63452_cmd_display/ulps_enable
echo "Y" > /sys/kernel/debug/dsi_panel_jdi_fhd_nt35596s_video_display/dsi-phy-0_allow_phy_power_off
echo "Y" > /sys/kernel/debug/dsi_panel_jdi_fhd_nt35596s_video_display/ulps_enable
echo "Y" > /sys/kernel/debug/dsi_tianma_fhd_nt36672a_video_display/dsi-phy-0_allow_phy_power_off
echo "Y" > /sys/kernel/debug/dsi_tianma_fhd_nt36672a_video_display/ulps_enable
echo "Y" > /sys/kernel/debug/dsi_ss_ea8074_notch_fhd_cmd_display/dsi-phy-0_allow_phy_power_off
echo "Y" > /sys/kernel/debug/dsi_ss_ea8074_notch_fhd_cmd_display/ulps_enable

# CAF CPU boost
if [[ -d "/sys/module/cpu_boost" ]]
then
	write "/sys/module/cpu_boost/parameters/input_boost_freq" 0:1400000
	write "/sys/module/cpu_boost/parameters/input_boost_ms" 250
fi

# TouchPaint
if [[ -d "/sys/module/touchpaint" ]]
then
  write "/sys/module/touchpaint/parameters/mode" 2
  write "/sys/module/touchpaint/parameters/brush_size" 1
  write "/sys/module/touchpaint/parameters/follow_box_size" 311
fi

# Dt2W fix
If [[ -d "/sys/touchpanel/double_tap" ]]
then
  write "/sys/touchpanel/double_tap" 1
fi

# FSTRIM

# Cek apakah file penanda sudah ada
if [ ! -f /data/fstrim_done ]; then
    # Jalankan perintah fstrim
    fstrim -v /data

    # Buat file penanda
    touch /data/fstrim_done
fi


if [ ! -f /cache/fstrim_done ]; then
    fstrim -v /cache

    touch /cache/fstrim_done
fi

if [ ! -f /system/fstrim_done ]; then
    fstrim -v /system

    touch /system/fstrim_done
fi

if [ ! -f /vendor/fstrim_done ]; then
    fstrim -v /vendor

    touch /vendor/fstrim_done
fi

if [ ! -f /product/fstrim_done ]; then
    fstrim -v /product

    touch /product/fstrim_done
fi


# GED & PPM
if [ -d "/sys/module/ged/parameters" ]; then
echo 1 > /sys/module/ged/parameters/gx_game_mode
echo 1 > /sys/module/ged/parameters/gx_force_cpu_boost
echo 1 > /sys/module/ged/parameters/boost_amp
echo 1 > /sys/module/ged/parameters/boost_extra
echo 1 > /sys/module/ged/parameters/boost_gpu_enable
echo 1 > /sys/module/ged/parameters/enable_cpu_boost
echo 1 > /sys/module/ged/parameters/enable_gpu_boost
echo 1 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 10 > /sys/module/ged/parameters/gpu_idle
echo 100 > /sys/module/ged/parameters/cpu_boost_policy
echo 0 > /sys/module/ged/parameters/ged_force_mdp_enable
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 100 > /sys/module/ged/parameters/ged_smart_boost
echo 1 > /sys/module/ged/parameters/gx_frc_mode
echo 1 > /sys/module/ged/parameters/gx_boost_on
fi

if [ -d "/proc/ppm" ]; then
echo 1 > /proc/ppm/enabled
echo 0 0 > /proc/ppm/policy_status
echo 1 1 > /proc/ppm/policy_status
echo 2 0 > /proc/ppm/policy_status
echo 3 0 > /proc/ppm/policy_status
echo 4 0 > /proc/ppm/policy_status
echo 5 0 > /proc/ppm/policy_status
echo 6 1 > /proc/ppm/policy_status
echo 7 1 > /proc/ppm/policy_status
echo 8 0 > /proc/ppm/policy_status
echo 9 1 > /proc/ppm/policy_status
fi

# Google Services Drain fix
sleep "0.001"
su -c "pm enable com.google.android.gms"
sleep "0.001"
su -c "pm enable com.google.android.gsf"
sleep "0.001"
su -c "pm enable com.google.android.gms/.update.SystemUpdateActivity"
sleep "0.001"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService"
sleep "0.001"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService$ActiveReceiver"
sleep "0.001"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService$Receiver"
sleep "0.001"
su -c "pm enable com.google.android.gms/.update.SystemUpdateService$SecretCodeReceiver"
sleep "0.001"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateActivity"
sleep "0.001"
su -c "pm enable com.google.android.gsf/.update.SystemUpdatePanoActivity"
sleep "0.001"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateService"
sleep "0.001"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateService$Receiver"
sleep "0.001"
su -c "pm enable com.google.android.gsf/.update.SystemUpdateService$SecretCodeReceiver"

#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# Mode Hard extreme perfomance
echo "performance" > /sys/kernel/gpu/gpu_governor
echo "performance" > /sys/bus/cpu/devices/cpu0/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu1/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu2/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu3/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu4/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu5/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu6/cpufreq/scaling_governor
echo "performance" > /sys/bus/cpu/devices/cpu7/cpufreq/scaling_governor
echo "performance" > /sys/class/devfreq/soc:qcom,snoc_cnoc_keepalive/governor
echo "performance" > /sys/class/devfreq/soc:qcom,npudsp-npu-ddr-bw/governor
echo "performance" > /sys/class/devfreq/soc:qcom,npu-npu-ddr-bw/governor
echo "performance" > /sys/class/devfreq/soc:qcom,kgsl-busmon/governor
echo "performance" > /sys/class/devfreq/soc:qcom,gpubw/governor
echo "performance" > /sys/class/devfreq/1d84000.ufshc/governor
echo "performance" > /sys/class/devfreq/5000000.qcom,kgsl-3d0/governor
echo "performance" > /sys/class/devfreq/aa00000.qcom,vidc1:arm9_bus_ddr/governor
echo "performance" > /sys/class/devfreq/aa00000.qcom,vidc1:bus_cnoc/governor
echo "performance" > /sys/class/devfreq/aa00000.qcom,vidc1:venus_bus_ddr/governor
echo "performance" > /sys/class/devfreq/mmc0/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cdsp-cdsp-l3-lat/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu-cpu-llcc-bw/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu-llcc-ddr-bw/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu0-cpu-ddr-latfloor/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu0-cpu-l3-lat/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu0-cpu-llcc-lat/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu6-cpu-ddr-latfloor/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu0-llcc-ddr-lat/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu6-cpu-l3-lat/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu6-cpu-llcc-lat/governor
echo "performance" > /sys/class/devfreq/soc:qcom,cpu6-llcc-ddr-lat/governor
# Kgsl
echo "0" > /sys/class/kgsl/kgsl-3d0/force_bus_on
echo "1" > /sys/class/kgsl/kgsl-3d0/force_clk_on
echo "1" > /sys/class/kgsl/kgsl-3d0/force_no_nap
echo "1" > /sys/class/kgsl/kgsl-3d0/force_rail_on
echo "5" > /sys/class/kgsl/kgsl-3d0/idle_times
echo "0" > /sys/class/kgsl/kgsl-3d0/min_pwrlevel
echo "0" > /sys/class/kgsl/kgsl-3d0/default_pwrlevel
echo "0" > /sys/class/kgsl/kgsl-3d0/pmqos_active_latency
echo "1" > /sys/class/kgsl/kgsl-3d0/snapshot/force_panic
echo "0" > /sys/class/kgsl/kgsl-3d0/snapshot/snapshot_crashdumper
echo "0" > /sys/class/kgsl/kgsl-3d0/throlling
echo "0" > /sys/class/kgsl/kgsl-3d0/dispatch/context_burst_count
echo "0" > /sys/class/kgsl/kgsl-3d0/dispatch/context_drawqueue_size
echo "0" > /sys/class/kgsl/kgsl-3d0/dispatch/context_drawqueue_size
echo "0" > /sys/class/kgsl/kgsl-3d0/dispatch/drawobj_timeout
echo "300" > /sys/class/kgsl/kgsl-3d0/dispatch/fault_detect_interval
echo "0" > /sys/class/kgsl/kgsl-3d0/dispatch/fault_throttle_burst
echo "0" > /sys/class/kgsl/kgsl-3d0/dispatch/inflight_low_latency
echo "0" > /sys/module/lowmemorykiller/parameters/vmpressure_file_min
echo "0" > /sys/module/uvcvideo/parameters/nodrop
echo "0" > /sys/module/uvcvideo/parameters/quirks
echo "0" > /proc/sys/vm/vfs_cache_pressure
echo "0" > /proc/sys/vm/user_reserve_kbytes
echo "0" > /proc/sys/vm/extra_free_kbytes
echo "1" > /proc/sys/vm/block_dumb
echo "3" > /proc/sys/vm/drop_caches
echo "100" > /proc/sys/vm/extfrag_threshold
echo "300" > /proc/sys/vm/stat_interval
echo "0" > /proc/sys/vm/want_old_faultaround_pte
echo "1" > /proc/sys/vm/panic_on_oom
echo "0" > /proc/sys/vm/overcommit_ratio
echo "0" > /proc/sys/vm/overcommit_memory
echo "0" > /proc/sys/vm/overcommit_kbytes
echo "0" > /proc/sys/vm/oom_dump_tasks
echo "100" > /proc/sys/vm/min_free_kbytes
echo "65535" > /proc/sys/kernel/overflowgid
echo "65535" > /proc/sys/kernel/overflowuid
echo "999999" > /proc/sys/kernel/panic
echo "0" > /proc/sys/kernel/perf_cpu_time_percent
echo "0" > /proc/sys/kernel/perf_event_max_contexts_per_stack
echo "0" > /proc/sys/kernel/perf_event_max_sample_rate
echo "0" > /proc/sys/kernel/perf_event_max_stack
echo "0" > /proc/sys/kernel/perf_event_mlock_kb
echo "0" > /proc/sys/kernel/perf_event_paranoid
echo "deadline" > /sys/block/sda/queue/scheduler
echo "512" > /sys/block/sda/queue/read_ahead_kb
echo "0" > /sys/block/sda/queue/rotational
echo "0" > /sys/block/sda/queue/iostats
echo "0" > /sys/block/sda/queue/add_random
echo "2" > /sys/block/sda/queue/rq_affinity
echo "0" > /sys/block/sda/queue/nomerges
echo "0" > /sys/block/sda/queue/nr_requests
echo "deadline" > /sys/block/sdb/queue/scheduler
echo "512" > /sys/block/sdb/queue/read_ahead_kb
echo "0" > /sys/block/sdb/queue/rotational
echo "0" > /sys/block/sdb/queue/iostats
echo "0" > /sys/block/sdb/queue/add_random
echo "2" > /sys/block/sdb/queue/rq_affinity
echo "0" > /sys/block/sdb/queue/nomerges
echo "0" > /sys/block/sdb/queue/nr_requests
echo "deadline" > /sys/block/sdc/queue/scheduler
echo "512" > /sys/block/sdc/queue/read_ahead_kb
echo "0" > /sys/block/sdc/queue/rotational
echo "0" > /sys/block/sdc/queue/iostats
echo "0" > /sys/block/sdc/queue/add_random
echo "2" > /sys/block/sdc/queue/rq_affinity
echo "0" > /sys/block/sdc/queue/nomerges
echo "0" > /sys/block/sdc/queue/nr_requests
echo "deadline" > /sys/block/sdd/queue/scheduler
echo "512" > /sys/block/sdd/queue/read_ahead_kb
echo "0" > /sys/block/sdd/queue/rotational
echo "0" > /sys/block/sdd/queue/iostats
echo "0" > /sys/block/sdd/queue/add_random
echo "2" > /sys/block/sdd/queue/rq_affinity
echo "0" > /sys/block/sdd/queue/nomerges
echo "0" > /sys/block/sdd/queue/nr_requests
echo "deadline" > /sys/block/sde/queue/scheduler
echo "512" > /sys/block/sde/queue/read_ahead_kb
echo "0" > /sys/block/sde/queue/rotational
echo "0" > /sys/block/sde/queue/iostats
echo "0" > /sys/block/sde/queue/add_random
echo "2" > /sys/block/sde/queue/rq_affinity
echo "0" > /sys/block/sde/queue/nomerges
echo "0" > /sys/block/sde/queue/nr_requests
echo "deadline" > /sys/block/sdf/queue/scheduler
echo "512" > /sys/block/sdf/queue/read_ahead_kb
echo "0" > /sys/block/sdf/queue/rotational
echo "0" > /sys/block/sdf/queue/iostats
echo "0" > /sys/block/sdf/queue/add_random
echo "2" > /sys/block/sdf/queue/rq_affinity
echo "0" > /sys/block/sdf/queue/nomerges
echo "0" > /sys/block/sdf/queue/nr_requests
echo "512" > /sys/block/mmcblk0/queue/read_ahead_kb
echo "0" > /sys/block/mmcblk0/queue/nr_requests
echo "512" > /sys/block/mmcblk1/queue/read_ahead_kb
echo "0" > /sys/block/mmcblk1/queue/nr_requests
echo "deadline" > /sys/block/mmcblk0/queue/scheduler
echo "deadline" > /sys/block/mmcblk1/queue/scheduler
echo "512" > /sys/block/dm-0/queue/read_ahead_kb
echo "0" > /sys/block/dm-0/queue/nr_requests
echo "512" > /sys/block/ram0/queue/read_ahead_kb
echo "512" > /sys/block/ram1/queue/read_ahead_kb
echo "512" > /sys/block/ram2/queue/read_ahead_kb
echo "512" > /sys/block/ram3/queue/read_ahead_kb
echo "512" > /sys/block/ram4/queue/read_ahead_kb
echo "512" > /sys/block/ram5/queue/read_ahead_kb
echo "512" > /sys/block/ram6/queue/read_ahead_kb
echo "512" > /sys/block/ram7/queue/read_ahead_kb
echo "N" > /sys/module/lpm_levels/system/pwr/cpu0/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/pwr/cpu1/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/pwr/cpu2/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/pwr/cpu3/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/perf/cpu4/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/perf/cpu5/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/perf/cpu6/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/perf/cpu7/ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/pwr/pwr-l2-dynret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/perf/perf-l2-dynret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/pwr/pwr-l2-ret/idle_enabled
echo "N" > /sys/module/lpm_levels/system/perf/perf-l2-ret/idle_enabled
echo "Y" > /sys/module/lpm_levels/parameters/sleep_disabled
echo "Y" > /sys/module/workqueue/parameters/disable_numa
echo "Y" > /sys/module/workqueue/parameters/power_efficient
echo "100" > /dev/stune/schedtune.boost
echo "0" > /dev/stune/schedtune.colocate
echo "1" > /dev/stune/schedtune.sched_boost_enabled
echo "0" > /dev/stune/schedtune.sched_boost_no_override
echo "0" > /dev/stune/schedtune.prefer_idle
echo "100" > /dev/stune/schedtune.boost
echo "0-7" > /dev/cpuset/system-background/cpus
echo "0-7" > /dev/cpuset/rt/cpus
echo "0-7" > /dev/cpuset/top-app/cpus
echo "0-7" > /dev/cpuset/game/cpus
echo "0-7" > /dev/cpuset/audio-app/cpus
echo "0-7" > /dev/cpuset/background/cpus
echo "0-7" > /dev/cpuset/camera-daemon/cpus
echo "0-7" > /dev/cpuset/rt/cpus
echo "0-7" > /sys/devices/system/cpu/online
echo "2-5,6-7" > /dev/cpuset/foreground/cpus
echo "1" > /proc/sys/kernel/sched_boost
echo "0" > /proc/sys/kernel/printk
echo "95" > /proc/sys/kernel/sched_upmigrate
echo "40" > /proc/sys/kernel/sched_group_upmigrate
echo "95" > /proc/sys/kernel/sched_downmigrate
echo "45" > /proc/sys/kernel/sched_group_downmigrate
echo "10" > /proc/sys/kernel/sched_initial_task_util
echo "0" > /proc/sys/kernel/sched_min_task_util_for_boost_colocation
echo "0" > /proc/sys/kernel/sched_autogroup_enabled

# SOUND
echo "15 15" > /sys/kernel/sound_control/headphone_gain
echo "3" > /sys/kernel/sound_control/mic_gain
echo "7" > /sys/kernel/sound_control/earpiece_gain
echo "Sound Boost Excecuted on $(date +"%d-%m-%Y %r" )" >> /storage/emulated/0/gamextreme.log
echo "" >> /storage/emulated/0/gamextreme.log


# LMK - Zram & Management Tweaks Set Config v5
stop perfd
echo '1' > /sys/module/lowmemorykiller/parameters/enable_adaptive_lmk
echo '100' > /proc/sys/vm/swappiness
rm /data/system/perfd/default_values
echo '0' > /proc/sys/vm/laptop_mode;
echo '0' > /proc/sys/vm/oom_kill_allocating_task;
echo '0' > /proc/sys/vm/panic_on_oom;
echo '100' > /proc/sys/vm/swappiness;
echo '70' > /proc/sys/vm/dirty_background_ratio;
echo '90' > /proc/sys/vm/dirty_ratio;
echo '10' > /proc/sys/vm/vfs_cache_pressure;
echo '512' > /sys/block/mmcblk0/queue/read_ahead_kb;
echo '512' > /sys/block/mmcblk1/queue/read_ahead_kb;
echo '1024' > /sys/block/ram0/queue/read_ahead_kb
echo '1024' > /sys/block/ram1/queue/read_ahead_kb
echo '1024' > /sys/block/ram2/queue/read_ahead_kb
echo '1024' > /sys/block/ram3/queue/read_ahead_kb
echo '1024' > /sys/block/ram4/queue/read_ahead_kb
echo '1024' > /sys/block/ram5/queue/read_ahead_kb
echo '1024' > /sys/block/ram6/queue/read_ahead_kb
echo '1024' > /sys/block/ram7/queue/read_ahead_kb
echo '1024' > /sys/block/ram8/queue/read_ahead_kb
echo '1024' > /sys/block/ram9/queue/read_ahead_kb
echo '1024' > /sys/block/ram10/queue/read_ahead_kb
echo '1024' > /sys/block/ram11/queue/read_ahead_kb
echo '1024' > /sys/block/ram12/queue/read_ahead_kb
echo '1024' > /sys/block/ram13/queue/read_ahead_kb
echo '1024' > /sys/block/ram14/queue/read_ahead_kb
echo '1024' > /sys/block/ram15/queue/read_ahead_kb
echo '1024' > /sys/block/vnswap0/queue/read_ahead_kb
echo '8192' > /proc/sys/vm/min_free_kbytes;
echo '0' > /proc/sys/vm/oom_kill_allocating_task;
sleep 30
chmod 666 /sys/module/lowmemorykiller/parameters/minfree;
chown root /sys/module/lowmemorykiller/parameters/minfree;
echo '21816,29088,36360,43632,50904,65448' > /sys/module/lowmemorykiller/parameters/minfree;
rm /data/system/perfd/default_values;
echo '10' > /proc/sys/vm/vfs_cache_pressure;
echo '300' > /proc/sys/vm/dirty_writeback_centisecs;
echo '150' > /proc/sys/vm/dirty_expire_centisecs;
echo '10' > /proc/sys/vm/vfs_cache_pressure;
echo '30000' > /proc/sys/vm/extra_free_kbytes
start perfd

#I/O
echo 'noop' > /sys/block/mmcblk0/queue/scheduler
echo 'noop' > /sys/block/mmcblk1/queue/scheduler

#Misc
echo '0' > /sys/module/mmc_core/parameters/use_spi_crc
echo 'N' > /sys/module/sync/parameters/fsync_enabled
echo '0' >/sys/kernel/dyn_fsync/Dyn_fsync_active

# CPU Boost Tweaks Set Config
echo '0' > /sys/devices/system/cpu/isolated;
echo '0' > /sys/devices/system/cpu/offline;
echo '0' > /sys/devices/system/cpu/uevent;
echo '1' > /sys/devices/system/cpu/cpufreq/policy0/schedutil/iowait_boost_enable;
echo '1' > /sys/devices/system/cpu/cpufreq/policy4/schedutil/iowait_boost_enable;
echo '902400' > /sys/devices/system/cpu/cpufreq/policy0/cpuinfo_min_freq;
echo '1113600' > /sys/devices/system/cpu/cpufreq/policy4/cpuinfo_min_freq;
echo '902400' > /sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq;
echo '1113600' > /sys/devices/system/cpu/cpufreq/policy4/scaling_min_freq;
echo '1113600' > /sys/devices/system/cpu/cpufreq/policy0/scaling_setspeed;
echo '1113600' > /sys/devices/system/cpu/cpufreq/policy4/scaling_setspeed;
chmod 644 /sys/module/workqueue/parameters/power_efficient
echo 'Y' > /sys/module/workqueue/parameters/power_efficient
write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor performance
write /sys/devices/system/cpu/cpufreq/performance/go_hispeed_load 75
write /sys/devices/system/cpu/cpufreq/performance/above_hispeed_delay 0
write /sys/devices/system/cpu/cpufreq/performance/boost 1
write /sys/module/msm_performance/parameters/touchboost 1
write /sys/devices/system/cpu/cpufreq/performance/max_freq_hysteresis 1
write /sys/devices/system/cpu/cpufreq/performance/align_windows 1
write /sys/devices/soc/1c00000.qcom,kgsl-3d0/devfreq/1c00000.qcom,kgsl-3d0/governor performance
write /sys/class/kgsl/kgsl-3d0/devfreq/governor performance
write /sys/module/adreno_idler/parameters/adreno_idler_active 0
write /sys/module/lazyplug/parameters/nr_possible_cores 8
write /dev/cpuset/foreground/cpus 0-7
write /dev/cpuset/foreground/boost/cpus 0-7
write /dev/cpuset/top-app/cpus 0-7
write /dev/cpuset/audio-app/cpus 0-7
write /dev/cpuset/background/cpus 0-7
write /dev/cpuset/camera-daemon/cpus 0-7
write /dev/cpuset/rt/cpus 0-7

# TCP Congestion Control Tweaks Set Config V5
write /proc/sys/net/core/default_qdisc; fq_codel
write /proc/sys/net/ipv4/tcp_congestion_control; bbr

#force_fast_charge
sleep 10
chmod 777 /sys/class/power_supply/*/*
chmod 777 /sys/module/qpnp_smbcharger/*/*
chmod 777 /sys/module/dwc3_msm/*/*
chmod 777 /sys/module/phy_msm_usb/*/*
while true; do
echo '1' > /sys/kernel/fast_charge/force_fast_charge
echo '1' > /sys/class/power_supply/battery/system_temp_level
echo '1' > /sys/kernel/fast_charge/failsafe
echo '1' > /sys/class/power_supply/battery/allow_hvdcp3
echo '1' > /sys/class/power_supply/usb/pd_allowed
echo '1' > /sys/class/power_supply/battery/subsystem/usb/pd_allowed
echo '0' > /sys/class/power_supply/battery/input_current_limited
echo '1' > /sys/class/power_supply/battery/input_current_settled
echo '0' > /sys/class/qcom-battery/restricted_charging
echo '150' > /sys/class/power_supply/bms/temp_cool
echo '460' > /sys/class/power_supply/bms/temp_hot
echo '460' > /sys/class/power_supply/bms/temp_warm
echo '2750000' > /sys/class/power_supply/usb/current_max
echo '2750000' > /sys/class/power_supply/usb/hw_current_max
echo '2750000' > /sys/class/power_supply/usb/pd_current_max
echo '2750000' > /sys/class/power_supply/usb/ctm_current_max
echo '2750000' > /sys/class/power_supply/usb/sdp_current_max
echo '2750000' > /sys/class/power_supply/main/current_max
echo '2750000' > /sys/class/power_supply/main/constant_charge_current_max
echo '2750000' > /sys/class/power_supply/battery/current_max
echo '2750000' > /sys/class/power_supply/battery/constant_charge_current_max
echo '4600000' > /sys/class/qcom-battery/restricted_current
echo '2750000' > /sys/class/power_supply/pc_port/current_max
echo '2750000' > /sys/class/power_supply/constant_charge_current__max
sleep 1
done

# Internet Speed Tweaks Set Config V5
echo '0' > /proc/sys/net/ipv4/ip_no_pmtu_disc;
echo '0' > /proc/sys/net/ipv4/tcp_ecn;
echo '0' > /proc/sys/net/ipv4/tcp_timestamps;
echo '1' > /proc/sys/net/ipv4/route.flush;
echo '1' > /proc/sys/net/ipv4/tcp_rfc1337;
echo '1' > /proc/sys/net/ipv4/tcp_tw_reuse;
echo '1' > /proc/sys/net/ipv4/tcp_sack;
echo '1' > /proc/sys/net/ipv4/tcp_fack;
echo '1' > /proc/sys/net/ipv4/tcp_tw_recycle;
echo '1' > /proc/sys/net/ipv4/tcp_window_scaling;
echo '10' > /proc/sys/net/ipv4/tcp_keepalive_probes;
echo '30' > /proc/sys/net/ipv4/tcp_keepalive_intvl;
echo '30' > /proc/sys/net/ipv4/tcp_fin_timeout;
echo '524288' > /proc/sys/net/core/wmem_max;
echo '524288' > /proc/sys/net/core/wmem_default;
echo '524288' > /proc/sys/net/core/rmem_max;
echo '524288' > /proc/sys/net/core/rmem_default;
echo '524288' > /proc/sys/net/core/wmem_default;
echo '4096 87380 524288' > /proc/sys/net/ipv4/tcp_rmem;
echo '4096 87380 524288' > /proc/sys/net/ipv4/tcp_wmem;
echo '4296 87380 404480' > /proc/sys/net/ipv4;
echo '524288 524288 524288' > /proc/sys/net/ipv4/tcp_mem;

# Dt2W Fixed Tweaks Set Config V5
If [[ -d "/sys/touchpanel/double_tap" ]]
then
  write "/sys/touchpanel/double_tap" 1
fi

# Google Service Reduce Drain Tweaks Set Config V5
sleep '0.001'
su -c 'pm enable com.google.android.gms'
sleep '0.001'
su -c 'pm enable com.google.android.gsf'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateActivity'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateService'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateServiceActiveReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateServiceReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gms/.update.SystemUpdateServiceSecretCodeReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateActivity'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdatePanoActivity'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateService'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateServiceReceiver'
sleep '0.001'
su -c 'pm enable com.google.android.gsf/.update.SystemUpdateServiceSecretCodeReceiver'

# game extreme by rendy
echo '7035' > /sys/class/touch/switch/set_touchscreen;
echo '8002' > /sys/class/touch/switch/set_touchscreen;
echo '11000' > /sys/class/touch/switch/set_touchscreen;
echo '13060' > /sys/class/touch/switch/set_touchscreen;
echo '14005' > /sys/class/touch/switch/set_touchscreen;

# Speedy mod by rendy
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

sleep 30

for i in $MODDIR/config/*; do
  case $i in
    *-ls|*-ls.sh);;
    *) if [ -f "$i" -a -x "$i" ]; then $i & fi;;
  esac
done

# This script will be executed in late_start service mode










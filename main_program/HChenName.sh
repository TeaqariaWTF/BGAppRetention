#Author by @焕晨HChen
NameZram() { name=($sys/backing_dev $sys/writeback_limit_enable $sys/writeback_limit $sys/reset $sys/mem_limit $sys/max_comp_streams) && echo "${name[@]}"; }
NameSwap() { echo "$dev/memory.swappiness $dev/apps/memory.swappiness $fs/memory/apps/memory.swappiness $fs/memory/memory.swappiness"; }
NameVm() { name=($proc/dirty_background_ratio $proc/dirty_ratio $proc/dirty_expire_centisecs $proc/dirty_writeback_centisecs $proc/vfs_cache_pressure $proc/oom_kill_allocating_task $proc/oom_dump_tasks $proc/compact_unevictable_allowed $proc/block_dump $proc/stat_interval $proc/overcommit_memory $proc/panic_on_oom /sys/module/process_reclaim/parameters/enable_process_reclaim /sys/kernel/mi_reclaim/enable) && echo "${name[@]}"; }
NameLow() { name=($lowmemorykiller/minfree $lowmemorykiller/vmpressure_file_min $lowmemorykiller/enable_adaptive_lmk $lowmemorykiller/oom_reaper) && echo "${name[@]}"; }
NameCam() { echo "cam_boost_enable"; }
NameQcom() {
  name=(vendor.debug.enable.lm
    ro.vendor.qti.sys.fw.bservice_enable
    ro.vendor.qti.sys.fw.bservice_limit
    ro.vendor.qti.sys.fw.bg_apps_limit
    ro.vendor.perf.enable.prekill
    vendor.prekill_MIN_ADJ_to_Kill
    vendor.prekill_MAX_ADJ_to_Kill
    vendor.debug.enable.memperfd
    ro.lmk.use_minfree_levels_dup
    ro.lmk.nstrat_low_swap
    ro.lmk.thrashing_threshold
    ro.lmk.thrashing_decay
    ro.lmk.thrashing_limit_pct_dup
    ro.lmk.nstrat_psi_partial_ms
    ro.lmk.nstrat_psi_complete_ms
    ro.lmk.nstrat_psi_scrit_complete_stall_ms
    ro.lmk.kill_heaviest_task_dup
    ro.lmk.nstrat_wmark_boost_factor
    ro.lmk.enhance_batch_kill
    ro.lmk.enable_watermark_check
    ro.lmk.enable_preferred_apps
    ro.lmk.enable_userspace_lmk
    vendor.perf.phr.enable
    ro.lmk.super_critical
    ro.lmk.direct_reclaim_pressure
    ro.lmk.reclaim_scan_threshold
    ro.vendor.qti.am.reschedule_service
    ro.vendor.qti.sys.fw.empty_app_percent
    vendor.appcompact.enable_app_compact)
  echo "${name[@]}"
}
NameProp() {
  name=(ro.config.low_ram
    persist.sys.mms.write_lmkd
    persist.sys.mms.camcpt_enable
    persist.sys.mms.compact_enable
    persist.sys.mms.bg_apps_limit
    persist.sys.mms.min_zramfree_kb
    persist.sys.mms.single_compact_enable
    persist.sys.memfreeze.enable
    persist.sys.mmms.switch
    persist.sys.spc.enabled
    persist.sys.spc.screenoff_kill_enable
    persist.sys.spc.cpulimit.enabled
    persist.sys.spc.extra_free_enable
    persist.sys.spc.kill.proc.enable
    persist.sys.spc.pressure.enable
    persist.sys.spc.bindvisible.enabled
    persist.sys.miui_sptm.enable
    persist.sys.miui_sptm.ignore_cloud_enable
    persist.sys.miui_sptm.start_mem_reclaim_app_count
    persist.sys.miui.adj_swap_free_percentage.enable
    persist.sys.miui_scout_enable
    persist.sys.scout_binder_gki
    persist.sys.scout_dumpbysocket
    persist.sys.debug.enable_scout_memory_monitor
    persist.sys.debug.enable_scout_memory_resume
    persist.sys.debug.scout_memory_disable_kgsl
    ro.sys.fw.bg_apps_limit
    ro.config.max_starting_bg
    ro.vendor.qti.sys.fw.bg_apps_limit
    ro.vendor.qti.sys.fw.bservice_limit
    ro.lmk.debug
    ro.lmk.use_minfree_levels
    ro.lmk.thrashing_limit
    ro.lmk.thrashing_limit_decay
    ro.lmk.use_psi
    ro.lmk.psi_partial_stall_ms
    ro.lmk.psi_complete_stall_ms
    ro.lmk.swap_free_low_percentage
    ro.lmk.low
    ro.lmk.medium
    ro.lmk.critical
    ro.lmk.critical_upgrade
    ro.lmk.upgrade_pressure
    ro.lmk.downgrade_pressure
    ro.lmk.kill_heaviest_task
    ro.lmk.enhance_batch_kill
    ro.lmk.swap_util_max
    ro.lmk.enable_adaptive_lmk
    persist.sys.oom_crash_on_watchdog
    persist.sys.miui.camera.boost.opt
    persist.sys.miui.camera.boost.enable
    persist.sys.lmk.camera.mem_reclaim
    persist.sys.miui.camera.inhibit_procs.enable
    persist.sys.lmkd.camera_adaptive_lmk.enable
    persist.sys.miui.camera.boost.killAdj_threshold
    persist.sys.lmk.camera_minfree_levels
    persist.sys.lmk.camera_minfree_6g_levels
    sys.lmk.minfree_levels
    persist.sys.minfree_6g
    persist.sys.minfree_8g
    persist.sys.minfree_12g
    persist.sys.minfree_def
    persist.sys.cts.testTrimMemActivityBg.wk.enable
    persist.sys.oppo.junkmonitor
    persist.sys.oplus.nandswap
    persist.sys.tasktracker.enable
    persist.sys.oplus.lmkd_super_critical_threshold_12g
    persist.sys.oplus.lmkd_super_critical_threshold_16g
    persist.sys.oplus.lmkd_super_critical_threshold_8g
    persist.sys.oplus.wmark_extra_free_kbytes_12g
    persist.sys.oplus.wmark_extra_free_kbytes_8g
    debug.vendor.qti.enable.lm
    persist.vendor.qti.memory.enable
    persist.vendor.qti.memory.fooI
    persist.vendor.sys.memplus.enable
    ro.lmk.swap_is_low_kill_enable
    ro.lmk.limit_killing_array_kb
    persist.sys.lmkd.double_watermark.enable
    persist.sys.memfreeze.enable
    persist.sys.use_boot_compact
  )
  echo "${name[@]}"
}
#persist.miui.miperf.enable
#ro.config.per_app_memcg
#ro.lmk.enable_memcg
#persist.sys.oplus.hybridswap_app_uid_memcg
#persist.sys.oplus.hybridswap_app_memcg
#ro.lmk.kill_timeout_ms
#vendor.sys.vm.killtimeout
#persist.sys.miui.camera.boost.kill701_threshold
#ro.lmk.kill_timeout_ms_dup
#3rdcam_boost_enable cam_boost_opt_enable cam_boost_forcestop_enable mms_camcpt_enable inhibit_procs_enable inhibit_3rdprocs_enable oom_update_support cam_reclaim_enable adj_swap_support trim_memory_support cam_boost_early_enable perceptible_support
# A dedicated nohz_full CPU can safely run an RT task continuously because its
# RCU callbacks and housekeeping work are offloaded to CPU0.  Keep per-CPU
# timers on their target CPU as well, otherwise timer migration generates a
# reschedule IPI on CPU1 for a significant fraction of cyclictest wakeups.
do_install:append:myd-ld25x-rt() {
    printf '\n# Dedicated real-time CPU policy.\n' >> ${D}${sysconfdir}/sysctl.conf
    printf 'kernel.sched_rt_runtime_us=-1\n' >> ${D}${sysconfdir}/sysctl.conf
    printf 'kernel.timer_migration=0\n' >> ${D}${sysconfdir}/sysctl.conf
    printf 'vm.stat_interval=120\n' >> ${D}${sysconfdir}/sysctl.conf
}

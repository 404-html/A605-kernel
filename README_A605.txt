1/ git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9
2/ git checkout -b old 22f053ccdfd0d73aafcceff3419a5fe3c01e878b (The newer commit won't work because of deprecation)
3/ edit the ./build_kernel.sh
4/ build

===============
HOW TO GET KERNEL BOOT IN PERMISSIVE SELINUX
1/ open security/selinux/Makefile -> edit -DCONFIG_ALWAYS_ENFORCE to false
2/ open security/selinux/hooks.c -> edit the line
	selinux_enforcing = enforcing ? 1 : 0;
	-> selinux_enforcing = 0; // enforcing ? 1 : 0;
3/ open security/selinux/selinuxfs.c -> find the line
	if (new_value != selinux_enforcing) {
	add the line "new_value = 0;" blow that line
===============

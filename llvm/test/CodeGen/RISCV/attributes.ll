;; Generate ELF attributes from llc.

; RUN: llc -mtriple=riscv32 %s -o - | FileCheck %s
; RUN: llc -mtriple=riscv32 -mattr=+m %s -o - | FileCheck --check-prefixes=CHECK,RV32M %s
; RUN: llc -mtriple=riscv32 -mattr=+zmmul %s -o - | FileCheck --check-prefixes=CHECK,RV32ZMMUL %s
; RUN: llc -mtriple=riscv32 -mattr=+m,+zmmul %s -o - | FileCheck --check-prefixes=CHECK,RV32MZMMUL %s
; RUN: llc -mtriple=riscv32 -mattr=+a %s -o - | FileCheck --check-prefixes=CHECK,RV32A %s
; RUN: llc -mtriple=riscv32 -mattr=+f %s -o - | FileCheck --check-prefixes=CHECK,RV32F %s
; RUN: llc -mtriple=riscv32 -mattr=+d %s -o - | FileCheck --check-prefixes=CHECK,RV32D %s
; RUN: llc -mtriple=riscv32 -mattr=+c %s -o - | FileCheck --check-prefixes=CHECK,RV32C %s
; RUN: llc -mtriple=riscv32 -mattr=+zihintpause %s -o - | FileCheck --check-prefixes=CHECK,RV32ZIHINTPAUSE %s
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zihintntl %s -o - | FileCheck --check-prefixes=CHECK,RV32ZIHINTNTL %s
; RUN: llc -mtriple=riscv32 -mattr=+zfhmin %s -o - | FileCheck --check-prefixes=CHECK,RV32ZFHMIN %s
; RUN: llc -mtriple=riscv32 -mattr=+zfh %s -o - | FileCheck --check-prefixes=CHECK,RV32ZFH %s
; RUN: llc -mtriple=riscv32 -mattr=+zba %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBA %s
; RUN: llc -mtriple=riscv32 -mattr=+zbb %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBB %s
; RUN: llc -mtriple=riscv32 -mattr=+zbc %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBC %s
; RUN: llc -mtriple=riscv32 -mattr=+zbs %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBS %s
; RUN: llc -mtriple=riscv32 -mattr=+v %s -o - | FileCheck --check-prefixes=CHECK,RV32V %s
; RUN: llc -mtriple=riscv32 -mattr=+h %s -o - | FileCheck --check-prefixes=CHECK,RV32H %s
; RUN: llc -mtriple=riscv32 -mattr=+zbb,+zfh,+v,+f %s -o - | FileCheck --check-prefixes=CHECK,RV32COMBINED %s
; RUN: llc -mtriple=riscv32 -mattr=+zbkb %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBKB %s
; RUN: llc -mtriple=riscv32 -mattr=+zbkc %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBKC %s
; RUN: llc -mtriple=riscv32 -mattr=+zbkx %s -o - | FileCheck --check-prefixes=CHECK,RV32ZBKX %s
; RUN: llc -mtriple=riscv32 -mattr=+zknd %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKND %s
; RUN: llc -mtriple=riscv32 -mattr=+zkne %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKNE %s
; RUN: llc -mtriple=riscv32 -mattr=+zknh %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKNH %s
; RUN: llc -mtriple=riscv32 -mattr=+zksed %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKSED %s
; RUN: llc -mtriple=riscv32 -mattr=+zksh %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKSH %s
; RUN: llc -mtriple=riscv32 -mattr=+zkr %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKR %s
; RUN: llc -mtriple=riscv32 -mattr=+zkn %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKN %s
; RUN: llc -mtriple=riscv32 -mattr=+zks %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKS %s
; RUN: llc -mtriple=riscv32 -mattr=+zkt %s -o - | FileCheck --check-prefixes=CHECK,RV32ZKT %s
; RUN: llc -mtriple=riscv32 -mattr=+zk %s -o - | FileCheck --check-prefixes=CHECK,RV32ZK %s
; RUN: llc -mtriple=riscv32 -mattr=+zkn,+zkr,+zkt %s -o - | FileCheck --check-prefixes=CHECK,RV32COMBINEINTOZK %s
; RUN: llc -mtriple=riscv32 -mattr=+zbkb,+zbkc,+zbkx,+zkne,+zknd,+zknh %s -o - | FileCheck --check-prefixes=CHECK,RV32COMBINEINTOZKN %s
; RUN: llc -mtriple=riscv32 -mattr=+zbkb,+zbkc,+zbkx,+zksed,+zksh %s -o - | FileCheck --check-prefixes=CHECK,RV32COMBINEINTOZKS %s
; RUN: llc -mtriple=riscv32 -mattr=+zicbom %s -o - | FileCheck --check-prefixes=CHECK,RV32ZICBOM %s
; RUN: llc -mtriple=riscv32 -mattr=+zicboz %s -o - | FileCheck --check-prefixes=CHECK,RV32ZICBOZ %s
; RUN: llc -mtriple=riscv32 -mattr=+zicbop %s -o - | FileCheck --check-prefixes=CHECK,RV32ZICBOP %s
; RUN: llc -mtriple=riscv32 -mattr=+svnapot %s -o - | FileCheck --check-prefixes=CHECK,RV32SVNAPOT %s
; RUN: llc -mtriple=riscv32 -mattr=+svpbmt %s -o - | FileCheck --check-prefixes=CHECK,RV32SVPBMT %s
; RUN: llc -mtriple=riscv32 -mattr=+svinval %s -o - | FileCheck --check-prefixes=CHECK,RV32SVINVAL %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadcmo %s -o - | FileCheck --check-prefix=RV32XTHEADCMO %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadcondmov %s -o - | FileCheck --check-prefix=RV32XTHEADCONDMOV %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadfmemidx %s -o - | FileCheck --check-prefix=RV32XTHEADFMEMIDX %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadmac %s -o - | FileCheck --check-prefixes=CHECK,RV32XTHEADMAC %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadmemidx %s -o - | FileCheck --check-prefix=RV32XTHEADMEMIDX %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadmempair %s -o - | FileCheck --check-prefix=RV32XTHEADMEMPAIR %s
; RUN: llc -mtriple=riscv32 -mattr=+xtheadsync %s -o - | FileCheck --check-prefix=RV32XTHEADSYNC %s
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zca %s -o - | FileCheck --check-prefixes=CHECK,RV32ZCA %s
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zcb %s -o - | FileCheck --check-prefixes=CHECK,RV32ZCB %s
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zcd %s -o - | FileCheck --check-prefixes=CHECK,RV32ZCD %s
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zcf %s -o - | FileCheck --check-prefixes=CHECK,RV32ZCF %s
; RUN: llc -mtriple=riscv32 -mattr=+zicsr %s -o - | FileCheck --check-prefixes=CHECK,RV32ZICSR %s
; RUN: llc -mtriple=riscv32 -mattr=+zifencei %s -o - | FileCheck --check-prefixes=CHECK,RV32ZIFENCEI %s
; RUN: llc -mtriple=riscv32 -mattr=+experimental-zfa %s -o - | FileCheck --check-prefixes=CHECK,RV32ZFA %s

; RUN: llc -mtriple=riscv64 %s -o - | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+m %s -o - | FileCheck --check-prefixes=CHECK,RV64M %s
; RUN: llc -mtriple=riscv64 -mattr=+zmmul %s -o - | FileCheck --check-prefixes=CHECK,RV64ZMMUL %s
; RUN: llc -mtriple=riscv64 -mattr=+m,+zmmul %s -o - | FileCheck --check-prefixes=CHECK,RV64MZMMUL %s
; RUN: llc -mtriple=riscv64 -mattr=+a %s -o - | FileCheck --check-prefixes=CHECK,RV64A %s
; RUN: llc -mtriple=riscv64 -mattr=+f %s -o - | FileCheck --check-prefixes=CHECK,RV64F %s
; RUN: llc -mtriple=riscv64 -mattr=+d %s -o - | FileCheck --check-prefixes=CHECK,RV64D %s
; RUN: llc -mtriple=riscv64 -mattr=+c %s -o - | FileCheck --check-prefixes=CHECK,RV64C %s
; RUN: llc -mtriple=riscv64 -mattr=+zihintpause %s -o - | FileCheck --check-prefixes=CHECK,RV64ZIHINTPAUSE %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-zihintntl %s -o - | FileCheck --check-prefixes=CHECK,RV64ZIHINTNTL %s
; RUN: llc -mtriple=riscv64 -mattr=+zfhmin %s -o - | FileCheck --check-prefixes=CHECK,RV64ZFHMIN %s
; RUN: llc -mtriple=riscv64 -mattr=+zfh %s -o - | FileCheck --check-prefixes=CHECK,RV64ZFH %s
; RUN: llc -mtriple=riscv64 -mattr=+zba %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBA %s
; RUN: llc -mtriple=riscv64 -mattr=+zbb %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBB %s
; RUN: llc -mtriple=riscv64 -mattr=+zbc %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBC %s
; RUN: llc -mtriple=riscv64 -mattr=+zbs %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBS %s
; RUN: llc -mtriple=riscv64 -mattr=+v %s -o - | FileCheck --check-prefixes=CHECK,RV64V %s
; RUN: llc -mtriple=riscv64 -mattr=+h %s -o - | FileCheck --check-prefixes=CHECK,RV64H %s
; RUN: llc -mtriple=riscv64 -mattr=+zbb,+zfh,+v,+f %s -o - | FileCheck --check-prefixes=CHECK,RV64COMBINED %s
; RUN: llc -mtriple=riscv64 -mattr=+zbkb %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBKB %s
; RUN: llc -mtriple=riscv64 -mattr=+zbkc %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBKC %s
; RUN: llc -mtriple=riscv64 -mattr=+zbkx %s -o - | FileCheck --check-prefixes=CHECK,RV64ZBKX %s
; RUN: llc -mtriple=riscv64 -mattr=+zknd %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKND %s
; RUN: llc -mtriple=riscv64 -mattr=+zkne %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKNE %s
; RUN: llc -mtriple=riscv64 -mattr=+zknh %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKNH %s
; RUN: llc -mtriple=riscv64 -mattr=+zksed %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKSED %s
; RUN: llc -mtriple=riscv64 -mattr=+zksh %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKSH %s
; RUN: llc -mtriple=riscv64 -mattr=+zkr %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKR %s
; RUN: llc -mtriple=riscv64 -mattr=+zkn %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKN %s
; RUN: llc -mtriple=riscv64 -mattr=+zks %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKS %s
; RUN: llc -mtriple=riscv64 -mattr=+zkt %s -o - | FileCheck --check-prefixes=CHECK,RV64ZKT %s
; RUN: llc -mtriple=riscv64 -mattr=+zk %s -o - | FileCheck --check-prefixes=CHECK,RV64ZK %s
; RUN: llc -mtriple=riscv64 -mattr=+zkn,+zkr,+zkt %s -o - | FileCheck --check-prefixes=CHECK,RV64COMBINEINTOZK %s
; RUN: llc -mtriple=riscv64 -mattr=+zbkb,+zbkc,+zbkx,+zkne,+zknd,+zknh %s -o - | FileCheck --check-prefixes=CHECK,RV64COMBINEINTOZKN %s
; RUN: llc -mtriple=riscv64 -mattr=+zbkb,+zbkc,+zbkx,+zksed,+zksh %s -o - | FileCheck --check-prefixes=CHECK,RV64COMBINEINTOZKS %s
; RUN: llc -mtriple=riscv64 -mattr=+zicbom %s -o - | FileCheck --check-prefixes=CHECK,RV64ZICBOM %s
; RUN: llc -mtriple=riscv64 -mattr=+zicboz %s -o - | FileCheck --check-prefixes=CHECK,RV64ZICBOZ %s
; RUN: llc -mtriple=riscv64 -mattr=+zicbop %s -o - | FileCheck --check-prefixes=CHECK,RV64ZICBOP %s
; RUN: llc -mtriple=riscv64 -mattr=+svnapot %s -o - | FileCheck --check-prefixes=CHECK,RV64SVNAPOT %s
; RUN: llc -mtriple=riscv64 -mattr=+svpbmt %s -o - | FileCheck --check-prefixes=CHECK,RV64SVPBMT %s
; RUN: llc -mtriple=riscv64 -mattr=+svinval %s -o - | FileCheck --check-prefixes=CHECK,RV64SVINVAL %s
; RUN: llc -mtriple=riscv64 -mattr=+xventanacondops %s -o - | FileCheck --check-prefixes=CHECK,RV64XVENTANACONDOPS %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadba %s -o - | FileCheck --check-prefixes=CHECK,RV64XTHEADBA %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadbb %s -o - | FileCheck --check-prefixes=CHECK,RV64XTHEADBB %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadbs %s -o - | FileCheck --check-prefixes=CHECK,RV64XTHEADBS %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadcmo %s -o - | FileCheck --check-prefix=RV64XTHEADCMO %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadcondmov %s -o - | FileCheck --check-prefix=RV64XTHEADCONDMOV %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadfmemidx %s -o - | FileCheck --check-prefix=RV64XTHEADFMEMIDX %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadmac %s -o - | FileCheck --check-prefixes=CHECK,RV64XTHEADMAC %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadmemidx %s -o - | FileCheck --check-prefix=RV64XTHEADMEMIDX %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadmempair %s -o - | FileCheck --check-prefix=RV64XTHEADMEMPAIR %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadsync %s -o - | FileCheck --check-prefix=RV64XTHEADSYNC %s
; RUN: llc -mtriple=riscv64 -mattr=+xtheadvdot %s -o - | FileCheck --check-prefixes=CHECK,RV64XTHEADVDOT %s
; RUN: llc -mtriple=riscv64 -mattr=+zawrs %s -o - | FileCheck --check-prefixes=CHECK,RV64ZAWRS %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-ztso %s -o - | FileCheck --check-prefixes=CHECK,RV64ZTSO %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-zca %s -o - | FileCheck --check-prefixes=CHECK,RV64ZCA %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-zcb %s -o - | FileCheck --check-prefixes=CHECK,RV64ZCB %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-zcd %s -o - | FileCheck --check-prefixes=CHECK,RV64ZCD %s
; RUN: llc -mtriple=riscv64 -mattr=+zicsr %s -o - | FileCheck --check-prefixes=CHECK,RV64ZICSR %s
; RUN: llc -mtriple=riscv64 -mattr=+zifencei %s -o - | FileCheck --check-prefixes=CHECK,RV64ZIFENCEI %s
; RUN: llc -mtriple=riscv64 -mattr=+experimental-zfa %s -o - | FileCheck --check-prefixes=CHECK,RV64ZFA %s

; CHECK: .attribute 4, 16

; RV32M: .attribute 5, "rv32i2p0_m2p0"
; RV32ZMMUL: .attribute 5, "rv32i2p0_zmmul1p0"
; RV32MZMMUL: .attribute 5, "rv32i2p0_m2p0_zmmul1p0"
; RV32A: .attribute 5, "rv32i2p0_a2p0"
; RV32F: .attribute 5, "rv32i2p0_f2p0"
; RV32D: .attribute 5, "rv32i2p0_f2p0_d2p0"
; RV32C: .attribute 5, "rv32i2p0_c2p0"
; RV32ZIHINTPAUSE: .attribute 5, "rv32i2p0_zihintpause2p0"
; RV32ZIHINTNTL: .attribute 5, "rv32i2p0_zihintntl0p2"
; RV32ZFHMIN: .attribute 5, "rv32i2p0_f2p0_zfhmin1p0"
; RV32ZFH: .attribute 5, "rv32i2p0_f2p0_zfh1p0"
; RV32ZBA: .attribute 5, "rv32i2p0_zba1p0"
; RV32ZBB: .attribute 5, "rv32i2p0_zbb1p0"
; RV32ZBC: .attribute 5, "rv32i2p0_zbc1p0"
; RV32ZBS: .attribute 5, "rv32i2p0_zbs1p0"
; RV32V: .attribute 5, "rv32i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
; RV32H: .attribute 5, "rv32i2p0_h1p0"
; RV32COMBINED: .attribute 5, "rv32i2p0_f2p0_d2p0_v1p0_zfh1p0_zbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
; RV32ZBKB: .attribute 5, "rv32i2p0_zbkb1p0"
; RV32ZBKC: .attribute 5, "rv32i2p0_zbkc1p0"
; RV32ZBKX: .attribute 5, "rv32i2p0_zbkx1p0"
; RV32ZKND: .attribute 5, "rv32i2p0_zknd1p0"
; RV32ZKNE: .attribute 5, "rv32i2p0_zkne1p0"
; RV32ZKNH: .attribute 5, "rv32i2p0_zknh1p0"
; RV32ZKSED: .attribute 5, "rv32i2p0_zksed1p0"
; RV32ZKSH: .attribute 5, "rv32i2p0_zksh1p0"
; RV32ZKR: .attribute 5, "rv32i2p0_zkr1p0"
; RV32ZKN: .attribute 5, "rv32i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0"
; RV32ZKS: .attribute 5, "rv32i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zks1p0_zksed1p0_zksh1p0"
; RV32ZKT: .attribute 5, "rv32i2p0_zkt1p0"
; RV32ZK: .attribute 5, "rv32i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zkt1p0"
; RV32COMBINEINTOZK: .attribute 5, "rv32i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zkt1p0"
; RV32COMBINEINTOZKN: .attribute 5, "rv32i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0"
; RV32COMBINEINTOZKS: .attribute 5, "rv32i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zks1p0_zksed1p0_zksh1p0"
; RV32ZICBOM: .attribute 5, "rv32i2p0_zicbom1p0"
; RV32ZICBOZ: .attribute 5, "rv32i2p0_zicboz1p0"
; RV32ZICBOP: .attribute 5, "rv32i2p0_zicbop1p0"
; RV32SVNAPOT: .attribute 5, "rv32i2p0_svnapot1p0"
; RV32SVPBMT: .attribute 5, "rv32i2p0_svpbmt1p0"
; RV32SVINVAL: .attribute 5, "rv32i2p0_svinval1p0"
; RV32XTHEADCMO: .attribute 5, "rv32i2p0_xtheadcmo1p0"
; RV32XTHEADCONDMOV: .attribute 5, "rv32i2p0_xtheadcondmov1p0"
; RV32XTHEADFMEMIDX: .attribute 5, "rv32i2p0_f2p0_xtheadfmemidx1p0"
; RV32XTHEADMAC: .attribute 5, "rv32i2p0_xtheadmac1p0"
; RV32XTHEADMEMIDX: .attribute 5, "rv32i2p0_xtheadmemidx1p0"
; RV32XTHEADMEMPAIR: .attribute 5, "rv32i2p0_xtheadmempair1p0"
; RV32XTHEADSYNC: .attribute 5, "rv32i2p0_xtheadsync1p0"
; RV32ZCA: .attribute 5, "rv32i2p0_zca1p0"
; RV32ZCB: .attribute 5, "rv32i2p0_zca1p0_zcb1p0"
; RV32ZCD: .attribute 5, "rv32i2p0_zcd1p0"
; RV32ZCF: .attribute 5, "rv32i2p0_zcf1p0"
; RV32ZICSR: .attribute 5, "rv32i2p0_zicsr2p0"
; RV32ZIFENCEI: .attribute 5, "rv32i2p0_zifencei2p0"
; RV32ZFA: .attribute 5, "rv32i2p0_f2p0_zfa0p1"

; RV64M: .attribute 5, "rv64i2p0_m2p0"
; RV64ZMMUL: .attribute 5, "rv64i2p0_zmmul1p0"
; RV64MZMMUL: .attribute 5, "rv64i2p0_m2p0_zmmul1p0"
; RV64A: .attribute 5, "rv64i2p0_a2p0"
; RV64F: .attribute 5, "rv64i2p0_f2p0"
; RV64D: .attribute 5, "rv64i2p0_f2p0_d2p0"
; RV64C: .attribute 5, "rv64i2p0_c2p0"
; RV64ZIHINTPAUSE: .attribute 5, "rv64i2p0_zihintpause2p0"
; RV64ZIHINTNTL: .attribute 5, "rv64i2p0_zihintntl0p2"
; RV64ZFHMIN: .attribute 5, "rv64i2p0_f2p0_zfhmin1p0"
; RV64ZFH: .attribute 5, "rv64i2p0_f2p0_zfh1p0"
; RV64ZBA: .attribute 5, "rv64i2p0_zba1p0"
; RV64ZBB: .attribute 5, "rv64i2p0_zbb1p0"
; RV64ZBC: .attribute 5, "rv64i2p0_zbc1p0"
; RV64ZBS: .attribute 5, "rv64i2p0_zbs1p0"
; RV64V: .attribute 5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
; RV64H: .attribute 5, "rv64i2p0_h1p0"
; RV64COMBINED: .attribute 5, "rv64i2p0_f2p0_d2p0_v1p0_zfh1p0_zbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
; RV64ZBKB: .attribute 5, "rv64i2p0_zbkb1p0"
; RV64ZBKC: .attribute 5, "rv64i2p0_zbkc1p0"
; RV64ZBKX: .attribute 5, "rv64i2p0_zbkx1p0"
; RV64ZKND: .attribute 5, "rv64i2p0_zknd1p0"
; RV64ZKNE: .attribute 5, "rv64i2p0_zkne1p0"
; RV64ZKNH: .attribute 5, "rv64i2p0_zknh1p0"
; RV64ZKSED: .attribute 5, "rv64i2p0_zksed1p0"
; RV64ZKSH: .attribute 5, "rv64i2p0_zksh1p0"
; RV64ZKR: .attribute 5, "rv64i2p0_zkr1p0"
; RV64ZKN: .attribute 5, "rv64i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0"
; RV64ZKS: .attribute 5, "rv64i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zks1p0_zksed1p0_zksh1p0"
; RV64ZKT: .attribute 5, "rv64i2p0_zkt1p0"
; RV64ZK: .attribute 5, "rv64i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zkt1p0"
; RV64COMBINEINTOZK: .attribute 5, "rv64i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zk1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0_zkr1p0_zkt1p0"
; RV64COMBINEINTOZKN: .attribute 5, "rv64i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zkn1p0_zknd1p0_zkne1p0_zknh1p0"
; RV64COMBINEINTOZKS: .attribute 5, "rv64i2p0_zbkb1p0_zbkc1p0_zbkx1p0_zks1p0_zksed1p0_zksh1p0"
; RV64ZICBOM: .attribute 5, "rv64i2p0_zicbom1p0"
; RV64ZICBOZ: .attribute 5, "rv64i2p0_zicboz1p0"
; RV64ZAWRS: .attribute 5, "rv64i2p0_zawrs1p0"
; RV64ZICBOP: .attribute 5, "rv64i2p0_zicbop1p0"
; RV64SVNAPOT: .attribute 5, "rv64i2p0_svnapot1p0"
; RV64SVPBMT: .attribute 5, "rv64i2p0_svpbmt1p0"
; RV64SVINVAL: .attribute 5, "rv64i2p0_svinval1p0"
; RV64XVENTANACONDOPS: .attribute 5, "rv64i2p0_xventanacondops1p0"
; RV64XTHEADBA: .attribute 5, "rv64i2p0_xtheadba1p0"
; RV64XTHEADBB: .attribute 5, "rv64i2p0_xtheadbb1p0"
; RV64XTHEADBS: .attribute 5, "rv64i2p0_xtheadbs1p0"
; RV64XTHEADCMO: .attribute 5, "rv64i2p0_xtheadcmo1p0"
; RV64XTHEADCONDMOV: .attribute 5, "rv64i2p0_xtheadcondmov1p0"
; RV64XTHEADFMEMIDX: .attribute 5, "rv64i2p0_f2p0_xtheadfmemidx1p0"
; RV64XTHEADMAC: .attribute 5, "rv64i2p0_xtheadmac1p0"
; RV64XTHEADMEMIDX: .attribute 5, "rv64i2p0_xtheadmemidx1p0"
; RV64XTHEADMEMPAIR: .attribute 5, "rv64i2p0_xtheadmempair1p0"
; RV64XTHEADSYNC: .attribute 5, "rv64i2p0_xtheadsync1p0"
; RV64XTHEADVDOT: .attribute 5, "rv64i2p0_f2p0_d2p0_v1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0_xtheadvdot1p0"
; RV64ZTSO: .attribute 5, "rv64i2p0_ztso0p1"
; RV64ZCA: .attribute 5, "rv64i2p0_zca1p0"
; RV64ZCB: .attribute 5, "rv64i2p0_zca1p0_zcb1p0"
; RV64ZCD: .attribute 5, "rv64i2p0_zcd1p0"
; RV64ZICSR: .attribute 5, "rv64i2p0_zicsr2p0"
; RV64ZIFENCEI: .attribute 5, "rv64i2p0_zifencei2p0"
; RV64ZFA: .attribute 5, "rv64i2p0_f2p0_zfa0p1"

define i32 @addi(i32 %a) {
  %1 = add i32 %a, 1
  ret i32 %1
}
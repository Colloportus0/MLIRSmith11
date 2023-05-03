; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs < %s -mtriple=powerpc64-unknown-linux-gnu -mcpu=pwr7 -mattr=-vsx | FileCheck %s
; RUN: llc -verify-machineinstrs < %s -mtriple=powerpc64-unknown-linux-gnu -mcpu=pwr7 -mattr=+vsx | FileCheck -check-prefix=CHECK-VSX %s
target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128-n32"

define void @foo1(ptr %p, ptr %r) nounwind {
; CHECK-LABEL: foo1:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    lhz 3, 0(3)
; CHECK-NEXT:    sth 3, 0(4)
; CHECK-NEXT:    blr
;
; CHECK-VSX-LABEL: foo1:
; CHECK-VSX:       # %bb.0: # %entry
; CHECK-VSX-NEXT:    lhz 3, 0(3)
; CHECK-VSX-NEXT:    sth 3, 0(4)
; CHECK-VSX-NEXT:    blr
entry:
  %v = load i16, ptr %p, align 1
  store i16 %v, ptr %r, align 1
  ret void


}

define void @foo2(ptr %p, ptr %r) nounwind {
; CHECK-LABEL: foo2:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    lwz 3, 0(3)
; CHECK-NEXT:    stw 3, 0(4)
; CHECK-NEXT:    blr
;
; CHECK-VSX-LABEL: foo2:
; CHECK-VSX:       # %bb.0: # %entry
; CHECK-VSX-NEXT:    lwz 3, 0(3)
; CHECK-VSX-NEXT:    stw 3, 0(4)
; CHECK-VSX-NEXT:    blr
entry:
  %v = load i32, ptr %p, align 1
  store i32 %v, ptr %r, align 1
  ret void


}

define void @foo3(ptr %p, ptr %r) nounwind {
; CHECK-LABEL: foo3:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    ld 3, 0(3)
; CHECK-NEXT:    std 3, 0(4)
; CHECK-NEXT:    blr
;
; CHECK-VSX-LABEL: foo3:
; CHECK-VSX:       # %bb.0: # %entry
; CHECK-VSX-NEXT:    ld 3, 0(3)
; CHECK-VSX-NEXT:    std 3, 0(4)
; CHECK-VSX-NEXT:    blr
entry:
  %v = load i64, ptr %p, align 1
  store i64 %v, ptr %r, align 1
  ret void


}

define void @foo4(ptr %p, ptr %r) nounwind {
; CHECK-LABEL: foo4:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    lwz 3, 0(3)
; CHECK-NEXT:    stw 3, 0(4)
; CHECK-NEXT:    blr
;
; CHECK-VSX-LABEL: foo4:
; CHECK-VSX:       # %bb.0: # %entry
; CHECK-VSX-NEXT:    lwz 3, 0(3)
; CHECK-VSX-NEXT:    stw 3, 0(4)
; CHECK-VSX-NEXT:    blr
entry:
  %v = load float, ptr %p, align 1
  store float %v, ptr %r, align 1
  ret void


}

define void @foo5(ptr %p, ptr %r) nounwind {
; CHECK-LABEL: foo5:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    ld 3, 0(3)
; CHECK-NEXT:    std 3, 0(4)
; CHECK-NEXT:    blr
;
; CHECK-VSX-LABEL: foo5:
; CHECK-VSX:       # %bb.0: # %entry
; CHECK-VSX-NEXT:    ld 3, 0(3)
; CHECK-VSX-NEXT:    std 3, 0(4)
; CHECK-VSX-NEXT:    blr
entry:
  %v = load double, ptr %p, align 1
  store double %v, ptr %r, align 1
  ret void


}

define void @foo6(ptr %p, ptr %r) nounwind {
; These loads and stores are legalized into aligned loads and stores
; using aligned stack slots.
; CHECK-LABEL: foo6:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    li 5, 15
; CHECK-NEXT:    lvsl 3, 0, 3
; CHECK-NEXT:    lvx 2, 3, 5
; CHECK-NEXT:    lvx 4, 0, 3
; CHECK-NEXT:    addi 3, 1, -16
; CHECK-NEXT:    vperm 2, 4, 2, 3
; CHECK-NEXT:    stvx 2, 0, 3
; CHECK-NEXT:    ld 3, -8(1)
; CHECK-NEXT:    std 3, 8(4)
; CHECK-NEXT:    ld 3, -16(1)
; CHECK-NEXT:    std 3, 0(4)
; CHECK-NEXT:    blr
;
; CHECK-VSX-LABEL: foo6:
; CHECK-VSX:       # %bb.0: # %entry
; CHECK-VSX-NEXT:    li 5, 15
; CHECK-VSX-NEXT:    lvsl 3, 0, 3
; CHECK-VSX-NEXT:    lvx 2, 3, 5
; CHECK-VSX-NEXT:    lvx 4, 0, 3
; CHECK-VSX-NEXT:    vperm 2, 4, 2, 3
; CHECK-VSX-NEXT:    stxvw4x 34, 0, 4
; CHECK-VSX-NEXT:    blr
; For VSX on P7, unaligned loads and stores are preferable to aligned
; stack slots, but lvsl/vperm is better still.  (On P8 lxvw4x is preferable.)
; Using unaligned stxvw4x is preferable on both machines.
entry:
  %v = load <4 x float>, ptr %p, align 1
  store <4 x float> %v, ptr %r, align 1
  ret void
}

//===-- Floating point environment manipulation functions -------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIBC_SRC_SUPPORT_FPUTIL_FENVIMPL_H
#define LLVM_LIBC_SRC_SUPPORT_FPUTIL_FENVIMPL_H

#include "src/__support/macros/attributes.h" // LIBC_INLINE
#include "src/__support/macros/properties/architectures.h"

#include <errno.h>
#include <fenv.h>
#include <math.h>

#if defined(LIBC_TARGET_ARCH_IS_AARCH64)
#if defined(__APPLE__)
#include "aarch64/fenv_darwin_impl.h"
#else
#include "aarch64/FEnvImpl.h"
#endif
#elif defined(LIBC_TARGET_ARCH_IS_X86)
#include "x86_64/FEnvImpl.h"
#else

namespace __llvm_libc::fputil {

// All dummy functions silently succeed.

LIBC_INLINE int clear_except(int) { return 0; }

LIBC_INLINE int test_except(int) { return 0; }

LIBC_INLINE int set_except(int) { return 0; }

LIBC_INLINE int raise_except(int) { return 0; }

LIBC_INLINE int get_round() { return FE_TONEAREST; }

LIBC_INLINE int set_round(int) { return 0; }

LIBC_INLINE int get_env(fenv_t *) { return 0; }

LIBC_INLINE int set_env(const fenv_t *) { return 0; }

} // namespace __llvm_libc::fputil
#endif

namespace __llvm_libc::fputil {

LIBC_INLINE int set_except_if_required(int excepts) {
  if (math_errhandling & MATH_ERREXCEPT)
    return set_except(excepts);
  return 0;
}

LIBC_INLINE int raise_except_if_required(int excepts) {
  if (math_errhandling & MATH_ERREXCEPT)
    return raise_except(excepts);
  return 0;
}

LIBC_INLINE void set_errno_if_required(int err) {
  if (math_errhandling & MATH_ERRNO)
    errno = err;
}

} // namespace __llvm_libc::fputil

#endif // LLVM_LIBC_SRC_SUPPORT_FPUTIL_FENVIMPL_H
; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=loop-unroll -unroll-runtime=true -unroll-runtime-epilog=true -unroll-runtime-other-exit-predictable=true -verify-loop-lcssa -verify-dom-info -verify-loop-info -S | FileCheck %s --check-prefix=ENABLED
; RUN: opt < %s -passes=loop-unroll -unroll-runtime=true -unroll-runtime-epilog=true -unroll-runtime-other-exit-predictable=false -verify-loop-lcssa -verify-dom-info -verify-loop-info -S | FileCheck %s --check-prefix=DISABLED

define i32 @test(ptr nocapture %a, i64 %n) {
; ENABLED-LABEL: @test(
; ENABLED-NEXT:  entry:
; ENABLED-NEXT:    [[TMP0:%.*]] = freeze i64 [[N:%.*]]
; ENABLED-NEXT:    [[TMP1:%.*]] = add i64 [[TMP0]], -1
; ENABLED-NEXT:    [[XTRAITER:%.*]] = and i64 [[TMP0]], 7
; ENABLED-NEXT:    [[TMP2:%.*]] = icmp ult i64 [[TMP1]], 7
; ENABLED-NEXT:    br i1 [[TMP2]], label [[FOR_END_UNR_LCSSA:%.*]], label [[ENTRY_NEW:%.*]]
; ENABLED:       entry.new:
; ENABLED-NEXT:    [[UNROLL_ITER:%.*]] = sub i64 [[TMP0]], [[XTRAITER]]
; ENABLED-NEXT:    br label [[HEADER:%.*]]
; ENABLED:       header:
; ENABLED-NEXT:    [[INDVARS_IV:%.*]] = phi i64 [ 0, [[ENTRY_NEW]] ], [ [[INDVARS_IV_NEXT_7:%.*]], [[FOR_BODY_7:%.*]] ]
; ENABLED-NEXT:    [[SUM_02:%.*]] = phi i32 [ 0, [[ENTRY_NEW]] ], [ [[ADD_7:%.*]], [[FOR_BODY_7]] ]
; ENABLED-NEXT:    [[NITER:%.*]] = phi i64 [ 0, [[ENTRY_NEW]] ], [ [[NITER_NEXT_7:%.*]], [[FOR_BODY_7]] ]
; ENABLED-NEXT:    [[CMP:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP]], label [[FOR_EXIT2_LOOPEXIT:%.*]], label [[FOR_BODY:%.*]]
; ENABLED:       for.body:
; ENABLED-NEXT:    [[ARRAYIDX:%.*]] = getelementptr inbounds i32, ptr [[A:%.*]], i64 [[INDVARS_IV]]
; ENABLED-NEXT:    [[TMP3:%.*]] = load i32, ptr [[ARRAYIDX]], align 4
; ENABLED-NEXT:    [[ADD:%.*]] = add nsw i32 [[TMP3]], [[SUM_02]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT:%.*]] = add nuw nsw i64 [[INDVARS_IV]], 1
; ENABLED-NEXT:    [[NITER_NEXT:%.*]] = add nuw nsw i64 [[NITER]], 1
; ENABLED-NEXT:    [[CMP_1:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_1]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_1:%.*]]
; ENABLED:       for.body.1:
; ENABLED-NEXT:    [[ARRAYIDX_1:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT]]
; ENABLED-NEXT:    [[TMP4:%.*]] = load i32, ptr [[ARRAYIDX_1]], align 4
; ENABLED-NEXT:    [[ADD_1:%.*]] = add nsw i32 [[TMP4]], [[ADD]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_1:%.*]] = add nuw nsw i64 [[INDVARS_IV_NEXT]], 1
; ENABLED-NEXT:    [[NITER_NEXT_1:%.*]] = add nuw nsw i64 [[NITER_NEXT]], 1
; ENABLED-NEXT:    [[CMP_2:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_2]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_2:%.*]]
; ENABLED:       for.body.2:
; ENABLED-NEXT:    [[ARRAYIDX_2:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT_1]]
; ENABLED-NEXT:    [[TMP5:%.*]] = load i32, ptr [[ARRAYIDX_2]], align 4
; ENABLED-NEXT:    [[ADD_2:%.*]] = add nsw i32 [[TMP5]], [[ADD_1]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_2:%.*]] = add nuw nsw i64 [[INDVARS_IV_NEXT_1]], 1
; ENABLED-NEXT:    [[NITER_NEXT_2:%.*]] = add nuw nsw i64 [[NITER_NEXT_1]], 1
; ENABLED-NEXT:    [[CMP_3:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_3]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_3:%.*]]
; ENABLED:       for.body.3:
; ENABLED-NEXT:    [[ARRAYIDX_3:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT_2]]
; ENABLED-NEXT:    [[TMP6:%.*]] = load i32, ptr [[ARRAYIDX_3]], align 4
; ENABLED-NEXT:    [[ADD_3:%.*]] = add nsw i32 [[TMP6]], [[ADD_2]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_3:%.*]] = add nuw nsw i64 [[INDVARS_IV_NEXT_2]], 1
; ENABLED-NEXT:    [[NITER_NEXT_3:%.*]] = add nuw nsw i64 [[NITER_NEXT_2]], 1
; ENABLED-NEXT:    [[CMP_4:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_4]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_4:%.*]]
; ENABLED:       for.body.4:
; ENABLED-NEXT:    [[ARRAYIDX_4:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT_3]]
; ENABLED-NEXT:    [[TMP7:%.*]] = load i32, ptr [[ARRAYIDX_4]], align 4
; ENABLED-NEXT:    [[ADD_4:%.*]] = add nsw i32 [[TMP7]], [[ADD_3]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_4:%.*]] = add nuw nsw i64 [[INDVARS_IV_NEXT_3]], 1
; ENABLED-NEXT:    [[NITER_NEXT_4:%.*]] = add nuw nsw i64 [[NITER_NEXT_3]], 1
; ENABLED-NEXT:    [[CMP_5:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_5]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_5:%.*]]
; ENABLED:       for.body.5:
; ENABLED-NEXT:    [[ARRAYIDX_5:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT_4]]
; ENABLED-NEXT:    [[TMP8:%.*]] = load i32, ptr [[ARRAYIDX_5]], align 4
; ENABLED-NEXT:    [[ADD_5:%.*]] = add nsw i32 [[TMP8]], [[ADD_4]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_5:%.*]] = add nuw nsw i64 [[INDVARS_IV_NEXT_4]], 1
; ENABLED-NEXT:    [[NITER_NEXT_5:%.*]] = add nuw nsw i64 [[NITER_NEXT_4]], 1
; ENABLED-NEXT:    [[CMP_6:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_6]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_6:%.*]]
; ENABLED:       for.body.6:
; ENABLED-NEXT:    [[ARRAYIDX_6:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT_5]]
; ENABLED-NEXT:    [[TMP9:%.*]] = load i32, ptr [[ARRAYIDX_6]], align 4
; ENABLED-NEXT:    [[ADD_6:%.*]] = add nsw i32 [[TMP9]], [[ADD_5]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_6:%.*]] = add nuw nsw i64 [[INDVARS_IV_NEXT_5]], 1
; ENABLED-NEXT:    [[NITER_NEXT_6:%.*]] = add nuw nsw i64 [[NITER_NEXT_5]], 1
; ENABLED-NEXT:    [[CMP_7:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_7]], label [[FOR_EXIT2_LOOPEXIT]], label [[FOR_BODY_7]]
; ENABLED:       for.body.7:
; ENABLED-NEXT:    [[ARRAYIDX_7:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_NEXT_6]]
; ENABLED-NEXT:    [[TMP10:%.*]] = load i32, ptr [[ARRAYIDX_7]], align 4
; ENABLED-NEXT:    [[ADD_7]] = add nsw i32 [[TMP10]], [[ADD_6]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_7]] = add i64 [[INDVARS_IV_NEXT_6]], 1
; ENABLED-NEXT:    [[NITER_NEXT_7]] = add i64 [[NITER_NEXT_6]], 1
; ENABLED-NEXT:    [[NITER_NCMP_7:%.*]] = icmp eq i64 [[NITER_NEXT_7]], [[UNROLL_ITER]]
; ENABLED-NEXT:    br i1 [[NITER_NCMP_7]], label [[FOR_END_UNR_LCSSA_LOOPEXIT:%.*]], label [[HEADER]]
; ENABLED:       for.end.unr-lcssa.loopexit:
; ENABLED-NEXT:    [[SUM_0_LCSSA_PH_PH:%.*]] = phi i32 [ [[ADD_7]], [[FOR_BODY_7]] ]
; ENABLED-NEXT:    [[INDVARS_IV_UNR_PH:%.*]] = phi i64 [ [[INDVARS_IV_NEXT_7]], [[FOR_BODY_7]] ]
; ENABLED-NEXT:    [[SUM_02_UNR_PH:%.*]] = phi i32 [ [[ADD_7]], [[FOR_BODY_7]] ]
; ENABLED-NEXT:    br label [[FOR_END_UNR_LCSSA]]
; ENABLED:       for.end.unr-lcssa:
; ENABLED-NEXT:    [[SUM_0_LCSSA_PH:%.*]] = phi i32 [ undef, [[ENTRY:%.*]] ], [ [[SUM_0_LCSSA_PH_PH]], [[FOR_END_UNR_LCSSA_LOOPEXIT]] ]
; ENABLED-NEXT:    [[INDVARS_IV_UNR:%.*]] = phi i64 [ 0, [[ENTRY]] ], [ [[INDVARS_IV_UNR_PH]], [[FOR_END_UNR_LCSSA_LOOPEXIT]] ]
; ENABLED-NEXT:    [[SUM_02_UNR:%.*]] = phi i32 [ 0, [[ENTRY]] ], [ [[SUM_02_UNR_PH]], [[FOR_END_UNR_LCSSA_LOOPEXIT]] ]
; ENABLED-NEXT:    [[LCMP_MOD:%.*]] = icmp ne i64 [[XTRAITER]], 0
; ENABLED-NEXT:    br i1 [[LCMP_MOD]], label [[HEADER_EPIL_PREHEADER:%.*]], label [[FOR_END:%.*]]
; ENABLED:       header.epil.preheader:
; ENABLED-NEXT:    br label [[HEADER_EPIL:%.*]]
; ENABLED:       header.epil:
; ENABLED-NEXT:    [[INDVARS_IV_EPIL:%.*]] = phi i64 [ [[INDVARS_IV_NEXT_EPIL:%.*]], [[FOR_BODY_EPIL:%.*]] ], [ [[INDVARS_IV_UNR]], [[HEADER_EPIL_PREHEADER]] ]
; ENABLED-NEXT:    [[SUM_02_EPIL:%.*]] = phi i32 [ [[ADD_EPIL:%.*]], [[FOR_BODY_EPIL]] ], [ [[SUM_02_UNR]], [[HEADER_EPIL_PREHEADER]] ]
; ENABLED-NEXT:    [[EPIL_ITER:%.*]] = phi i64 [ 0, [[HEADER_EPIL_PREHEADER]] ], [ [[EPIL_ITER_NEXT:%.*]], [[FOR_BODY_EPIL]] ]
; ENABLED-NEXT:    [[CMP_EPIL:%.*]] = icmp eq i64 [[N]], 42
; ENABLED-NEXT:    br i1 [[CMP_EPIL]], label [[FOR_EXIT2_LOOPEXIT2:%.*]], label [[FOR_BODY_EPIL]]
; ENABLED:       for.body.epil:
; ENABLED-NEXT:    [[ARRAYIDX_EPIL:%.*]] = getelementptr inbounds i32, ptr [[A]], i64 [[INDVARS_IV_EPIL]]
; ENABLED-NEXT:    [[TMP11:%.*]] = load i32, ptr [[ARRAYIDX_EPIL]], align 4
; ENABLED-NEXT:    [[ADD_EPIL]] = add nsw i32 [[TMP11]], [[SUM_02_EPIL]]
; ENABLED-NEXT:    [[INDVARS_IV_NEXT_EPIL]] = add i64 [[INDVARS_IV_EPIL]], 1
; ENABLED-NEXT:    [[EXITCOND_EPIL:%.*]] = icmp eq i64 [[INDVARS_IV_NEXT_EPIL]], [[N]]
; ENABLED-NEXT:    [[EPIL_ITER_NEXT]] = add i64 [[EPIL_ITER]], 1
; ENABLED-NEXT:    [[EPIL_ITER_CMP:%.*]] = icmp ne i64 [[EPIL_ITER_NEXT]], [[XTRAITER]]
; ENABLED-NEXT:    br i1 [[EPIL_ITER_CMP]], label [[HEADER_EPIL]], label [[FOR_END_EPILOG_LCSSA:%.*]], !llvm.loop [[LOOP0:![0-9]+]]
; ENABLED:       for.end.epilog-lcssa:
; ENABLED-NEXT:    [[SUM_0_LCSSA_PH1:%.*]] = phi i32 [ [[ADD_EPIL]], [[FOR_BODY_EPIL]] ]
; ENABLED-NEXT:    br label [[FOR_END]]
; ENABLED:       for.end:
; ENABLED-NEXT:    [[SUM_0_LCSSA:%.*]] = phi i32 [ [[SUM_0_LCSSA_PH]], [[FOR_END_UNR_LCSSA]] ], [ [[SUM_0_LCSSA_PH1]], [[FOR_END_EPILOG_LCSSA]] ]
; ENABLED-NEXT:    ret i32 [[SUM_0_LCSSA]]
; ENABLED:       for.exit2.loopexit:
; ENABLED-NEXT:    [[RETVAL_PH:%.*]] = phi i32 [ [[SUM_02]], [[HEADER]] ], [ [[ADD]], [[FOR_BODY]] ], [ [[ADD_1]], [[FOR_BODY_1]] ], [ [[ADD_2]], [[FOR_BODY_2]] ], [ [[ADD_3]], [[FOR_BODY_3]] ], [ [[ADD_4]], [[FOR_BODY_4]] ], [ [[ADD_5]], [[FOR_BODY_5]] ], [ [[ADD_6]], [[FOR_BODY_6]] ]
; ENABLED-NEXT:    br label [[FOR_EXIT2:%.*]]
; ENABLED:       for.exit2.loopexit2:
; ENABLED-NEXT:    [[RETVAL_PH3:%.*]] = phi i32 [ [[SUM_02_EPIL]], [[HEADER_EPIL]] ]
; ENABLED-NEXT:    br label [[FOR_EXIT2]]
; ENABLED:       for.exit2:
; ENABLED-NEXT:    [[RETVAL:%.*]] = phi i32 [ [[RETVAL_PH]], [[FOR_EXIT2_LOOPEXIT]] ], [ [[RETVAL_PH3]], [[FOR_EXIT2_LOOPEXIT2]] ]
; ENABLED-NEXT:    ret i32 [[RETVAL]]
;
; DISABLED-LABEL: @test(
; DISABLED-NEXT:  entry:
; DISABLED-NEXT:    br label [[HEADER:%.*]]
; DISABLED:       header:
; DISABLED-NEXT:    [[INDVARS_IV:%.*]] = phi i64 [ [[INDVARS_IV_NEXT:%.*]], [[FOR_BODY:%.*]] ], [ 0, [[ENTRY:%.*]] ]
; DISABLED-NEXT:    [[SUM_02:%.*]] = phi i32 [ [[ADD:%.*]], [[FOR_BODY]] ], [ 0, [[ENTRY]] ]
; DISABLED-NEXT:    [[CMP:%.*]] = icmp eq i64 [[N:%.*]], 42
; DISABLED-NEXT:    br i1 [[CMP]], label [[FOR_EXIT2:%.*]], label [[FOR_BODY]]
; DISABLED:       for.body:
; DISABLED-NEXT:    [[ARRAYIDX:%.*]] = getelementptr inbounds i32, ptr [[A:%.*]], i64 [[INDVARS_IV]]
; DISABLED-NEXT:    [[TMP0:%.*]] = load i32, ptr [[ARRAYIDX]], align 4
; DISABLED-NEXT:    [[ADD]] = add nsw i32 [[TMP0]], [[SUM_02]]
; DISABLED-NEXT:    [[INDVARS_IV_NEXT]] = add i64 [[INDVARS_IV]], 1
; DISABLED-NEXT:    [[EXITCOND:%.*]] = icmp eq i64 [[INDVARS_IV_NEXT]], [[N]]
; DISABLED-NEXT:    br i1 [[EXITCOND]], label [[FOR_END:%.*]], label [[HEADER]]
; DISABLED:       for.end:
; DISABLED-NEXT:    [[SUM_0_LCSSA:%.*]] = phi i32 [ [[ADD]], [[FOR_BODY]] ]
; DISABLED-NEXT:    ret i32 [[SUM_0_LCSSA]]
; DISABLED:       for.exit2:
; DISABLED-NEXT:    [[RETVAL:%.*]] = phi i32 [ [[SUM_02]], [[HEADER]] ]
; DISABLED-NEXT:    ret i32 [[RETVAL]]
;
entry:
  br label %header

header:
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.02 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %cmp = icmp eq i64 %n, 42
  br i1 %cmp, label %for.exit2, label %for.body

for.body:
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %0, %sum.02
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %n
  br i1 %exitcond, label %for.end, label %header

for.end:
  %sum.0.lcssa = phi i32 [ %add, %for.body ]
  ret i32 %sum.0.lcssa

for.exit2:
  %retval = phi i32 [ %sum.02, %header ]
  ret i32 %retval
}
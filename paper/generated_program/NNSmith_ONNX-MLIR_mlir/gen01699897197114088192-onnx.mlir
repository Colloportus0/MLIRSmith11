module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(0xFFF0000000000000 : f64) : f64
    %16 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.null : !llvm.ptr<f64>
    %24 = llvm.getelementptr %23[%18] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<f64> to i64
    %26 = llvm.mlir.constant(16 : index) : i64
    %27 = llvm.add %25, %26  : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %30 = llvm.ptrtoint %29 : !llvm.ptr<f64> to i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.sub %26, %31  : i64
    %33 = llvm.add %30, %32  : i64
    %34 = llvm.urem %33, %26  : i64
    %35 = llvm.sub %33, %34  : i64
    %36 = llvm.inttoptr %35 : i64 to !llvm.ptr<f64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %38 = llvm.insertvalue %29, %37[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %19, %42[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %20, %43[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %21, %44[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %20, %46[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %21, %47[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %22, %48[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%50 : i64)
  ^bb1(%53: i64):  // 2 preds: ^bb0, ^bb11
    %54 = llvm.icmp "slt" %53, %51 : i64
    llvm.cond_br %54, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%55 : i64)
  ^bb3(%58: i64):  // 2 preds: ^bb2, ^bb10
    %59 = llvm.icmp "slt" %58, %56 : i64
    llvm.cond_br %59, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%60 : i64)
  ^bb5(%63: i64):  // 2 preds: ^bb4, ^bb9
    %64 = llvm.icmp "slt" %63, %61 : i64
    llvm.cond_br %64, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%65 : i64)
  ^bb7(%68: i64):  // 2 preds: ^bb6, ^bb8
    %69 = llvm.icmp "slt" %68, %66 : i64
    llvm.cond_br %69, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %70 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.add %53, %58  : i64
    %72 = llvm.add %71, %63  : i64
    %73 = llvm.add %72, %68  : i64
    %74 = llvm.getelementptr %70[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %75 = llvm.load %74 : !llvm.ptr<i32>
    %76 = llvm.sitofp %75 : i32 to f64
    %77 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.add %53, %58  : i64
    %79 = llvm.add %78, %63  : i64
    %80 = llvm.add %79, %68  : i64
    %81 = llvm.getelementptr %77[%80] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %76, %81 : !llvm.ptr<f64>
    %82 = llvm.add %68, %67  : i64
    llvm.br ^bb7(%82 : i64)
  ^bb9:  // pred: ^bb7
    %83 = llvm.add %63, %62  : i64
    llvm.br ^bb5(%83 : i64)
  ^bb10:  // pred: ^bb5
    %84 = llvm.add %58, %57  : i64
    llvm.br ^bb3(%84 : i64)
  ^bb11:  // pred: ^bb3
    %85 = llvm.add %53, %52  : i64
    llvm.br ^bb1(%85 : i64)
  ^bb12:  // pred: ^bb1
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.null : !llvm.ptr<f64>
    %92 = llvm.getelementptr %91[%86] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<f64> to i64
    %94 = llvm.mlir.constant(16 : index) : i64
    %95 = llvm.add %93, %94  : i64
    %96 = llvm.call @malloc(%95) : (i64) -> !llvm.ptr<i8>
    %97 = llvm.bitcast %96 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<f64> to i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.sub %94, %99  : i64
    %101 = llvm.add %98, %100  : i64
    %102 = llvm.urem %101, %94  : i64
    %103 = llvm.sub %101, %102  : i64
    %104 = llvm.inttoptr %103 : i64 to !llvm.ptr<f64>
    %105 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %106 = llvm.insertvalue %97, %105[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %86, %109[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %87, %110[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %88, %111[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %89, %112[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %88, %114[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %90, %116[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<f64>
    %120 = llvm.getelementptr %119[%118] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<f64> to i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr<i8>
    %123 = llvm.bitcast %122 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %125 = llvm.insertvalue %123, %124[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.null : !llvm.ptr<f64>
    %131 = llvm.getelementptr %130[%129] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<f64> to i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %135 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %136 = llvm.insertvalue %134, %135[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%140 : i64)
  ^bb13(%143: i64):  // 2 preds: ^bb12, ^bb29
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb14, ^bb30
  ^bb14:  // pred: ^bb13
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%145 : i64)
  ^bb15(%148: i64):  // 2 preds: ^bb14, ^bb28
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb16, ^bb29
  ^bb16:  // pred: ^bb15
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%150 : i64)
  ^bb17(%153: i64):  // 2 preds: ^bb16, ^bb27
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb18, ^bb28
  ^bb18:  // pred: ^bb17
    %155 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %16, %155 : !llvm.ptr<f64>
    %156 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %15, %156 : !llvm.ptr<f64>
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%157 : i64)
  ^bb19(%160: i64):  // 2 preds: ^bb18, ^bb20
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %162 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %163 = llvm.load %162 : !llvm.ptr<f64>
    %164 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.add %160, %143  : i64
    %166 = llvm.add %165, %148  : i64
    %167 = llvm.add %166, %153  : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %169 = llvm.load %168 : !llvm.ptr<f64>
    %170 = llvm.fcmp "ogt" %163, %169 : f64
    %171 = llvm.select %170, %163, %169 : i1, f64
    %172 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %171, %172 : !llvm.ptr<f64>
    %173 = llvm.add %160, %159  : i64
    llvm.br ^bb19(%173 : i64)
  ^bb21:  // pred: ^bb19
    %174 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %175 = llvm.load %174 : !llvm.ptr<f64>
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%176 : i64)
  ^bb22(%179: i64):  // 2 preds: ^bb21, ^bb23
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %181 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %182 = llvm.load %181 : !llvm.ptr<f64>
    %183 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.add %179, %143  : i64
    %185 = llvm.add %184, %148  : i64
    %186 = llvm.add %185, %153  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %188 = llvm.load %187 : !llvm.ptr<f64>
    %189 = llvm.fsub %188, %175  : f64
    %190 = llvm.intr.exp(%189)  : (f64) -> f64
    %191 = llvm.fadd %182, %190  : f64
    %192 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %191, %192 : !llvm.ptr<f64>
    %193 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.add %179, %143  : i64
    %195 = llvm.add %194, %148  : i64
    %196 = llvm.add %195, %153  : i64
    %197 = llvm.getelementptr %193[%196] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %190, %197 : !llvm.ptr<f64>
    %198 = llvm.add %179, %178  : i64
    llvm.br ^bb22(%198 : i64)
  ^bb24:  // pred: ^bb22
    %199 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %200 = llvm.load %199 : !llvm.ptr<f64>
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%201 : i64)
  ^bb25(%204: i64):  // 2 preds: ^bb24, ^bb26
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %206 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.add %204, %143  : i64
    %208 = llvm.add %207, %148  : i64
    %209 = llvm.add %208, %153  : i64
    %210 = llvm.getelementptr %206[%209] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %211 = llvm.load %210 : !llvm.ptr<f64>
    %212 = llvm.fdiv %211, %200  : f64
    %213 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.add %204, %143  : i64
    %215 = llvm.add %214, %148  : i64
    %216 = llvm.add %215, %153  : i64
    %217 = llvm.getelementptr %213[%216] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %212, %217 : !llvm.ptr<f64>
    %218 = llvm.add %204, %203  : i64
    llvm.br ^bb25(%218 : i64)
  ^bb27:  // pred: ^bb25
    %219 = llvm.add %153, %152  : i64
    llvm.br ^bb17(%219 : i64)
  ^bb28:  // pred: ^bb17
    %220 = llvm.add %148, %147  : i64
    llvm.br ^bb15(%220 : i64)
  ^bb29:  // pred: ^bb15
    %221 = llvm.add %143, %142  : i64
    llvm.br ^bb13(%221 : i64)
  ^bb30:  // pred: ^bb13
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.null : !llvm.ptr<f64>
    %228 = llvm.getelementptr %227[%222] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %229 = llvm.ptrtoint %228 : !llvm.ptr<f64> to i64
    %230 = llvm.mlir.constant(16 : index) : i64
    %231 = llvm.add %229, %230  : i64
    %232 = llvm.call @malloc(%231) : (i64) -> !llvm.ptr<i8>
    %233 = llvm.bitcast %232 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<f64> to i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.sub %230, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.urem %237, %230  : i64
    %239 = llvm.sub %237, %238  : i64
    %240 = llvm.inttoptr %239 : i64 to !llvm.ptr<f64>
    %241 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %242 = llvm.insertvalue %233, %241[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %240, %242[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.insertvalue %244, %243[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %222, %245[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %223, %246[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %224, %247[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %225, %248[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %223, %249[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %224, %250[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %225, %251[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %226, %252[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%254 : i64)
  ^bb31(%257: i64):  // 2 preds: ^bb30, ^bb41
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%259 : i64)
  ^bb33(%262: i64):  // 2 preds: ^bb32, ^bb40
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%264 : i64)
  ^bb35(%267: i64):  // 2 preds: ^bb34, ^bb39
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%269 : i64)
  ^bb37(%272: i64):  // 2 preds: ^bb36, ^bb38
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %274 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.add %257, %262  : i64
    %276 = llvm.add %275, %267  : i64
    %277 = llvm.add %276, %272  : i64
    %278 = llvm.getelementptr %274[%277] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %279 = llvm.load %278 : !llvm.ptr<f64>
    %280 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.add %257, %262  : i64
    %282 = llvm.add %281, %267  : i64
    %283 = llvm.add %282, %272  : i64
    %284 = llvm.getelementptr %280[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %285 = llvm.load %284 : !llvm.ptr<f64>
    %286 = llvm.fmul %279, %285  : f64
    %287 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.add %257, %262  : i64
    %289 = llvm.add %288, %267  : i64
    %290 = llvm.add %289, %272  : i64
    %291 = llvm.getelementptr %287[%290] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %286, %291 : !llvm.ptr<f64>
    %292 = llvm.add %272, %271  : i64
    llvm.br ^bb37(%292 : i64)
  ^bb39:  // pred: ^bb37
    %293 = llvm.add %267, %266  : i64
    llvm.br ^bb35(%293 : i64)
  ^bb40:  // pred: ^bb35
    %294 = llvm.add %262, %261  : i64
    llvm.br ^bb33(%294 : i64)
  ^bb41:  // pred: ^bb33
    %295 = llvm.add %257, %256  : i64
    llvm.br ^bb31(%295 : i64)
  ^bb42:  // pred: ^bb31
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.null : !llvm.ptr<f64>
    %302 = llvm.getelementptr %301[%296] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %303 = llvm.ptrtoint %302 : !llvm.ptr<f64> to i64
    %304 = llvm.mlir.constant(16 : index) : i64
    %305 = llvm.add %303, %304  : i64
    %306 = llvm.call @malloc(%305) : (i64) -> !llvm.ptr<i8>
    %307 = llvm.bitcast %306 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<f64> to i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.sub %304, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.urem %311, %304  : i64
    %313 = llvm.sub %311, %312  : i64
    %314 = llvm.inttoptr %313 : i64 to !llvm.ptr<f64>
    %315 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %316 = llvm.insertvalue %307, %315[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %314, %316[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.insertvalue %318, %317[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %296, %319[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %297, %320[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %298, %321[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %299, %322[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %300, %326[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%328 : i64)
  ^bb43(%331: i64):  // 2 preds: ^bb42, ^bb53
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%333 : i64)
  ^bb45(%336: i64):  // 2 preds: ^bb44, ^bb52
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%338 : i64)
  ^bb47(%341: i64):  // 2 preds: ^bb46, ^bb51
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%343 : i64)
  ^bb49(%346: i64):  // 2 preds: ^bb48, ^bb50
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %348 = llvm.sitofp %331 : i64 to f32
    %349 = llvm.intr.floor(%348)  : (f32) -> f32
    %350 = llvm.fptosi %349 : f32 to i64
    %351 = llvm.icmp "slt" %350, %14 : i64
    %352 = llvm.select %351, %14, %350 : i1, i64
    %353 = llvm.icmp "slt" %352, %17 : i64
    %354 = llvm.select %353, %352, %12 : i1, i64
    %355 = llvm.sitofp %336 : i64 to f32
    %356 = llvm.intr.floor(%355)  : (f32) -> f32
    %357 = llvm.fptosi %356 : f32 to i64
    %358 = llvm.icmp "slt" %357, %14 : i64
    %359 = llvm.select %358, %14, %357 : i1, i64
    %360 = llvm.icmp "slt" %359, %17 : i64
    %361 = llvm.select %360, %359, %12 : i1, i64
    %362 = llvm.sitofp %341 : i64 to f32
    %363 = llvm.intr.floor(%362)  : (f32) -> f32
    %364 = llvm.fptosi %363 : f32 to i64
    %365 = llvm.icmp "slt" %364, %14 : i64
    %366 = llvm.select %365, %14, %364 : i1, i64
    %367 = llvm.icmp "slt" %366, %17 : i64
    %368 = llvm.select %367, %366, %12 : i1, i64
    %369 = llvm.sitofp %346 : i64 to f32
    %370 = llvm.intr.floor(%369)  : (f32) -> f32
    %371 = llvm.fptosi %370 : f32 to i64
    %372 = llvm.icmp "slt" %371, %14 : i64
    %373 = llvm.select %372, %14, %371 : i1, i64
    %374 = llvm.icmp "slt" %373, %17 : i64
    %375 = llvm.select %374, %373, %12 : i1, i64
    %376 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.add %354, %361  : i64
    %378 = llvm.add %377, %368  : i64
    %379 = llvm.add %378, %375  : i64
    %380 = llvm.getelementptr %376[%379] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %381 = llvm.load %380 : !llvm.ptr<f64>
    %382 = llvm.extractvalue %327[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.add %331, %336  : i64
    %384 = llvm.add %383, %341  : i64
    %385 = llvm.add %384, %346  : i64
    %386 = llvm.getelementptr %382[%385] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %381, %386 : !llvm.ptr<f64>
    %387 = llvm.add %346, %345  : i64
    llvm.br ^bb49(%387 : i64)
  ^bb51:  // pred: ^bb49
    %388 = llvm.add %341, %340  : i64
    llvm.br ^bb47(%388 : i64)
  ^bb52:  // pred: ^bb47
    %389 = llvm.add %336, %335  : i64
    llvm.br ^bb45(%389 : i64)
  ^bb53:  // pred: ^bb45
    %390 = llvm.add %331, %330  : i64
    llvm.br ^bb43(%390 : i64)
  ^bb54:  // pred: ^bb43
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i32>
    %397 = llvm.getelementptr %396[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i32> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i32> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i32>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %391, %414[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %392, %415[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %393, %416[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %394, %417[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %392, %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%423 : i64)
  ^bb55(%426: i64):  // 2 preds: ^bb54, ^bb65
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%428 : i64)
  ^bb57(%431: i64):  // 2 preds: ^bb56, ^bb64
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%433 : i64)
  ^bb59(%436: i64):  // 2 preds: ^bb58, ^bb63
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%438 : i64)
  ^bb61(%441: i64):  // 2 preds: ^bb60, ^bb62
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %443 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.add %426, %431  : i64
    %445 = llvm.add %444, %436  : i64
    %446 = llvm.add %445, %441  : i64
    %447 = llvm.getelementptr %443[%446] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %448 = llvm.load %447 : !llvm.ptr<i32>
    %449 = llvm.sub %13, %448  : i32
    %450 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.add %426, %431  : i64
    %452 = llvm.add %451, %436  : i64
    %453 = llvm.add %452, %441  : i64
    %454 = llvm.getelementptr %450[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %449, %454 : !llvm.ptr<i32>
    %455 = llvm.add %441, %440  : i64
    llvm.br ^bb61(%455 : i64)
  ^bb63:  // pred: ^bb61
    %456 = llvm.add %436, %435  : i64
    llvm.br ^bb59(%456 : i64)
  ^bb64:  // pred: ^bb59
    %457 = llvm.add %431, %430  : i64
    llvm.br ^bb57(%457 : i64)
  ^bb65:  // pred: ^bb57
    %458 = llvm.add %426, %425  : i64
    llvm.br ^bb55(%458 : i64)
  ^bb66:  // pred: ^bb55
    %459 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %460 = llvm.insertvalue %327, %459[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %461 = llvm.insertvalue %422, %460[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %461 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


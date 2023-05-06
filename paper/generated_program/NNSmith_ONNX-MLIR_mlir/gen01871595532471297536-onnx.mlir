module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<0> : tensor<8xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<8 x i64>
  llvm.mlir.global internal constant @constant_1(dense<5.000000e-01> : tensor<f64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(5.000000e-01 : f64) : f64
    %16 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %17 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x f64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<1 x f64>> to !llvm.ptr<f64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %27 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<8 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<8 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(8 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.null : !llvm.ptr<f64>
    %44 = llvm.getelementptr %43[%38] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<f64> to i64
    %46 = llvm.mlir.constant(16 : index) : i64
    %47 = llvm.add %45, %46  : i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr<i8>
    %49 = llvm.bitcast %48 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<f64> to i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.sub %46, %51  : i64
    %53 = llvm.add %50, %52  : i64
    %54 = llvm.urem %53, %46  : i64
    %55 = llvm.sub %53, %54  : i64
    %56 = llvm.inttoptr %55 : i64 to !llvm.ptr<f64>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %58 = llvm.insertvalue %49, %57[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %38, %61[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %39, %62[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %40, %63[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %41, %64[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %39, %65[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %40, %66[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %41, %67[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %42, %68[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%70 : i64)
  ^bb1(%73: i64):  // 2 preds: ^bb0, ^bb11
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%75 : i64)
  ^bb3(%78: i64):  // 2 preds: ^bb2, ^bb10
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%80 : i64)
  ^bb5(%83: i64):  // 2 preds: ^bb4, ^bb9
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%85 : i64)
  ^bb7(%88: i64):  // 2 preds: ^bb6, ^bb8
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %90 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.add %73, %78  : i64
    %92 = llvm.add %91, %83  : i64
    %93 = llvm.add %92, %88  : i64
    %94 = llvm.getelementptr %90[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.load %94 : !llvm.ptr<i32>
    %96 = llvm.sitofp %95 : i32 to f64
    %97 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.add %73, %78  : i64
    %99 = llvm.add %98, %83  : i64
    %100 = llvm.add %99, %88  : i64
    %101 = llvm.getelementptr %97[%100] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %96, %101 : !llvm.ptr<f64>
    %102 = llvm.add %88, %87  : i64
    llvm.br ^bb7(%102 : i64)
  ^bb9:  // pred: ^bb7
    %103 = llvm.add %83, %82  : i64
    llvm.br ^bb5(%103 : i64)
  ^bb10:  // pred: ^bb5
    %104 = llvm.add %78, %77  : i64
    llvm.br ^bb3(%104 : i64)
  ^bb11:  // pred: ^bb3
    %105 = llvm.add %73, %72  : i64
    llvm.br ^bb1(%105 : i64)
  ^bb12:  // pred: ^bb1
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.null : !llvm.ptr<f64>
    %112 = llvm.getelementptr %111[%106] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<f64> to i64
    %114 = llvm.mlir.constant(16 : index) : i64
    %115 = llvm.add %113, %114  : i64
    %116 = llvm.call @malloc(%115) : (i64) -> !llvm.ptr<i8>
    %117 = llvm.bitcast %116 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %118 = llvm.ptrtoint %117 : !llvm.ptr<f64> to i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.sub %114, %119  : i64
    %121 = llvm.add %118, %120  : i64
    %122 = llvm.urem %121, %114  : i64
    %123 = llvm.sub %121, %122  : i64
    %124 = llvm.inttoptr %123 : i64 to !llvm.ptr<f64>
    %125 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %126 = llvm.insertvalue %117, %125[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %124, %126[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.insertvalue %128, %127[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %106, %129[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %107, %130[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %108, %131[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %109, %132[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %110, %136[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%138 : i64)
  ^bb13(%141: i64):  // 2 preds: ^bb12, ^bb23
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%143 : i64)
  ^bb15(%146: i64):  // 2 preds: ^bb14, ^bb22
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%148 : i64)
  ^bb17(%151: i64):  // 2 preds: ^bb16, ^bb21
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%153 : i64)
  ^bb19(%156: i64):  // 2 preds: ^bb18, ^bb20
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %158 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.add %141, %146  : i64
    %160 = llvm.add %159, %151  : i64
    %161 = llvm.add %160, %156  : i64
    %162 = llvm.getelementptr %158[%161] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %163 = llvm.load %162 : !llvm.ptr<f64>
    %164 = llvm.intr.floor(%163)  : (f64) -> f64
    %165 = llvm.fsub %163, %164  : f64
    %166 = llvm.fcmp "ogt" %165, %15 : f64
    %167 = llvm.fadd %164, %17  : f64
    %168 = llvm.select %166, %167, %164 : i1, f64
    %169 = llvm.fmul %164, %15  : f64
    %170 = llvm.intr.floor(%169)  : (f64) -> f64
    %171 = llvm.fmul %170, %16  : f64
    %172 = llvm.fsub %164, %171  : f64
    %173 = llvm.fcmp "oeq" %172, %17 : f64
    %174 = llvm.fadd %164, %17  : f64
    %175 = llvm.select %173, %174, %164 : i1, f64
    %176 = llvm.fcmp "oeq" %165, %15 : f64
    %177 = llvm.select %176, %175, %168 : i1, f64
    %178 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.add %141, %146  : i64
    %180 = llvm.add %179, %151  : i64
    %181 = llvm.add %180, %156  : i64
    %182 = llvm.getelementptr %178[%181] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %177, %182 : !llvm.ptr<f64>
    %183 = llvm.add %156, %155  : i64
    llvm.br ^bb19(%183 : i64)
  ^bb21:  // pred: ^bb19
    %184 = llvm.add %151, %150  : i64
    llvm.br ^bb17(%184 : i64)
  ^bb22:  // pred: ^bb17
    %185 = llvm.add %146, %145  : i64
    llvm.br ^bb15(%185 : i64)
  ^bb23:  // pred: ^bb15
    %186 = llvm.add %141, %140  : i64
    llvm.br ^bb13(%186 : i64)
  ^bb24:  // pred: ^bb13
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<f64>
    %193 = llvm.getelementptr %192[%187] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<f64> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<f64> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<f64>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %187, %210[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %188, %211[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %189, %212[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %190, %213[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%219 : i64)
  ^bb25(%222: i64):  // 2 preds: ^bb24, ^bb35
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%224 : i64)
  ^bb27(%227: i64):  // 2 preds: ^bb26, ^bb34
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%229 : i64)
  ^bb29(%232: i64):  // 2 preds: ^bb28, ^bb33
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%234 : i64)
  ^bb31(%237: i64):  // 2 preds: ^bb30, ^bb32
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %239 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.add %222, %227  : i64
    %241 = llvm.add %240, %232  : i64
    %242 = llvm.add %241, %237  : i64
    %243 = llvm.getelementptr %239[%242] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %244 = llvm.load %243 : !llvm.ptr<f64>
    %245 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.add %222, %227  : i64
    %247 = llvm.add %246, %232  : i64
    %248 = llvm.add %247, %237  : i64
    %249 = llvm.getelementptr %245[%248] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %250 = llvm.load %249 : !llvm.ptr<f64>
    %251 = llvm.fdiv %244, %250  : f64
    %252 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.add %222, %227  : i64
    %254 = llvm.add %253, %232  : i64
    %255 = llvm.add %254, %237  : i64
    %256 = llvm.getelementptr %252[%255] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %251, %256 : !llvm.ptr<f64>
    %257 = llvm.add %237, %236  : i64
    llvm.br ^bb31(%257 : i64)
  ^bb33:  // pred: ^bb31
    %258 = llvm.add %232, %231  : i64
    llvm.br ^bb29(%258 : i64)
  ^bb34:  // pred: ^bb29
    %259 = llvm.add %227, %226  : i64
    llvm.br ^bb27(%259 : i64)
  ^bb35:  // pred: ^bb27
    %260 = llvm.add %222, %221  : i64
    llvm.br ^bb25(%260 : i64)
  ^bb36:  // pred: ^bb25
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.null : !llvm.ptr<f64>
    %267 = llvm.getelementptr %266[%261] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<f64> to i64
    %269 = llvm.mlir.constant(16 : index) : i64
    %270 = llvm.add %268, %269  : i64
    %271 = llvm.call @malloc(%270) : (i64) -> !llvm.ptr<i8>
    %272 = llvm.bitcast %271 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<f64> to i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.sub %269, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.urem %276, %269  : i64
    %278 = llvm.sub %276, %277  : i64
    %279 = llvm.inttoptr %278 : i64 to !llvm.ptr<f64>
    %280 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %281 = llvm.insertvalue %272, %280[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %261, %284[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %262, %285[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %263, %286[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %264, %287[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %262, %288[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %263, %289[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %264, %290[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %265, %291[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%293 : i64)
  ^bb37(%296: i64):  // 2 preds: ^bb36, ^bb47
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%298 : i64)
  ^bb39(%301: i64):  // 2 preds: ^bb38, ^bb46
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%303 : i64)
  ^bb41(%306: i64):  // 2 preds: ^bb40, ^bb45
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%308 : i64)
  ^bb43(%311: i64):  // 2 preds: ^bb42, ^bb44
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %313 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.add %296, %301  : i64
    %315 = llvm.add %314, %306  : i64
    %316 = llvm.add %315, %311  : i64
    %317 = llvm.getelementptr %313[%316] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %318 = llvm.load %317 : !llvm.ptr<f64>
    %319 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.add %296, %301  : i64
    %321 = llvm.add %320, %306  : i64
    %322 = llvm.add %321, %311  : i64
    %323 = llvm.getelementptr %319[%322] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %324 = llvm.load %323 : !llvm.ptr<f64>
    %325 = llvm.fdiv %318, %324  : f64
    %326 = llvm.extractvalue %292[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.add %296, %301  : i64
    %328 = llvm.add %327, %306  : i64
    %329 = llvm.add %328, %311  : i64
    %330 = llvm.getelementptr %326[%329] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %325, %330 : !llvm.ptr<f64>
    %331 = llvm.add %311, %310  : i64
    llvm.br ^bb43(%331 : i64)
  ^bb45:  // pred: ^bb43
    %332 = llvm.add %306, %305  : i64
    llvm.br ^bb41(%332 : i64)
  ^bb46:  // pred: ^bb41
    %333 = llvm.add %301, %300  : i64
    llvm.br ^bb39(%333 : i64)
  ^bb47:  // pred: ^bb39
    %334 = llvm.add %296, %295  : i64
    llvm.br ^bb37(%334 : i64)
  ^bb48:  // pred: ^bb37
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.null : !llvm.ptr<i64>
    %338 = llvm.getelementptr %337[%336] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i64> to i64
    %340 = llvm.mlir.constant(16 : index) : i64
    %341 = llvm.add %339, %340  : i64
    %342 = llvm.call @malloc(%341) : (i64) -> !llvm.ptr<i8>
    %343 = llvm.bitcast %342 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %344 = llvm.ptrtoint %343 : !llvm.ptr<i64> to i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.sub %340, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.urem %347, %340  : i64
    %349 = llvm.sub %347, %348  : i64
    %350 = llvm.inttoptr %349 : i64 to !llvm.ptr<i64>
    %351 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %352 = llvm.insertvalue %343, %351[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.insertvalue %350, %352[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.insertvalue %354, %353[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.insertvalue %335, %355[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %336, %356[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%358 : i64)
  ^bb49(%361: i64):  // 2 preds: ^bb48, ^bb50
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %363 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.getelementptr %363[%361] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %364 : !llvm.ptr<i64>
    %365 = llvm.add %361, %360  : i64
    llvm.br ^bb49(%365 : i64)
  ^bb51:  // pred: ^bb49
    %366 = llvm.mlir.constant(8 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.null : !llvm.ptr<i64>
    %369 = llvm.getelementptr %368[%366] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %370 = llvm.ptrtoint %369 : !llvm.ptr<i64> to i64
    %371 = llvm.mlir.constant(16 : index) : i64
    %372 = llvm.add %370, %371  : i64
    %373 = llvm.call @malloc(%372) : (i64) -> !llvm.ptr<i8>
    %374 = llvm.bitcast %373 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i64> to i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.sub %371, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.urem %378, %371  : i64
    %380 = llvm.sub %378, %379  : i64
    %381 = llvm.inttoptr %380 : i64 to !llvm.ptr<i64>
    %382 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %383 = llvm.insertvalue %374, %382[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.insertvalue %381, %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.insertvalue %385, %384[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.insertvalue %366, %386[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %367, %387[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(8 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%389 : i64)
  ^bb52(%392: i64):  // 2 preds: ^bb51, ^bb53
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %394 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.getelementptr %394[%392] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %396 = llvm.load %395 : !llvm.ptr<i64>
    %397 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.getelementptr %397[%392] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %396, %398 : !llvm.ptr<i64>
    %399 = llvm.add %392, %391  : i64
    llvm.br ^bb52(%399 : i64)
  ^bb54:  // pred: ^bb52
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%400 : i64)
  ^bb55(%403: i64):  // 2 preds: ^bb54, ^bb56
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %405 = llvm.mlir.constant(8 : index) : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.getelementptr %407[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %409 = llvm.load %408 : !llvm.ptr<i64>
    %410 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%406] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %409, %411 : !llvm.ptr<i64>
    %412 = llvm.add %403, %402  : i64
    llvm.br ^bb55(%412 : i64)
  ^bb57:  // pred: ^bb55
    %413 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %414 = llvm.extractvalue %388[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.insertvalue %414, %413[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.insertvalue %415, %416[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.insertvalue %418, %417[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %420 = llvm.mlir.constant(4 : index) : i64
    %421 = llvm.insertvalue %420, %419[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.insertvalue %422, %421[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.insertvalue %424, %423[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.insertvalue %426, %425[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %428 = llvm.mlir.constant(4 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(8 : index) : i64
    %432 = llvm.mlir.null : !llvm.ptr<i64>
    %433 = llvm.getelementptr %432[%431] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<i64> to i64
    %435 = llvm.mlir.constant(16 : index) : i64
    %436 = llvm.add %434, %435  : i64
    %437 = llvm.call @malloc(%436) : (i64) -> !llvm.ptr<i8>
    %438 = llvm.bitcast %437 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %439 = llvm.ptrtoint %438 : !llvm.ptr<i64> to i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.sub %435, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.urem %442, %435  : i64
    %444 = llvm.sub %442, %443  : i64
    %445 = llvm.inttoptr %444 : i64 to !llvm.ptr<i64>
    %446 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %447 = llvm.insertvalue %438, %446[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %448 = llvm.insertvalue %445, %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.insertvalue %449, %448[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %451 = llvm.insertvalue %428, %450[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %452 = llvm.insertvalue %429, %451[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %453 = llvm.insertvalue %429, %452[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %454 = llvm.insertvalue %430, %453[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%455 : i64)
  ^bb58(%458: i64):  // 2 preds: ^bb57, ^bb62
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb59, ^bb63
  ^bb59:  // pred: ^bb58
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%460 : i64)
  ^bb60(%463: i64):  // 2 preds: ^bb59, ^bb61
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb61, ^bb62
  ^bb61:  // pred: ^bb60
    %465 = llvm.mlir.constant(-1 : index) : i64
    %466 = llvm.mul %458, %465  : i64
    %467 = llvm.mlir.constant(3 : index) : i64
    %468 = llvm.add %466, %467  : i64
    %469 = llvm.extractvalue %427[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mul %468, %470  : i64
    %472 = llvm.add %471, %463  : i64
    %473 = llvm.getelementptr %469[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %474 = llvm.load %473 : !llvm.ptr<i64>
    %475 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mul %458, %476  : i64
    %478 = llvm.add %477, %463  : i64
    %479 = llvm.getelementptr %475[%478] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %474, %479 : !llvm.ptr<i64>
    %480 = llvm.add %463, %462  : i64
    llvm.br ^bb60(%480 : i64)
  ^bb62:  // pred: ^bb60
    %481 = llvm.add %458, %457  : i64
    llvm.br ^bb58(%481 : i64)
  ^bb63:  // pred: ^bb58
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(8 : index) : i64
    %486 = llvm.mlir.null : !llvm.ptr<i64>
    %487 = llvm.getelementptr %486[%485] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i64> to i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.add %488, %489  : i64
    %491 = llvm.call @malloc(%490) : (i64) -> !llvm.ptr<i8>
    %492 = llvm.bitcast %491 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i64> to i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.sub %489, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.urem %496, %489  : i64
    %498 = llvm.sub %496, %497  : i64
    %499 = llvm.inttoptr %498 : i64 to !llvm.ptr<i64>
    %500 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %501 = llvm.insertvalue %492, %500[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %505 = llvm.insertvalue %482, %504[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %506 = llvm.insertvalue %483, %505[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %507 = llvm.insertvalue %483, %506[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %508 = llvm.insertvalue %484, %507[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%509 : i64)
  ^bb64(%512: i64):  // 2 preds: ^bb63, ^bb68
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb65, ^bb69
  ^bb65:  // pred: ^bb64
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%514 : i64)
  ^bb66(%517: i64):  // 2 preds: ^bb65, ^bb67
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %519 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %520 = llvm.mlir.constant(2 : index) : i64
    %521 = llvm.mul %512, %520  : i64
    %522 = llvm.add %521, %517  : i64
    %523 = llvm.getelementptr %519[%522] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %524 = llvm.load %523 : !llvm.ptr<i64>
    %525 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mul %517, %526  : i64
    %528 = llvm.add %527, %512  : i64
    %529 = llvm.getelementptr %525[%528] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %524, %529 : !llvm.ptr<i64>
    %530 = llvm.add %517, %516  : i64
    llvm.br ^bb66(%530 : i64)
  ^bb68:  // pred: ^bb66
    %531 = llvm.add %512, %511  : i64
    llvm.br ^bb64(%531 : i64)
  ^bb69:  // pred: ^bb64
    %532 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %533 = llvm.extractvalue %508[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %534 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %535 = llvm.insertvalue %533, %532[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %536 = llvm.insertvalue %534, %535[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.insertvalue %537, %536[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.mlir.constant(8 : index) : i64
    %540 = llvm.insertvalue %539, %538[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.insertvalue %541, %540[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %543 = llvm.extractvalue %542[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %544 = llvm.getelementptr %543[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %545 = llvm.load %544 : !llvm.ptr<i64>
    %546 = llvm.extractvalue %542[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.getelementptr %546[%19] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %548 = llvm.load %547 : !llvm.ptr<i64>
    %549 = llvm.extractvalue %542[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.getelementptr %549[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %551 = llvm.load %550 : !llvm.ptr<i64>
    %552 = llvm.extractvalue %542[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.getelementptr %552[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %554 = llvm.load %553 : !llvm.ptr<i64>
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.null : !llvm.ptr<f64>
    %561 = llvm.getelementptr %560[%555] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %562 = llvm.ptrtoint %561 : !llvm.ptr<f64> to i64
    %563 = llvm.mlir.constant(16 : index) : i64
    %564 = llvm.add %562, %563  : i64
    %565 = llvm.call @malloc(%564) : (i64) -> !llvm.ptr<i8>
    %566 = llvm.bitcast %565 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %567 = llvm.ptrtoint %566 : !llvm.ptr<f64> to i64
    %568 = llvm.mlir.constant(1 : index) : i64
    %569 = llvm.sub %563, %568  : i64
    %570 = llvm.add %567, %569  : i64
    %571 = llvm.urem %570, %563  : i64
    %572 = llvm.sub %570, %571  : i64
    %573 = llvm.inttoptr %572 : i64 to !llvm.ptr<f64>
    %574 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %575 = llvm.insertvalue %566, %574[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.insertvalue %573, %575[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.insertvalue %577, %576[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.insertvalue %555, %578[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.insertvalue %556, %579[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.insertvalue %557, %580[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.insertvalue %558, %581[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.insertvalue %556, %582[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %557, %583[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %558, %584[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %559, %585[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %588 = llvm.load %587 : !llvm.ptr<f64>
    %589 = llvm.mlir.constant(1 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.mlir.constant(0 : index) : i64
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%594 : i64)
  ^bb70(%597: i64):  // 2 preds: ^bb69, ^bb80
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%599 : i64)
  ^bb72(%602: i64):  // 2 preds: ^bb71, ^bb79
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%604 : i64)
  ^bb74(%607: i64):  // 2 preds: ^bb73, ^bb78
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%609 : i64)
  ^bb76(%612: i64):  // 2 preds: ^bb75, ^bb77
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %614 = llvm.extractvalue %586[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.add %597, %602  : i64
    %616 = llvm.add %615, %607  : i64
    %617 = llvm.add %616, %612  : i64
    %618 = llvm.getelementptr %614[%617] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %588, %618 : !llvm.ptr<f64>
    %619 = llvm.add %612, %611  : i64
    llvm.br ^bb76(%619 : i64)
  ^bb78:  // pred: ^bb76
    %620 = llvm.add %607, %606  : i64
    llvm.br ^bb74(%620 : i64)
  ^bb79:  // pred: ^bb74
    %621 = llvm.add %602, %601  : i64
    llvm.br ^bb72(%621 : i64)
  ^bb80:  // pred: ^bb72
    %622 = llvm.add %597, %596  : i64
    llvm.br ^bb70(%622 : i64)
  ^bb81:  // pred: ^bb70
    %623 = llvm.mlir.constant(0 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%623 : i64)
  ^bb82(%626: i64):  // 2 preds: ^bb81, ^bb92
    %627 = llvm.icmp "slt" %626, %624 : i64
    llvm.cond_br %627, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %628 = llvm.mlir.constant(0 : index) : i64
    %629 = llvm.mlir.constant(1 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%628 : i64)
  ^bb84(%631: i64):  // 2 preds: ^bb83, ^bb91
    %632 = llvm.icmp "slt" %631, %629 : i64
    llvm.cond_br %632, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    %635 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%633 : i64)
  ^bb86(%636: i64):  // 2 preds: ^bb85, ^bb90
    %637 = llvm.icmp "slt" %636, %634 : i64
    llvm.cond_br %637, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %638 = llvm.mlir.constant(0 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    %640 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%638 : i64)
  ^bb88(%641: i64):  // 2 preds: ^bb87, ^bb89
    %642 = llvm.icmp "slt" %641, %639 : i64
    llvm.cond_br %642, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %643 = llvm.add %626, %545  : i64
    %644 = llvm.add %631, %548  : i64
    %645 = llvm.add %636, %551  : i64
    %646 = llvm.add %641, %554  : i64
    %647 = llvm.extractvalue %292[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.add %626, %631  : i64
    %649 = llvm.add %648, %636  : i64
    %650 = llvm.add %649, %641  : i64
    %651 = llvm.getelementptr %647[%650] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %652 = llvm.load %651 : !llvm.ptr<f64>
    %653 = llvm.extractvalue %586[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %654 = llvm.add %643, %644  : i64
    %655 = llvm.add %654, %645  : i64
    %656 = llvm.add %655, %646  : i64
    %657 = llvm.getelementptr %653[%656] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %652, %657 : !llvm.ptr<f64>
    %658 = llvm.add %641, %640  : i64
    llvm.br ^bb88(%658 : i64)
  ^bb90:  // pred: ^bb88
    %659 = llvm.add %636, %635  : i64
    llvm.br ^bb86(%659 : i64)
  ^bb91:  // pred: ^bb86
    %660 = llvm.add %631, %630  : i64
    llvm.br ^bb84(%660 : i64)
  ^bb92:  // pred: ^bb84
    %661 = llvm.add %626, %625  : i64
    llvm.br ^bb82(%661 : i64)
  ^bb93:  // pred: ^bb82
    llvm.return %586 : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


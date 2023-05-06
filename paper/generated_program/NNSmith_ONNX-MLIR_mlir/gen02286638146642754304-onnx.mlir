module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @erf(f64) -> f64
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_2(dense<1.4142135623730951> : tensor<f64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f64>
  llvm.mlir.global internal constant @constant_1(dense<1.000000e+00> : tensor<f64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f64>
  llvm.mlir.global internal constant @constant_0(dense<5.000000e-01> : tensor<f64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(-2147483648 : i32) : i32
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x f64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x f64>> to !llvm.ptr<f64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x f64>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x f64>> to !llvm.ptr<f64>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x f64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x f64>> to !llvm.ptr<f64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<i32>
    %40 = llvm.getelementptr %39[%35] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(16 : index) : i64
    %43 = llvm.add %41, %42  : i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.sub %42, %47  : i64
    %49 = llvm.add %46, %48  : i64
    %50 = llvm.urem %49, %42  : i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %54 = llvm.insertvalue %45, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.insertvalue %35, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %59 = llvm.insertvalue %36, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.insertvalue %37, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.insertvalue %36, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.insertvalue %37, %61[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.insertvalue %38, %62[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%64 : i64)
  ^bb1(%67: i64):  // 2 preds: ^bb0, ^bb8
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%69 : i64)
  ^bb3(%72: i64):  // 2 preds: ^bb2, ^bb7
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%74 : i64)
  ^bb5(%77: i64):  // 2 preds: ^bb4, ^bb6
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %79 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.add %67, %72  : i64
    %81 = llvm.add %80, %77  : i64
    %82 = llvm.getelementptr %79[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %13, %82 : !llvm.ptr<i32>
    %83 = llvm.add %77, %76  : i64
    llvm.br ^bb5(%83 : i64)
  ^bb7:  // pred: ^bb5
    %84 = llvm.add %72, %71  : i64
    llvm.br ^bb3(%84 : i64)
  ^bb8:  // pred: ^bb3
    %85 = llvm.add %67, %66  : i64
    llvm.br ^bb1(%85 : i64)
  ^bb9:  // pred: ^bb1
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%86 : i64)
  ^bb10(%89: i64):  // 2 preds: ^bb9, ^bb20
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%91 : i64)
  ^bb12(%94: i64):  // 2 preds: ^bb11, ^bb19
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%96 : i64)
  ^bb14(%99: i64):  // 2 preds: ^bb13, ^bb18
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%101 : i64)
  ^bb16(%104: i64):  // 2 preds: ^bb15, ^bb17
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %106 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.add %89, %94  : i64
    %108 = llvm.add %107, %99  : i64
    %109 = llvm.add %108, %104  : i64
    %110 = llvm.getelementptr %106[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %111 = llvm.load %110 : !llvm.ptr<i32>
    %112 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.add %94, %99  : i64
    %114 = llvm.add %113, %104  : i64
    %115 = llvm.getelementptr %112[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.load %115 : !llvm.ptr<i32>
    %117 = llvm.icmp "sgt" %116, %111 : i32
    %118 = llvm.select %117, %116, %111 : i1, i32
    %119 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.add %94, %99  : i64
    %121 = llvm.add %120, %104  : i64
    %122 = llvm.getelementptr %119[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %118, %122 : !llvm.ptr<i32>
    %123 = llvm.add %104, %103  : i64
    llvm.br ^bb16(%123 : i64)
  ^bb18:  // pred: ^bb16
    %124 = llvm.add %99, %98  : i64
    llvm.br ^bb14(%124 : i64)
  ^bb19:  // pred: ^bb14
    %125 = llvm.add %94, %93  : i64
    llvm.br ^bb12(%125 : i64)
  ^bb20:  // pred: ^bb12
    %126 = llvm.add %89, %88  : i64
    llvm.br ^bb10(%126 : i64)
  ^bb21:  // pred: ^bb10
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.null : !llvm.ptr<f64>
    %132 = llvm.getelementptr %131[%127] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<f64> to i64
    %134 = llvm.mlir.constant(16 : index) : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr<i8>
    %137 = llvm.bitcast %136 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<f64> to i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.sub %134, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.urem %141, %134  : i64
    %143 = llvm.sub %141, %142  : i64
    %144 = llvm.inttoptr %143 : i64 to !llvm.ptr<f64>
    %145 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %146 = llvm.insertvalue %137, %145[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.insertvalue %127, %149[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.insertvalue %128, %150[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.insertvalue %129, %151[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.insertvalue %128, %152[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.insertvalue %129, %153[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.insertvalue %130, %154[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%156 : i64)
  ^bb22(%159: i64):  // 2 preds: ^bb21, ^bb29
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%161 : i64)
  ^bb24(%164: i64):  // 2 preds: ^bb23, ^bb28
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%166 : i64)
  ^bb26(%169: i64):  // 2 preds: ^bb25, ^bb27
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %171 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.add %159, %164  : i64
    %173 = llvm.add %172, %169  : i64
    %174 = llvm.getelementptr %171[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.sitofp %175 : i32 to f64
    %177 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.add %159, %164  : i64
    %179 = llvm.add %178, %169  : i64
    %180 = llvm.getelementptr %177[%179] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %176, %180 : !llvm.ptr<f64>
    %181 = llvm.add %169, %168  : i64
    llvm.br ^bb26(%181 : i64)
  ^bb28:  // pred: ^bb26
    %182 = llvm.add %164, %163  : i64
    llvm.br ^bb24(%182 : i64)
  ^bb29:  // pred: ^bb24
    %183 = llvm.add %159, %158  : i64
    llvm.br ^bb22(%183 : i64)
  ^bb30:  // pred: ^bb22
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.null : !llvm.ptr<f64>
    %189 = llvm.getelementptr %188[%184] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<f64> to i64
    %191 = llvm.mlir.constant(16 : index) : i64
    %192 = llvm.add %190, %191  : i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr<i8>
    %194 = llvm.bitcast %193 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<f64> to i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.sub %191, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.urem %198, %191  : i64
    %200 = llvm.sub %198, %199  : i64
    %201 = llvm.inttoptr %200 : i64 to !llvm.ptr<f64>
    %202 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %203 = llvm.insertvalue %194, %202[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %207 = llvm.insertvalue %184, %206[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %208 = llvm.insertvalue %185, %207[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.insertvalue %186, %208[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %210 = llvm.insertvalue %185, %209[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.insertvalue %186, %210[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.insertvalue %187, %211[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%213 : i64)
  ^bb31(%216: i64):  // 2 preds: ^bb30, ^bb38
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%218 : i64)
  ^bb33(%221: i64):  // 2 preds: ^bb32, ^bb37
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%223 : i64)
  ^bb35(%226: i64):  // 2 preds: ^bb34, ^bb36
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %228 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %229 = llvm.add %216, %221  : i64
    %230 = llvm.add %229, %226  : i64
    %231 = llvm.getelementptr %228[%230] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %232 = llvm.load %231 : !llvm.ptr<f64>
    %233 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %234 = llvm.load %233 : !llvm.ptr<f64>
    %235 = llvm.fdiv %232, %234  : f64
    %236 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.add %216, %221  : i64
    %238 = llvm.add %237, %226  : i64
    %239 = llvm.getelementptr %236[%238] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %235, %239 : !llvm.ptr<f64>
    %240 = llvm.add %226, %225  : i64
    llvm.br ^bb35(%240 : i64)
  ^bb37:  // pred: ^bb35
    %241 = llvm.add %221, %220  : i64
    llvm.br ^bb33(%241 : i64)
  ^bb38:  // pred: ^bb33
    %242 = llvm.add %216, %215  : i64
    llvm.br ^bb31(%242 : i64)
  ^bb39:  // pred: ^bb31
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.null : !llvm.ptr<f64>
    %248 = llvm.getelementptr %247[%243] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %249 = llvm.ptrtoint %248 : !llvm.ptr<f64> to i64
    %250 = llvm.mlir.constant(16 : index) : i64
    %251 = llvm.add %249, %250  : i64
    %252 = llvm.call @malloc(%251) : (i64) -> !llvm.ptr<i8>
    %253 = llvm.bitcast %252 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %254 = llvm.ptrtoint %253 : !llvm.ptr<f64> to i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.sub %250, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.urem %257, %250  : i64
    %259 = llvm.sub %257, %258  : i64
    %260 = llvm.inttoptr %259 : i64 to !llvm.ptr<f64>
    %261 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %262 = llvm.insertvalue %253, %261[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %263 = llvm.insertvalue %260, %262[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.insertvalue %264, %263[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %266 = llvm.insertvalue %243, %265[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.insertvalue %244, %266[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %268 = llvm.insertvalue %245, %267[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %269 = llvm.insertvalue %244, %268[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %270 = llvm.insertvalue %245, %269[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.insertvalue %246, %270[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%272 : i64)
  ^bb40(%275: i64):  // 2 preds: ^bb39, ^bb47
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%277 : i64)
  ^bb42(%280: i64):  // 2 preds: ^bb41, ^bb46
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%282 : i64)
  ^bb44(%285: i64):  // 2 preds: ^bb43, ^bb45
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %287 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %288 = llvm.add %275, %280  : i64
    %289 = llvm.add %288, %285  : i64
    %290 = llvm.getelementptr %287[%289] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %291 = llvm.load %290 : !llvm.ptr<f64>
    %292 = llvm.call @erf(%291) : (f64) -> f64
    %293 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %294 = llvm.add %275, %280  : i64
    %295 = llvm.add %294, %285  : i64
    %296 = llvm.getelementptr %293[%295] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %292, %296 : !llvm.ptr<f64>
    %297 = llvm.add %285, %284  : i64
    llvm.br ^bb44(%297 : i64)
  ^bb46:  // pred: ^bb44
    %298 = llvm.add %280, %279  : i64
    llvm.br ^bb42(%298 : i64)
  ^bb47:  // pred: ^bb42
    %299 = llvm.add %275, %274  : i64
    llvm.br ^bb40(%299 : i64)
  ^bb48:  // pred: ^bb40
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<f64>
    %305 = llvm.getelementptr %304[%300] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<f64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<f64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<f64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %300, %322[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.insertvalue %301, %323[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %325 = llvm.insertvalue %302, %324[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.insertvalue %301, %325[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.insertvalue %302, %326[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.insertvalue %303, %327[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%329 : i64)
  ^bb49(%332: i64):  // 2 preds: ^bb48, ^bb56
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%334 : i64)
  ^bb51(%337: i64):  // 2 preds: ^bb50, ^bb55
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%339 : i64)
  ^bb53(%342: i64):  // 2 preds: ^bb52, ^bb54
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %344 = llvm.extractvalue %271[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.add %332, %337  : i64
    %346 = llvm.add %345, %342  : i64
    %347 = llvm.getelementptr %344[%346] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %348 = llvm.load %347 : !llvm.ptr<f64>
    %349 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %350 = llvm.load %349 : !llvm.ptr<f64>
    %351 = llvm.fadd %348, %350  : f64
    %352 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.add %332, %337  : i64
    %354 = llvm.add %353, %342  : i64
    %355 = llvm.getelementptr %352[%354] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %351, %355 : !llvm.ptr<f64>
    %356 = llvm.add %342, %341  : i64
    llvm.br ^bb53(%356 : i64)
  ^bb55:  // pred: ^bb53
    %357 = llvm.add %337, %336  : i64
    llvm.br ^bb51(%357 : i64)
  ^bb56:  // pred: ^bb51
    %358 = llvm.add %332, %331  : i64
    llvm.br ^bb49(%358 : i64)
  ^bb57:  // pred: ^bb49
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.null : !llvm.ptr<f64>
    %364 = llvm.getelementptr %363[%359] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<f64> to i64
    %366 = llvm.mlir.constant(16 : index) : i64
    %367 = llvm.add %365, %366  : i64
    %368 = llvm.call @malloc(%367) : (i64) -> !llvm.ptr<i8>
    %369 = llvm.bitcast %368 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %370 = llvm.ptrtoint %369 : !llvm.ptr<f64> to i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.sub %366, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.urem %373, %366  : i64
    %375 = llvm.sub %373, %374  : i64
    %376 = llvm.inttoptr %375 : i64 to !llvm.ptr<f64>
    %377 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %378 = llvm.insertvalue %369, %377[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.insertvalue %376, %378[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.insertvalue %380, %379[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %382 = llvm.insertvalue %359, %381[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %383 = llvm.insertvalue %360, %382[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %384 = llvm.insertvalue %361, %383[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.insertvalue %360, %384[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %386 = llvm.insertvalue %361, %385[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %387 = llvm.insertvalue %362, %386[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%388 : i64)
  ^bb58(%391: i64):  // 2 preds: ^bb57, ^bb65
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%393 : i64)
  ^bb60(%396: i64):  // 2 preds: ^bb59, ^bb64
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%398 : i64)
  ^bb62(%401: i64):  // 2 preds: ^bb61, ^bb63
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %403 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.add %391, %396  : i64
    %405 = llvm.add %404, %401  : i64
    %406 = llvm.getelementptr %403[%405] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %407 = llvm.load %406 : !llvm.ptr<f64>
    %408 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.add %391, %396  : i64
    %410 = llvm.add %409, %401  : i64
    %411 = llvm.getelementptr %408[%410] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %412 = llvm.load %411 : !llvm.ptr<f64>
    %413 = llvm.fmul %407, %412  : f64
    %414 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %415 = llvm.add %391, %396  : i64
    %416 = llvm.add %415, %401  : i64
    %417 = llvm.getelementptr %414[%416] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %413, %417 : !llvm.ptr<f64>
    %418 = llvm.add %401, %400  : i64
    llvm.br ^bb62(%418 : i64)
  ^bb64:  // pred: ^bb62
    %419 = llvm.add %396, %395  : i64
    llvm.br ^bb60(%419 : i64)
  ^bb65:  // pred: ^bb60
    %420 = llvm.add %391, %390  : i64
    llvm.br ^bb58(%420 : i64)
  ^bb66:  // pred: ^bb58
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.null : !llvm.ptr<f64>
    %426 = llvm.getelementptr %425[%421] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<f64> to i64
    %428 = llvm.mlir.constant(16 : index) : i64
    %429 = llvm.add %427, %428  : i64
    %430 = llvm.call @malloc(%429) : (i64) -> !llvm.ptr<i8>
    %431 = llvm.bitcast %430 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<f64> to i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.sub %428, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.urem %435, %428  : i64
    %437 = llvm.sub %435, %436  : i64
    %438 = llvm.inttoptr %437 : i64 to !llvm.ptr<f64>
    %439 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %440 = llvm.insertvalue %431, %439[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %441 = llvm.insertvalue %438, %440[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.insertvalue %442, %441[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %444 = llvm.insertvalue %421, %443[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %445 = llvm.insertvalue %422, %444[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %446 = llvm.insertvalue %423, %445[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %447 = llvm.insertvalue %422, %446[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %448 = llvm.insertvalue %423, %447[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %449 = llvm.insertvalue %424, %448[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%450 : i64)
  ^bb67(%453: i64):  // 2 preds: ^bb66, ^bb74
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb68, ^bb75
  ^bb68:  // pred: ^bb67
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%455 : i64)
  ^bb69(%458: i64):  // 2 preds: ^bb68, ^bb73
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb70, ^bb74
  ^bb70:  // pred: ^bb69
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%460 : i64)
  ^bb71(%463: i64):  // 2 preds: ^bb70, ^bb72
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb72, ^bb73
  ^bb72:  // pred: ^bb71
    %465 = llvm.extractvalue %387[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.add %453, %458  : i64
    %467 = llvm.add %466, %463  : i64
    %468 = llvm.getelementptr %465[%467] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %469 = llvm.load %468 : !llvm.ptr<f64>
    %470 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %471 = llvm.load %470 : !llvm.ptr<f64>
    %472 = llvm.fmul %469, %471  : f64
    %473 = llvm.extractvalue %449[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.add %453, %458  : i64
    %475 = llvm.add %474, %463  : i64
    %476 = llvm.getelementptr %473[%475] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %472, %476 : !llvm.ptr<f64>
    %477 = llvm.add %463, %462  : i64
    llvm.br ^bb71(%477 : i64)
  ^bb73:  // pred: ^bb71
    %478 = llvm.add %458, %457  : i64
    llvm.br ^bb69(%478 : i64)
  ^bb74:  // pred: ^bb69
    %479 = llvm.add %453, %452  : i64
    llvm.br ^bb67(%479 : i64)
  ^bb75:  // pred: ^bb67
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.null : !llvm.ptr<f64>
    %485 = llvm.getelementptr %484[%480] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %486 = llvm.ptrtoint %485 : !llvm.ptr<f64> to i64
    %487 = llvm.mlir.constant(16 : index) : i64
    %488 = llvm.add %486, %487  : i64
    %489 = llvm.call @malloc(%488) : (i64) -> !llvm.ptr<i8>
    %490 = llvm.bitcast %489 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %491 = llvm.ptrtoint %490 : !llvm.ptr<f64> to i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.sub %487, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.urem %494, %487  : i64
    %496 = llvm.sub %494, %495  : i64
    %497 = llvm.inttoptr %496 : i64 to !llvm.ptr<f64>
    %498 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %499 = llvm.insertvalue %490, %498[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %500 = llvm.insertvalue %497, %499[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.insertvalue %501, %500[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %503 = llvm.insertvalue %480, %502[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %504 = llvm.insertvalue %481, %503[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %505 = llvm.insertvalue %482, %504[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %506 = llvm.insertvalue %481, %505[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.insertvalue %482, %506[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.insertvalue %483, %507[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%509 : i64)
  ^bb76(%512: i64):  // 2 preds: ^bb75, ^bb83
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb77, ^bb84
  ^bb77:  // pred: ^bb76
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%514 : i64)
  ^bb78(%517: i64):  // 2 preds: ^bb77, ^bb82
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb79, ^bb83
  ^bb79:  // pred: ^bb78
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%519 : i64)
  ^bb80(%522: i64):  // 2 preds: ^bb79, ^bb81
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb81, ^bb82
  ^bb81:  // pred: ^bb80
    %524 = llvm.extractvalue %449[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %525 = llvm.add %512, %517  : i64
    %526 = llvm.add %525, %522  : i64
    %527 = llvm.getelementptr %524[%526] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %528 = llvm.load %527 : !llvm.ptr<f64>
    %529 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %530 = llvm.add %512, %517  : i64
    %531 = llvm.add %530, %522  : i64
    %532 = llvm.getelementptr %529[%531] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %533 = llvm.load %532 : !llvm.ptr<f64>
    %534 = llvm.fcmp "olt" %528, %533 : f64
    %535 = llvm.select %534, %528, %533 : i1, f64
    %536 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %537 = llvm.add %512, %517  : i64
    %538 = llvm.add %537, %522  : i64
    %539 = llvm.getelementptr %536[%538] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %535, %539 : !llvm.ptr<f64>
    %540 = llvm.add %522, %521  : i64
    llvm.br ^bb80(%540 : i64)
  ^bb82:  // pred: ^bb80
    %541 = llvm.add %517, %516  : i64
    llvm.br ^bb78(%541 : i64)
  ^bb83:  // pred: ^bb78
    %542 = llvm.add %512, %511  : i64
    llvm.br ^bb76(%542 : i64)
  ^bb84:  // pred: ^bb76
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.null : !llvm.ptr<i32>
    %548 = llvm.getelementptr %547[%543] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %549 = llvm.ptrtoint %548 : !llvm.ptr<i32> to i64
    %550 = llvm.mlir.constant(16 : index) : i64
    %551 = llvm.add %549, %550  : i64
    %552 = llvm.call @malloc(%551) : (i64) -> !llvm.ptr<i8>
    %553 = llvm.bitcast %552 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %554 = llvm.ptrtoint %553 : !llvm.ptr<i32> to i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.sub %550, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.urem %557, %550  : i64
    %559 = llvm.sub %557, %558  : i64
    %560 = llvm.inttoptr %559 : i64 to !llvm.ptr<i32>
    %561 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %562 = llvm.insertvalue %553, %561[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %563 = llvm.insertvalue %560, %562[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.mlir.constant(0 : index) : i64
    %565 = llvm.insertvalue %564, %563[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.insertvalue %543, %565[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %567 = llvm.insertvalue %544, %566[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.insertvalue %545, %567[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %569 = llvm.insertvalue %544, %568[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.insertvalue %545, %569[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.insertvalue %546, %570[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.null : !llvm.ptr<i32>
    %574 = llvm.getelementptr %573[%572] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.ptrtoint %574 : !llvm.ptr<i32> to i64
    %576 = llvm.alloca %575 x i32 : (i64) -> !llvm.ptr<i32>
    %577 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %578 = llvm.insertvalue %576, %577[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %579 = llvm.insertvalue %576, %578[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.insertvalue %580, %579[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%582 : i64)
  ^bb85(%585: i64):  // 2 preds: ^bb84, ^bb95
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%587 : i64)
  ^bb87(%590: i64):  // 2 preds: ^bb86, ^bb94
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%592 : i64)
  ^bb89(%595: i64):  // 2 preds: ^bb88, ^bb93
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %597 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %12, %597 : !llvm.ptr<i32>
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%598 : i64)
  ^bb91(%601: i64):  // 2 preds: ^bb90, ^bb92
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %603 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %604 = llvm.add %585, %590  : i64
    %605 = llvm.add %604, %601  : i64
    %606 = llvm.getelementptr %603[%605] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %607 = llvm.load %606 : !llvm.ptr<i32>
    %608 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %609 = llvm.add %585, %601  : i64
    %610 = llvm.add %609, %595  : i64
    %611 = llvm.getelementptr %608[%610] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %612 = llvm.load %611 : !llvm.ptr<i32>
    %613 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %614 = llvm.load %613 : !llvm.ptr<i32>
    %615 = llvm.mul %607, %612  : i32
    %616 = llvm.add %614, %615  : i32
    %617 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %616, %617 : !llvm.ptr<i32>
    %618 = llvm.add %601, %600  : i64
    llvm.br ^bb91(%618 : i64)
  ^bb93:  // pred: ^bb91
    %619 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %620 = llvm.load %619 : !llvm.ptr<i32>
    %621 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %622 = llvm.add %585, %590  : i64
    %623 = llvm.add %622, %595  : i64
    %624 = llvm.getelementptr %621[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %620, %624 : !llvm.ptr<i32>
    %625 = llvm.add %595, %594  : i64
    llvm.br ^bb89(%625 : i64)
  ^bb94:  // pred: ^bb89
    %626 = llvm.add %590, %589  : i64
    llvm.br ^bb87(%626 : i64)
  ^bb95:  // pred: ^bb87
    %627 = llvm.add %585, %584  : i64
    llvm.br ^bb85(%627 : i64)
  ^bb96:  // pred: ^bb85
    %628 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %629 = llvm.insertvalue %508, %628[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %630 = llvm.insertvalue %571, %629[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %630 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %105 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


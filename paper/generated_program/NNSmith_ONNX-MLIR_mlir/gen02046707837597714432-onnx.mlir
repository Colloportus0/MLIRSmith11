module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [8] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @Resize_Size(!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @"om_/Resize"("/Resize") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_floor("floor") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_cubic("cubic") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_half_pixel("half_pixel") {addr_space = 0 : i32, alignment = 16 : i64}
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
  llvm.mlir.global internal constant @constant_2(dense<6.2720088958740234> : tensor<1x1xf64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x f64>>
  llvm.mlir.global internal constant @constant_0(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<f64>, %arg1: !llvm.ptr<f64>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v0_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.insertvalue %arg18, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg23, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %32 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<4 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x f64>>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<1 x array<1 x f64>>> to !llvm.ptr<f64>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.null : !llvm.ptr<f64>
    %61 = llvm.getelementptr %60[%58] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %62 = llvm.ptrtoint %61 : !llvm.ptr<f64> to i64
    %63 = llvm.mlir.constant(16 : index) : i64
    %64 = llvm.add %62, %63  : i64
    %65 = llvm.call @malloc(%64) : (i64) -> !llvm.ptr<i8>
    %66 = llvm.bitcast %65 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<f64> to i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.sub %63, %68  : i64
    %70 = llvm.add %67, %69  : i64
    %71 = llvm.urem %70, %63  : i64
    %72 = llvm.sub %70, %71  : i64
    %73 = llvm.inttoptr %72 : i64 to !llvm.ptr<f64>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.insertvalue %66, %74[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %58, %78[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.insertvalue %59, %79[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%81 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb2
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %86 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.getelementptr %86[%84] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %31, %87 : !llvm.ptr<f64>
    %88 = llvm.add %84, %83  : i64
    llvm.br ^bb1(%88 : i64)
  ^bb3:  // pred: ^bb1
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%89 : i64)
  ^bb4(%92: i64):  // 2 preds: ^bb3, ^bb8
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb5, ^bb9
  ^bb5:  // pred: ^bb4
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%94 : i64)
  ^bb6(%97: i64):  // 2 preds: ^bb5, ^bb7
    %98 = llvm.icmp "slt" %97, %95 : i64
    llvm.cond_br %98, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %99 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<2 x i64>, array<2 x i64>)> 
    %100 = llvm.add %92, %97  : i64
    %101 = llvm.getelementptr %99[%100] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %102 = llvm.load %101 : !llvm.ptr<f64>
    %103 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.getelementptr %103[%92] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %105 = llvm.load %104 : !llvm.ptr<f64>
    %106 = llvm.fadd %105, %102  : f64
    %107 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %107[%92] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %106, %108 : !llvm.ptr<f64>
    %109 = llvm.add %97, %96  : i64
    llvm.br ^bb6(%109 : i64)
  ^bb8:  // pred: ^bb6
    %110 = llvm.add %92, %91  : i64
    llvm.br ^bb4(%110 : i64)
  ^bb9:  // pred: ^bb4
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%111 : i64)
  ^bb10(%114: i64):  // 2 preds: ^bb9, ^bb11
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %116 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %118 = llvm.load %117 : !llvm.ptr<f64>
    %119 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %118, %120 : !llvm.ptr<f64>
    %121 = llvm.add %114, %113  : i64
    llvm.br ^bb10(%121 : i64)
  ^bb12:  // pred: ^bb10
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.null : !llvm.ptr<f64>
    %129 = llvm.getelementptr %128[%127] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<f64> to i64
    %131 = llvm.mlir.constant(16 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<f64> to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %131, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.urem %138, %131  : i64
    %140 = llvm.sub %138, %139  : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr<f64>
    %142 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %122, %146[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %123, %147[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %124, %148[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %125, %149[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %123, %150[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %124, %151[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %125, %152[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %126, %153[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(4 : i64) : i64
    %156 = llvm.call @omTensorCreateUntyped(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.mlir.constant(0 : i64) : i64
    %158 = llvm.extractvalue %154[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.bitcast %158 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %160 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.bitcast %160 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%156, %157, %159, %161) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %162 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%156, %162) : (!llvm.ptr<i8>, i64) -> ()
    %163 = llvm.call @omTensorGetShape(%156) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.call @omTensorGetStrides(%156) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %165 = llvm.mlir.constant(0 : i64) : i64
    %166 = llvm.extractvalue %154[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %163[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %154[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %164[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.mlir.constant(1 : i64) : i64
    %171 = llvm.extractvalue %154[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %163[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.extractvalue %154[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %164[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.mlir.constant(2 : i64) : i64
    %176 = llvm.extractvalue %154[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %163[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %154[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %164[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(3 : i64) : i64
    %181 = llvm.extractvalue %154[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %163[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %154[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %164[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(4 : i64) : i64
    %186 = llvm.call @omTensorCreateUntyped(%185) : (i64) -> !llvm.ptr<i8>
    %187 = llvm.mlir.constant(0 : i64) : i64
    %188 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.bitcast %188 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %190 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.bitcast %190 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%186, %187, %189, %191) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %192 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%186, %192) : (!llvm.ptr<i8>, i64) -> ()
    %193 = llvm.call @omTensorGetShape(%186) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %194 = llvm.call @omTensorGetStrides(%186) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %195 = llvm.mlir.constant(0 : i64) : i64
    %196 = llvm.extractvalue %11[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %193[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %11[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.getelementptr %194[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(1 : i64) : i64
    %201 = llvm.extractvalue %11[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %193[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %11[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %194[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(2 : i64) : i64
    %206 = llvm.extractvalue %11[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.getelementptr %193[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %207 : !llvm.ptr<i64>
    %208 = llvm.extractvalue %11[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.getelementptr %194[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %208, %209 : !llvm.ptr<i64>
    %210 = llvm.mlir.constant(3 : i64) : i64
    %211 = llvm.extractvalue %11[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.getelementptr %193[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %211, %212 : !llvm.ptr<i64>
    %213 = llvm.extractvalue %11[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.getelementptr %194[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %213, %214 : !llvm.ptr<i64>
    %215 = llvm.mlir.constant(1 : i64) : i64
    %216 = llvm.call @omTensorCreateUntyped(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.mlir.constant(0 : i64) : i64
    %218 = llvm.extractvalue %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %220 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.bitcast %220 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%216, %217, %219, %221) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %222 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%216, %222) : (!llvm.ptr<i8>, i64) -> ()
    %223 = llvm.call @omTensorGetShape(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %224 = llvm.call @omTensorGetStrides(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %225 = llvm.mlir.constant(0 : i64) : i64
    %226 = llvm.extractvalue %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %223[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %224[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.mlir.addressof @om_half_pixel : !llvm.ptr<array<10 x i8>>
    %231 = llvm.mlir.constant(0 : i64) : i64
    %232 = llvm.getelementptr %230[%231, %231] : (!llvm.ptr<array<10 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %233 = llvm.mlir.constant(-7.500000e-01 : f64) : f64
    %234 = llvm.mlir.constant(0 : si64) : i64
    %235 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %236 = llvm.mlir.addressof @om_cubic : !llvm.ptr<array<5 x i8>>
    %237 = llvm.mlir.constant(0 : i64) : i64
    %238 = llvm.getelementptr %236[%237, %237] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %239 = llvm.mlir.addressof @om_floor : !llvm.ptr<array<5 x i8>>
    %240 = llvm.mlir.constant(0 : i64) : i64
    %241 = llvm.getelementptr %239[%240, %240] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %242 = llvm.mlir.addressof @"om_/Resize" : !llvm.ptr<array<7 x i8>>
    %243 = llvm.mlir.constant(0 : i64) : i64
    %244 = llvm.getelementptr %242[%243, %243] : (!llvm.ptr<array<7 x i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.call @Resize_Size(%156, %186, %216, %232, %233, %234, %235, %238, %241, %244) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(4 : index) : i64
    %253 = llvm.mlir.null : !llvm.ptr<i1>
    %254 = llvm.getelementptr %253[%252] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i1> to i64
    %256 = llvm.mlir.constant(16 : index) : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.call @malloc(%257) : (i64) -> !llvm.ptr<i8>
    %259 = llvm.bitcast %258 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i1> to i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.sub %256, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.urem %263, %256  : i64
    %265 = llvm.sub %263, %264  : i64
    %266 = llvm.inttoptr %265 : i64 to !llvm.ptr<i1>
    %267 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %268 = llvm.insertvalue %259, %267[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.insertvalue %270, %269[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %246, %272[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %247, %273[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %248, %274[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %251, %275[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %248, %277[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %249, %278[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%280 : i64)
  ^bb13(%283: i64):  // 2 preds: ^bb12, ^bb23
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%285 : i64)
  ^bb15(%288: i64):  // 2 preds: ^bb14, ^bb22
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%290 : i64)
  ^bb17(%293: i64):  // 2 preds: ^bb16, ^bb21
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%295 : i64)
  ^bb19(%298: i64):  // 2 preds: ^bb18, ^bb20
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %300 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mul %283, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %288, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mul %293, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.add %308, %298  : i64
    %310 = llvm.getelementptr %300[%309] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %311 = llvm.load %310 : !llvm.ptr<f64>
    %312 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%30] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %314 = llvm.load %313 : !llvm.ptr<f64>
    %315 = llvm.fcmp "olt" %311, %314 : f64
    %316 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mul %283, %317  : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mul %288, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mul %293, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.add %324, %298  : i64
    %326 = llvm.getelementptr %316[%325] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %315, %326 : !llvm.ptr<i1>
    %327 = llvm.add %298, %297  : i64
    llvm.br ^bb19(%327 : i64)
  ^bb21:  // pred: ^bb19
    %328 = llvm.add %293, %292  : i64
    llvm.br ^bb17(%328 : i64)
  ^bb22:  // pred: ^bb17
    %329 = llvm.add %288, %287  : i64
    llvm.br ^bb15(%329 : i64)
  ^bb23:  // pred: ^bb15
    %330 = llvm.add %283, %282  : i64
    llvm.br ^bb13(%330 : i64)
  ^bb24:  // pred: ^bb13
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(8 : index) : i64
    %338 = llvm.mlir.constant(8 : index) : i64
    %339 = llvm.mlir.null : !llvm.ptr<i32>
    %340 = llvm.getelementptr %339[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.ptrtoint %340 : !llvm.ptr<i32> to i64
    %342 = llvm.mlir.constant(16 : index) : i64
    %343 = llvm.add %341, %342  : i64
    %344 = llvm.call @malloc(%343) : (i64) -> !llvm.ptr<i8>
    %345 = llvm.bitcast %344 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i32> to i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.sub %342, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.urem %349, %342  : i64
    %351 = llvm.sub %349, %350  : i64
    %352 = llvm.inttoptr %351 : i64 to !llvm.ptr<i32>
    %353 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %354 = llvm.insertvalue %345, %353[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %352, %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.insertvalue %356, %355[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %333, %359[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %337, %361[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %336, %362[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %334, %363[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %335, %364[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%366 : i64)
  ^bb25(%369: i64):  // 2 preds: ^bb24, ^bb35
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%371 : i64)
  ^bb27(%374: i64):  // 2 preds: ^bb26, ^bb34
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%376 : i64)
  ^bb29(%379: i64):  // 2 preds: ^bb28, ^bb33
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%381 : i64)
  ^bb31(%384: i64):  // 2 preds: ^bb30, ^bb32
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %386 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %369, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %374, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mul %30, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.add %394, %384  : i64
    %396 = llvm.getelementptr %386[%395] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %397 = llvm.load %396 : !llvm.ptr<i1>
    %398 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %399 = llvm.add %374, %30  : i64
    %400 = llvm.add %399, %30  : i64
    %401 = llvm.getelementptr %398[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %402 = llvm.load %401 : !llvm.ptr<i32>
    %403 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mul %379, %404  : i64
    %406 = llvm.add %405, %384  : i64
    %407 = llvm.getelementptr %403[%406] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %408 = llvm.load %407 : !llvm.ptr<i32>
    %409 = llvm.select %397, %402, %408 : i1, i32
    %410 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.mlir.constant(8 : index) : i64
    %412 = llvm.mul %369, %411  : i64
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mul %374, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %379, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.add %418, %384  : i64
    %420 = llvm.getelementptr %410[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %409, %420 : !llvm.ptr<i32>
    %421 = llvm.add %384, %383  : i64
    llvm.br ^bb31(%421 : i64)
  ^bb33:  // pred: ^bb31
    %422 = llvm.add %379, %378  : i64
    llvm.br ^bb29(%422 : i64)
  ^bb34:  // pred: ^bb29
    %423 = llvm.add %374, %373  : i64
    llvm.br ^bb27(%423 : i64)
  ^bb35:  // pred: ^bb27
    %424 = llvm.add %369, %368  : i64
    llvm.br ^bb25(%424 : i64)
  ^bb36:  // pred: ^bb25
    %425 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %426 = llvm.extractvalue %365[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %426, %425[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.insertvalue %427, %428[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.mlir.constant(8 : index) : i64
    %433 = llvm.insertvalue %432, %431[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.insertvalue %434, %433[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %437 = llvm.insertvalue %154, %436[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %438 = llvm.insertvalue %435, %437[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %438 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v0_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %21 = llvm.extractvalue %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.extractvalue %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.extractvalue %20[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.extractvalue %20[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.extractvalue %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.extractvalue %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %24, %25, %26, %27, %28, %29) : (!llvm.ptr<f64>, !llvm.ptr<f64>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %30, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %70, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %0[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<i8>>
    %74 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %76 = llvm.call @omTensorGetDataPtr(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.insertvalue %77, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %83[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.getelementptr %82[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %83[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %104, %74 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %74) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %105 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %106 = llvm.extractvalue %105[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %107 = llvm.extractvalue %105[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %108 = llvm.mlir.constant(2 : i64) : i64
    %109 = llvm.mlir.constant(16 : i64) : i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(4 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %106[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %106[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %106[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %106[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %120[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %106[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %121[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.extractvalue %106[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %120[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %106[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %121[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(3 : i64) : i64
    %138 = llvm.extractvalue %106[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %120[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %106[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %121[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(0 : i64) : i64
    %143 = llvm.getelementptr %111[%142] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %143 : !llvm.ptr<ptr<i8>>
    %144 = llvm.mlir.constant(1 : i64) : i64
    %145 = llvm.call @omTensorCreateUntyped(%144) : (i64) -> !llvm.ptr<i8>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.extractvalue %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.bitcast %147 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %149 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.bitcast %149 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%145, %146, %148, %150) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %151 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%145, %151) : (!llvm.ptr<i8>, i64) -> ()
    %152 = llvm.call @omTensorGetShape(%145) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %153 = llvm.call @omTensorGetStrides(%145) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %154 = llvm.mlir.constant(0 : i64) : i64
    %155 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.getelementptr %152[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %107[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.getelementptr %153[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(1 : i64) : i64
    %160 = llvm.getelementptr %111[%159] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %145, %160 : !llvm.ptr<ptr<i8>>
    %161 = llvm.call @omTensorListCreate(%111, %108, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %161 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<200 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<200 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


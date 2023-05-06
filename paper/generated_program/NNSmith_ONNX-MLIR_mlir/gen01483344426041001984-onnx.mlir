module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 5 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 5 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<4> : tensor<1x1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_0(dense<4.000000e+00> : tensor<1x1x1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x f32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(2147483647 : i32) : i32
    %26 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x f32>>>>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x f32>>>>> to !llvm.ptr<f32>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>>
    %50 = llvm.bitcast %49 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %77 = llvm.bitcast %76 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %79 = llvm.insertvalue %77, %78[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.null : !llvm.ptr<i32>
    %105 = llvm.getelementptr %104[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.mlir.constant(16 : index) : i64
    %108 = llvm.add %106, %107  : i64
    %109 = llvm.call @malloc(%108) : (i64) -> !llvm.ptr<i8>
    %110 = llvm.bitcast %109 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %111 = llvm.ptrtoint %110 : !llvm.ptr<i32> to i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.sub %107, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.urem %114, %107  : i64
    %116 = llvm.sub %114, %115  : i64
    %117 = llvm.inttoptr %116 : i64 to !llvm.ptr<i32>
    %118 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %119 = llvm.insertvalue %110, %118[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %117, %119[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.insertvalue %121, %120[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %99, %122[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %100, %123[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %101, %124[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %102, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %100, %126[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %101, %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %102, %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%131 : i64)
  ^bb1(%134: i64):  // 2 preds: ^bb0, ^bb11
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%136 : i64)
  ^bb3(%139: i64):  // 2 preds: ^bb2, ^bb10
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%141 : i64)
  ^bb5(%144: i64):  // 2 preds: ^bb4, ^bb9
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%146 : i64)
  ^bb7(%149: i64):  // 2 preds: ^bb6, ^bb8
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %151 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.add %134, %139  : i64
    %153 = llvm.add %152, %144  : i64
    %154 = llvm.add %153, %149  : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %25, %155 : !llvm.ptr<i32>
    %156 = llvm.add %149, %148  : i64
    llvm.br ^bb7(%156 : i64)
  ^bb9:  // pred: ^bb7
    %157 = llvm.add %144, %143  : i64
    llvm.br ^bb5(%157 : i64)
  ^bb10:  // pred: ^bb5
    %158 = llvm.add %139, %138  : i64
    llvm.br ^bb3(%158 : i64)
  ^bb11:  // pred: ^bb3
    %159 = llvm.add %134, %133  : i64
    llvm.br ^bb1(%159 : i64)
  ^bb12:  // pred: ^bb1
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%160 : i64)
  ^bb13(%163: i64):  // 2 preds: ^bb12, ^bb26
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%165 : i64)
  ^bb15(%168: i64):  // 2 preds: ^bb14, ^bb25
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%170 : i64)
  ^bb17(%173: i64):  // 2 preds: ^bb16, ^bb24
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%175 : i64)
  ^bb19(%178: i64):  // 2 preds: ^bb18, ^bb23
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%180 : i64)
  ^bb21(%183: i64):  // 2 preds: ^bb20, ^bb22
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %185 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %186 = llvm.add %163, %168  : i64
    %187 = llvm.add %186, %173  : i64
    %188 = llvm.add %187, %178  : i64
    %189 = llvm.add %188, %183  : i64
    %190 = llvm.getelementptr %185[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.add %163, %168  : i64
    %194 = llvm.add %193, %173  : i64
    %195 = llvm.add %194, %183  : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.icmp "slt" %197, %191 : i32
    %199 = llvm.select %198, %197, %191 : i1, i32
    %200 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.add %163, %168  : i64
    %202 = llvm.add %201, %173  : i64
    %203 = llvm.add %202, %183  : i64
    %204 = llvm.getelementptr %200[%203] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %204 : !llvm.ptr<i32>
    %205 = llvm.add %183, %182  : i64
    llvm.br ^bb21(%205 : i64)
  ^bb23:  // pred: ^bb21
    %206 = llvm.add %178, %177  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb24:  // pred: ^bb19
    %207 = llvm.add %173, %172  : i64
    llvm.br ^bb17(%207 : i64)
  ^bb25:  // pred: ^bb17
    %208 = llvm.add %168, %167  : i64
    llvm.br ^bb15(%208 : i64)
  ^bb26:  // pred: ^bb15
    %209 = llvm.add %163, %162  : i64
    llvm.br ^bb13(%209 : i64)
  ^bb27:  // pred: ^bb13
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(5 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(5 : index) : i64
    %216 = llvm.mlir.null : !llvm.ptr<i32>
    %217 = llvm.getelementptr %216[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<i32> to i64
    %219 = llvm.mlir.constant(16 : index) : i64
    %220 = llvm.add %218, %219  : i64
    %221 = llvm.call @malloc(%220) : (i64) -> !llvm.ptr<i8>
    %222 = llvm.bitcast %221 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i32> to i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.sub %219, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.urem %226, %219  : i64
    %228 = llvm.sub %226, %227  : i64
    %229 = llvm.inttoptr %228 : i64 to !llvm.ptr<i32>
    %230 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %231 = llvm.insertvalue %222, %230[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %210, %234[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %211, %235[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %212, %236[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %213, %237[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %211, %238[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %212, %239[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %213, %240[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %214, %241[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%243 : i64)
  ^bb28(%246: i64):  // 2 preds: ^bb27, ^bb38
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%248 : i64)
  ^bb30(%251: i64):  // 2 preds: ^bb29, ^bb37
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%253 : i64)
  ^bb32(%256: i64):  // 2 preds: ^bb31, ^bb36
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%258 : i64)
  ^bb34(%261: i64):  // 2 preds: ^bb33, ^bb35
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %263 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.add %246, %251  : i64
    %265 = llvm.add %264, %256  : i64
    %266 = llvm.add %265, %261  : i64
    %267 = llvm.getelementptr %263[%266] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %268 = llvm.load %267 : !llvm.ptr<i32>
    %269 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(5 : index) : i64
    %271 = llvm.mul %246, %270  : i64
    %272 = llvm.add %271, %251  : i64
    %273 = llvm.add %272, %256  : i64
    %274 = llvm.add %273, %261  : i64
    %275 = llvm.getelementptr %269[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %268, %275 : !llvm.ptr<i32>
    %276 = llvm.add %261, %260  : i64
    llvm.br ^bb34(%276 : i64)
  ^bb36:  // pred: ^bb34
    %277 = llvm.add %256, %255  : i64
    llvm.br ^bb32(%277 : i64)
  ^bb37:  // pred: ^bb32
    %278 = llvm.add %251, %250  : i64
    llvm.br ^bb30(%278 : i64)
  ^bb38:  // pred: ^bb30
    %279 = llvm.add %246, %245  : i64
    llvm.br ^bb28(%279 : i64)
  ^bb39:  // pred: ^bb28
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%280 : i64)
  ^bb40(%283: i64):  // 2 preds: ^bb39, ^bb50
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%285 : i64)
  ^bb42(%288: i64):  // 2 preds: ^bb41, ^bb49
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%290 : i64)
  ^bb44(%293: i64):  // 2 preds: ^bb43, ^bb48
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%295 : i64)
  ^bb46(%298: i64):  // 2 preds: ^bb45, ^bb47
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.add %288, %300  : i64
    %302 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.add %283, %288  : i64
    %304 = llvm.add %303, %293  : i64
    %305 = llvm.add %304, %298  : i64
    %306 = llvm.getelementptr %302[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.load %306 : !llvm.ptr<i32>
    %308 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(5 : index) : i64
    %310 = llvm.mul %283, %309  : i64
    %311 = llvm.add %310, %301  : i64
    %312 = llvm.add %311, %293  : i64
    %313 = llvm.add %312, %298  : i64
    %314 = llvm.getelementptr %308[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %307, %314 : !llvm.ptr<i32>
    %315 = llvm.add %298, %297  : i64
    llvm.br ^bb46(%315 : i64)
  ^bb48:  // pred: ^bb46
    %316 = llvm.add %293, %292  : i64
    llvm.br ^bb44(%316 : i64)
  ^bb49:  // pred: ^bb44
    %317 = llvm.add %288, %287  : i64
    llvm.br ^bb42(%317 : i64)
  ^bb50:  // pred: ^bb42
    %318 = llvm.add %283, %282  : i64
    llvm.br ^bb40(%318 : i64)
  ^bb51:  // pred: ^bb40
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%319 : i64)
  ^bb52(%322: i64):  // 2 preds: ^bb51, ^bb62
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%324 : i64)
  ^bb54(%327: i64):  // 2 preds: ^bb53, ^bb61
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%329 : i64)
  ^bb56(%332: i64):  // 2 preds: ^bb55, ^bb60
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%334 : i64)
  ^bb58(%337: i64):  // 2 preds: ^bb57, ^bb59
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.add %327, %339  : i64
    %341 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.add %322, %327  : i64
    %343 = llvm.add %342, %332  : i64
    %344 = llvm.add %343, %337  : i64
    %345 = llvm.getelementptr %341[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %346 = llvm.load %345 : !llvm.ptr<i32>
    %347 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(5 : index) : i64
    %349 = llvm.mul %322, %348  : i64
    %350 = llvm.add %349, %340  : i64
    %351 = llvm.add %350, %332  : i64
    %352 = llvm.add %351, %337  : i64
    %353 = llvm.getelementptr %347[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %346, %353 : !llvm.ptr<i32>
    %354 = llvm.add %337, %336  : i64
    llvm.br ^bb58(%354 : i64)
  ^bb60:  // pred: ^bb58
    %355 = llvm.add %332, %331  : i64
    llvm.br ^bb56(%355 : i64)
  ^bb61:  // pred: ^bb56
    %356 = llvm.add %327, %326  : i64
    llvm.br ^bb54(%356 : i64)
  ^bb62:  // pred: ^bb54
    %357 = llvm.add %322, %321  : i64
    llvm.br ^bb52(%357 : i64)
  ^bb63:  // pred: ^bb52
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%358 : i64)
  ^bb64(%361: i64):  // 2 preds: ^bb63, ^bb74
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%363 : i64)
  ^bb66(%366: i64):  // 2 preds: ^bb65, ^bb73
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%368 : i64)
  ^bb68(%371: i64):  // 2 preds: ^bb67, ^bb72
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%373 : i64)
  ^bb70(%376: i64):  // 2 preds: ^bb69, ^bb71
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %378 = llvm.mlir.constant(3 : index) : i64
    %379 = llvm.add %366, %378  : i64
    %380 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.add %361, %366  : i64
    %382 = llvm.add %381, %371  : i64
    %383 = llvm.add %382, %376  : i64
    %384 = llvm.getelementptr %380[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.load %384 : !llvm.ptr<i32>
    %386 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(5 : index) : i64
    %388 = llvm.mul %361, %387  : i64
    %389 = llvm.add %388, %379  : i64
    %390 = llvm.add %389, %371  : i64
    %391 = llvm.add %390, %376  : i64
    %392 = llvm.getelementptr %386[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %385, %392 : !llvm.ptr<i32>
    %393 = llvm.add %376, %375  : i64
    llvm.br ^bb70(%393 : i64)
  ^bb72:  // pred: ^bb70
    %394 = llvm.add %371, %370  : i64
    llvm.br ^bb68(%394 : i64)
  ^bb73:  // pred: ^bb68
    %395 = llvm.add %366, %365  : i64
    llvm.br ^bb66(%395 : i64)
  ^bb74:  // pred: ^bb66
    %396 = llvm.add %361, %360  : i64
    llvm.br ^bb64(%396 : i64)
  ^bb75:  // pred: ^bb64
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%397 : i64)
  ^bb76(%400: i64):  // 2 preds: ^bb75, ^bb86
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%402 : i64)
  ^bb78(%405: i64):  // 2 preds: ^bb77, ^bb85
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%407 : i64)
  ^bb80(%410: i64):  // 2 preds: ^bb79, ^bb84
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%412 : i64)
  ^bb82(%415: i64):  // 2 preds: ^bb81, ^bb83
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.add %405, %417  : i64
    %419 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.add %400, %405  : i64
    %421 = llvm.add %420, %410  : i64
    %422 = llvm.add %421, %415  : i64
    %423 = llvm.getelementptr %419[%422] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.load %423 : !llvm.ptr<i32>
    %425 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(5 : index) : i64
    %427 = llvm.mul %400, %426  : i64
    %428 = llvm.add %427, %418  : i64
    %429 = llvm.add %428, %410  : i64
    %430 = llvm.add %429, %415  : i64
    %431 = llvm.getelementptr %425[%430] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %424, %431 : !llvm.ptr<i32>
    %432 = llvm.add %415, %414  : i64
    llvm.br ^bb82(%432 : i64)
  ^bb84:  // pred: ^bb82
    %433 = llvm.add %410, %409  : i64
    llvm.br ^bb80(%433 : i64)
  ^bb85:  // pred: ^bb80
    %434 = llvm.add %405, %404  : i64
    llvm.br ^bb78(%434 : i64)
  ^bb86:  // pred: ^bb78
    %435 = llvm.add %400, %399  : i64
    llvm.br ^bb76(%435 : i64)
  ^bb87:  // pred: ^bb76
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(5 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(5 : index) : i64
    %442 = llvm.mlir.null : !llvm.ptr<i1>
    %443 = llvm.getelementptr %442[%441] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i1> to i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.add %444, %445  : i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr<i8>
    %448 = llvm.bitcast %447 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %449 = llvm.ptrtoint %448 : !llvm.ptr<i1> to i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.sub %445, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.urem %452, %445  : i64
    %454 = llvm.sub %452, %453  : i64
    %455 = llvm.inttoptr %454 : i64 to !llvm.ptr<i1>
    %456 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %457 = llvm.insertvalue %448, %456[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %455, %457[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.insertvalue %459, %458[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %436, %460[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %437, %461[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %438, %462[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %439, %463[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %437, %464[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %438, %465[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %439, %466[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %440, %467[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%469 : i64)
  ^bb88(%472: i64):  // 2 preds: ^bb87, ^bb98
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(5 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%474 : i64)
  ^bb90(%477: i64):  // 2 preds: ^bb89, ^bb97
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%479 : i64)
  ^bb92(%482: i64):  // 2 preds: ^bb91, ^bb96
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%484 : i64)
  ^bb94(%487: i64):  // 2 preds: ^bb93, ^bb95
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %489 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(5 : index) : i64
    %491 = llvm.mul %472, %490  : i64
    %492 = llvm.add %491, %477  : i64
    %493 = llvm.add %492, %482  : i64
    %494 = llvm.add %493, %487  : i64
    %495 = llvm.getelementptr %489[%494] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %496 = llvm.load %495 : !llvm.ptr<i32>
    %497 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.add %472, %24  : i64
    %499 = llvm.add %498, %482  : i64
    %500 = llvm.add %499, %487  : i64
    %501 = llvm.getelementptr %497[%500] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %502 = llvm.load %501 : !llvm.ptr<i32>
    %503 = llvm.icmp "sgt" %496, %502 : i32
    %504 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(5 : index) : i64
    %506 = llvm.mul %472, %505  : i64
    %507 = llvm.add %506, %477  : i64
    %508 = llvm.add %507, %482  : i64
    %509 = llvm.add %508, %487  : i64
    %510 = llvm.getelementptr %504[%509] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %503, %510 : !llvm.ptr<i1>
    %511 = llvm.add %487, %486  : i64
    llvm.br ^bb94(%511 : i64)
  ^bb96:  // pred: ^bb94
    %512 = llvm.add %482, %481  : i64
    llvm.br ^bb92(%512 : i64)
  ^bb97:  // pred: ^bb92
    %513 = llvm.add %477, %476  : i64
    llvm.br ^bb90(%513 : i64)
  ^bb98:  // pred: ^bb90
    %514 = llvm.add %472, %471  : i64
    llvm.br ^bb88(%514 : i64)
  ^bb99:  // pred: ^bb88
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(5 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(5 : index) : i64
    %521 = llvm.mlir.null : !llvm.ptr<f64>
    %522 = llvm.getelementptr %521[%520] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %523 = llvm.ptrtoint %522 : !llvm.ptr<f64> to i64
    %524 = llvm.mlir.constant(16 : index) : i64
    %525 = llvm.add %523, %524  : i64
    %526 = llvm.call @malloc(%525) : (i64) -> !llvm.ptr<i8>
    %527 = llvm.bitcast %526 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %528 = llvm.ptrtoint %527 : !llvm.ptr<f64> to i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.sub %524, %529  : i64
    %531 = llvm.add %528, %530  : i64
    %532 = llvm.urem %531, %524  : i64
    %533 = llvm.sub %531, %532  : i64
    %534 = llvm.inttoptr %533 : i64 to !llvm.ptr<f64>
    %535 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %536 = llvm.insertvalue %527, %535[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.insertvalue %534, %536[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.insertvalue %538, %537[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.insertvalue %515, %539[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %516, %540[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %517, %541[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %518, %542[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %516, %543[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %517, %544[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %518, %545[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %519, %546[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%548 : i64)
  ^bb100(%551: i64):  // 2 preds: ^bb99, ^bb110
    %552 = llvm.icmp "slt" %551, %549 : i64
    llvm.cond_br %552, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(5 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%553 : i64)
  ^bb102(%556: i64):  // 2 preds: ^bb101, ^bb109
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%558 : i64)
  ^bb104(%561: i64):  // 2 preds: ^bb103, ^bb108
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%563 : i64)
  ^bb106(%566: i64):  // 2 preds: ^bb105, ^bb107
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %568 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.mlir.constant(5 : index) : i64
    %570 = llvm.mul %551, %569  : i64
    %571 = llvm.add %570, %556  : i64
    %572 = llvm.add %571, %561  : i64
    %573 = llvm.add %572, %566  : i64
    %574 = llvm.getelementptr %568[%573] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.load %574 : !llvm.ptr<i32>
    %576 = llvm.sitofp %575 : i32 to f64
    %577 = llvm.extractvalue %547[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.mlir.constant(5 : index) : i64
    %579 = llvm.mul %551, %578  : i64
    %580 = llvm.add %579, %556  : i64
    %581 = llvm.add %580, %561  : i64
    %582 = llvm.add %581, %566  : i64
    %583 = llvm.getelementptr %577[%582] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %576, %583 : !llvm.ptr<f64>
    %584 = llvm.add %566, %565  : i64
    llvm.br ^bb106(%584 : i64)
  ^bb108:  // pred: ^bb106
    %585 = llvm.add %561, %560  : i64
    llvm.br ^bb104(%585 : i64)
  ^bb109:  // pred: ^bb104
    %586 = llvm.add %556, %555  : i64
    llvm.br ^bb102(%586 : i64)
  ^bb110:  // pred: ^bb102
    %587 = llvm.add %551, %550  : i64
    llvm.br ^bb100(%587 : i64)
  ^bb111:  // pred: ^bb100
    %588 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %589 = llvm.insertvalue %48, %588[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %590 = llvm.insertvalue %468, %589[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %591 = llvm.insertvalue %547, %590[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %591 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v2_0"], llvm.emit_c_interface, output_names = ["v8_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(4 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %101[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %102[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(0 : i64) : i64
    %124 = llvm.getelementptr %92[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.mlir.constant(4 : i64) : i64
    %126 = llvm.call @omTensorCreateUntyped(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %130 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.bitcast %130 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%126, %127, %129, %131) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %132 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%126, %132) : (!llvm.ptr<i8>, i64) -> ()
    %133 = llvm.call @omTensorGetShape(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.call @omTensorGetStrides(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %133[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %134[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %133[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %134[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(2 : i64) : i64
    %146 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %133[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %134[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(3 : i64) : i64
    %151 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %133[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %134[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.mlir.constant(1 : i64) : i64
    %156 = llvm.getelementptr %92[%155] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %126, %156 : !llvm.ptr<ptr<i8>>
    %157 = llvm.mlir.constant(4 : i64) : i64
    %158 = llvm.call @omTensorCreateUntyped(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.mlir.constant(1 : i64) : i64
    %160 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.bitcast %160 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %162 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.bitcast %162 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%158, %159, %161, %163) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %164 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%158, %164) : (!llvm.ptr<i8>, i64) -> ()
    %165 = llvm.call @omTensorGetShape(%158) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %166 = llvm.call @omTensorGetStrides(%158) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %167 = llvm.mlir.constant(0 : i64) : i64
    %168 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %165[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %166[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(1 : i64) : i64
    %173 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %165[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %166[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(2 : i64) : i64
    %178 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %165[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %166[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(3 : i64) : i64
    %183 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %165[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.getelementptr %166[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.mlir.constant(2 : i64) : i64
    %188 = llvm.getelementptr %92[%187] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %158, %188 : !llvm.ptr<ptr<i8>>
    %189 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %189 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


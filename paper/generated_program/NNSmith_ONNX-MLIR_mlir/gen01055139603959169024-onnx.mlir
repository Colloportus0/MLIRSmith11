module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [6 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [6 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[[3]], [[5]]]]> : tensor<1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<[6, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[6, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<[[[[20]], [[15]]], [[[25]], [[25]]]]> : tensor<2x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg30, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg31, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg28, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg32, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x i32>>>>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<2 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(4 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %73 = llvm.bitcast %72 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %79 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %80 = llvm.bitcast %79 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.insertvalue %80, %81[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.insertvalue %86, %85[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>>
    %91 = llvm.bitcast %90 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %93 = llvm.insertvalue %91, %92[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.insertvalue %99, %98[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.insertvalue %101, %100[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.insertvalue %103, %102[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.insertvalue %105, %104[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.insertvalue %107, %106[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.insertvalue %109, %108[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.insertvalue %111, %110[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(6 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(12 : index) : i64
    %119 = llvm.mlir.null : !llvm.ptr<i32>
    %120 = llvm.getelementptr %119[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i32> to i64
    %122 = llvm.mlir.constant(16 : index) : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.call @malloc(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i32> to i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.sub %122, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.urem %129, %122  : i64
    %131 = llvm.sub %129, %130  : i64
    %132 = llvm.inttoptr %131 : i64 to !llvm.ptr<i32>
    %133 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %134 = llvm.insertvalue %125, %133[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %132, %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.insertvalue %136, %135[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %113, %137[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %114, %138[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %115, %139[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %116, %140[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %114, %141[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %115, %142[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %116, %143[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %117, %144[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%146 : i64)
  ^bb1(%149: i64):  // 2 preds: ^bb0, ^bb11
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%151 : i64)
  ^bb3(%154: i64):  // 2 preds: ^bb2, ^bb10
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%156 : i64)
  ^bb5(%159: i64):  // 2 preds: ^bb4, ^bb9
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%161 : i64)
  ^bb7(%164: i64):  // 2 preds: ^bb6, ^bb8
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %166 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %149, %167  : i64
    %169 = llvm.add %168, %154  : i64
    %170 = llvm.add %169, %159  : i64
    %171 = llvm.add %170, %164  : i64
    %172 = llvm.getelementptr %166[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.load %172 : !llvm.ptr<i32>
    %174 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %149, %175  : i64
    %177 = llvm.add %176, %154  : i64
    %178 = llvm.add %177, %159  : i64
    %179 = llvm.add %178, %164  : i64
    %180 = llvm.getelementptr %174[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %180 : !llvm.ptr<i32>
    %181 = llvm.add %164, %163  : i64
    llvm.br ^bb7(%181 : i64)
  ^bb9:  // pred: ^bb7
    %182 = llvm.add %159, %158  : i64
    llvm.br ^bb5(%182 : i64)
  ^bb10:  // pred: ^bb5
    %183 = llvm.add %154, %153  : i64
    llvm.br ^bb3(%183 : i64)
  ^bb11:  // pred: ^bb3
    %184 = llvm.add %149, %148  : i64
    llvm.br ^bb1(%184 : i64)
  ^bb12:  // pred: ^bb1
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%185 : i64)
  ^bb13(%188: i64):  // 2 preds: ^bb12, ^bb23
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%190 : i64)
  ^bb15(%193: i64):  // 2 preds: ^bb14, ^bb22
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%195 : i64)
  ^bb17(%198: i64):  // 2 preds: ^bb16, ^bb21
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%200 : i64)
  ^bb19(%203: i64):  // 2 preds: ^bb18, ^bb20
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.add %188, %205  : i64
    %207 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mul %188, %208  : i64
    %210 = llvm.add %209, %193  : i64
    %211 = llvm.add %210, %198  : i64
    %212 = llvm.add %211, %203  : i64
    %213 = llvm.getelementptr %207[%212] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %214 = llvm.load %213 : !llvm.ptr<i32>
    %215 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mul %206, %216  : i64
    %218 = llvm.add %217, %193  : i64
    %219 = llvm.add %218, %198  : i64
    %220 = llvm.add %219, %203  : i64
    %221 = llvm.getelementptr %215[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %214, %221 : !llvm.ptr<i32>
    %222 = llvm.add %203, %202  : i64
    llvm.br ^bb19(%222 : i64)
  ^bb21:  // pred: ^bb19
    %223 = llvm.add %198, %197  : i64
    llvm.br ^bb17(%223 : i64)
  ^bb22:  // pred: ^bb17
    %224 = llvm.add %193, %192  : i64
    llvm.br ^bb15(%224 : i64)
  ^bb23:  // pred: ^bb15
    %225 = llvm.add %188, %187  : i64
    llvm.br ^bb13(%225 : i64)
  ^bb24:  // pred: ^bb13
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%226 : i64)
  ^bb25(%229: i64):  // 2 preds: ^bb24, ^bb35
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%231 : i64)
  ^bb27(%234: i64):  // 2 preds: ^bb26, ^bb34
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%236 : i64)
  ^bb29(%239: i64):  // 2 preds: ^bb28, ^bb33
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%241 : i64)
  ^bb31(%244: i64):  // 2 preds: ^bb30, ^bb32
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.add %229, %246  : i64
    %248 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mul %229, %249  : i64
    %251 = llvm.add %250, %234  : i64
    %252 = llvm.add %251, %239  : i64
    %253 = llvm.add %252, %244  : i64
    %254 = llvm.getelementptr %248[%253] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %255 = llvm.load %254 : !llvm.ptr<i32>
    %256 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mul %247, %257  : i64
    %259 = llvm.add %258, %234  : i64
    %260 = llvm.add %259, %239  : i64
    %261 = llvm.add %260, %244  : i64
    %262 = llvm.getelementptr %256[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %255, %262 : !llvm.ptr<i32>
    %263 = llvm.add %244, %243  : i64
    llvm.br ^bb31(%263 : i64)
  ^bb33:  // pred: ^bb31
    %264 = llvm.add %239, %238  : i64
    llvm.br ^bb29(%264 : i64)
  ^bb34:  // pred: ^bb29
    %265 = llvm.add %234, %233  : i64
    llvm.br ^bb27(%265 : i64)
  ^bb35:  // pred: ^bb27
    %266 = llvm.add %229, %228  : i64
    llvm.br ^bb25(%266 : i64)
  ^bb36:  // pred: ^bb25
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%267 : i64)
  ^bb37(%270: i64):  // 2 preds: ^bb36, ^bb47
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%272 : i64)
  ^bb39(%275: i64):  // 2 preds: ^bb38, ^bb46
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%277 : i64)
  ^bb41(%280: i64):  // 2 preds: ^bb40, ^bb45
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%282 : i64)
  ^bb43(%285: i64):  // 2 preds: ^bb42, ^bb44
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %287 = llvm.mlir.constant(3 : index) : i64
    %288 = llvm.add %270, %287  : i64
    %289 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mul %270, %290  : i64
    %292 = llvm.add %291, %275  : i64
    %293 = llvm.add %292, %280  : i64
    %294 = llvm.add %293, %285  : i64
    %295 = llvm.getelementptr %289[%294] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %296 = llvm.load %295 : !llvm.ptr<i32>
    %297 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mul %288, %298  : i64
    %300 = llvm.add %299, %275  : i64
    %301 = llvm.add %300, %280  : i64
    %302 = llvm.add %301, %285  : i64
    %303 = llvm.getelementptr %297[%302] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %296, %303 : !llvm.ptr<i32>
    %304 = llvm.add %285, %284  : i64
    llvm.br ^bb43(%304 : i64)
  ^bb45:  // pred: ^bb43
    %305 = llvm.add %280, %279  : i64
    llvm.br ^bb41(%305 : i64)
  ^bb46:  // pred: ^bb41
    %306 = llvm.add %275, %274  : i64
    llvm.br ^bb39(%306 : i64)
  ^bb47:  // pred: ^bb39
    %307 = llvm.add %270, %269  : i64
    llvm.br ^bb37(%307 : i64)
  ^bb48:  // pred: ^bb37
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%308 : i64)
  ^bb49(%311: i64):  // 2 preds: ^bb48, ^bb59
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%313 : i64)
  ^bb51(%316: i64):  // 2 preds: ^bb50, ^bb58
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%318 : i64)
  ^bb53(%321: i64):  // 2 preds: ^bb52, ^bb57
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%323 : i64)
  ^bb55(%326: i64):  // 2 preds: ^bb54, ^bb56
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.add %311, %328  : i64
    %330 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mul %311, %331  : i64
    %333 = llvm.add %332, %316  : i64
    %334 = llvm.add %333, %321  : i64
    %335 = llvm.add %334, %326  : i64
    %336 = llvm.getelementptr %330[%335] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.load %336 : !llvm.ptr<i32>
    %338 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %329, %339  : i64
    %341 = llvm.add %340, %316  : i64
    %342 = llvm.add %341, %321  : i64
    %343 = llvm.add %342, %326  : i64
    %344 = llvm.getelementptr %338[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %337, %344 : !llvm.ptr<i32>
    %345 = llvm.add %326, %325  : i64
    llvm.br ^bb55(%345 : i64)
  ^bb57:  // pred: ^bb55
    %346 = llvm.add %321, %320  : i64
    llvm.br ^bb53(%346 : i64)
  ^bb58:  // pred: ^bb53
    %347 = llvm.add %316, %315  : i64
    llvm.br ^bb51(%347 : i64)
  ^bb59:  // pred: ^bb51
    %348 = llvm.add %311, %310  : i64
    llvm.br ^bb49(%348 : i64)
  ^bb60:  // pred: ^bb49
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.null : !llvm.ptr<i64>
    %352 = llvm.getelementptr %351[%349] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %353 = llvm.ptrtoint %352 : !llvm.ptr<i64> to i64
    %354 = llvm.mlir.constant(16 : index) : i64
    %355 = llvm.add %353, %354  : i64
    %356 = llvm.call @malloc(%355) : (i64) -> !llvm.ptr<i8>
    %357 = llvm.bitcast %356 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i64> to i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.sub %354, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.urem %361, %354  : i64
    %363 = llvm.sub %361, %362  : i64
    %364 = llvm.inttoptr %363 : i64 to !llvm.ptr<i64>
    %365 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %366 = llvm.insertvalue %357, %365[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %367 = llvm.insertvalue %364, %366[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.insertvalue %368, %367[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.insertvalue %349, %369[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %350, %370[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(4 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%372 : i64)
  ^bb61(%375: i64):  // 2 preds: ^bb60, ^bb62
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %377 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %378 : !llvm.ptr<i64>
    %379 = llvm.add %375, %374  : i64
    llvm.br ^bb61(%379 : i64)
  ^bb63:  // pred: ^bb61
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.null : !llvm.ptr<i64>
    %383 = llvm.getelementptr %382[%380] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i64> to i64
    %385 = llvm.mlir.constant(16 : index) : i64
    %386 = llvm.add %384, %385  : i64
    %387 = llvm.call @malloc(%386) : (i64) -> !llvm.ptr<i8>
    %388 = llvm.bitcast %387 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %389 = llvm.ptrtoint %388 : !llvm.ptr<i64> to i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.sub %385, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.urem %392, %385  : i64
    %394 = llvm.sub %392, %393  : i64
    %395 = llvm.inttoptr %394 : i64 to !llvm.ptr<i64>
    %396 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %397 = llvm.insertvalue %388, %396[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.insertvalue %395, %397[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.insertvalue %399, %398[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.insertvalue %380, %400[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.insertvalue %381, %401[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(4 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%403 : i64)
  ^bb64(%406: i64):  // 2 preds: ^bb63, ^bb65
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %408 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.getelementptr %408[%406] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %410 = llvm.load %409 : !llvm.ptr<i64>
    %411 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %412 = llvm.load %411 : !llvm.ptr<i64>
    %413 = llvm.mul %410, %412  : i64
    %414 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.getelementptr %414[%406] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %413, %415 : !llvm.ptr<i64>
    %416 = llvm.add %406, %405  : i64
    llvm.br ^bb64(%416 : i64)
  ^bb66:  // pred: ^bb64
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.null : !llvm.ptr<i1>
    %420 = llvm.getelementptr %419[%417] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i1> to i64
    %422 = llvm.mlir.constant(16 : index) : i64
    %423 = llvm.add %421, %422  : i64
    %424 = llvm.call @malloc(%423) : (i64) -> !llvm.ptr<i8>
    %425 = llvm.bitcast %424 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i1> to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %422, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.urem %429, %422  : i64
    %431 = llvm.sub %429, %430  : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr<i1>
    %433 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.insertvalue %417, %437[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.insertvalue %418, %438[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%440 : i64)
  ^bb67(%443: i64):  // 2 preds: ^bb66, ^bb68
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %445 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.getelementptr %445[%443] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %447 = llvm.load %446 : !llvm.ptr<i64>
    %448 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.getelementptr %448[%443] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %450 = llvm.load %449 : !llvm.ptr<i64>
    %451 = llvm.icmp "eq" %447, %450 : i64
    %452 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.getelementptr %452[%443] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %451, %453 : !llvm.ptr<i1>
    %454 = llvm.add %443, %442  : i64
    llvm.br ^bb67(%454 : i64)
  ^bb69:  // pred: ^bb67
    %455 = llvm.mlir.constant(4 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.null : !llvm.ptr<i64>
    %458 = llvm.getelementptr %457[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %459 = llvm.ptrtoint %458 : !llvm.ptr<i64> to i64
    %460 = llvm.mlir.constant(16 : index) : i64
    %461 = llvm.add %459, %460  : i64
    %462 = llvm.call @malloc(%461) : (i64) -> !llvm.ptr<i8>
    %463 = llvm.bitcast %462 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %464 = llvm.ptrtoint %463 : !llvm.ptr<i64> to i64
    %465 = llvm.mlir.constant(1 : index) : i64
    %466 = llvm.sub %460, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.urem %467, %460  : i64
    %469 = llvm.sub %467, %468  : i64
    %470 = llvm.inttoptr %469 : i64 to !llvm.ptr<i64>
    %471 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %472 = llvm.insertvalue %463, %471[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.insertvalue %470, %472[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.insertvalue %474, %473[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %455, %475[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.insertvalue %456, %476[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%478 : i64)
  ^bb70(%481: i64):  // 2 preds: ^bb69, ^bb71
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %483 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.getelementptr %483[%481] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %485 = llvm.load %484 : !llvm.ptr<i1>
    %486 = llvm.extractvalue %371[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %487 = llvm.getelementptr %486[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %488 = llvm.load %487 : !llvm.ptr<i64>
    %489 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.getelementptr %489[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %491 = llvm.load %490 : !llvm.ptr<i64>
    %492 = llvm.select %485, %488, %491 : i1, i64
    %493 = llvm.extractvalue %477[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.getelementptr %493[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %492, %494 : !llvm.ptr<i64>
    %495 = llvm.add %481, %480  : i64
    llvm.br ^bb70(%495 : i64)
  ^bb72:  // pred: ^bb70
    %496 = llvm.mlir.constant(6 : index) : i64
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(12 : index) : i64
    %502 = llvm.mlir.null : !llvm.ptr<i32>
    %503 = llvm.getelementptr %502[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %504 = llvm.ptrtoint %503 : !llvm.ptr<i32> to i64
    %505 = llvm.mlir.constant(16 : index) : i64
    %506 = llvm.add %504, %505  : i64
    %507 = llvm.call @malloc(%506) : (i64) -> !llvm.ptr<i8>
    %508 = llvm.bitcast %507 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %509 = llvm.ptrtoint %508 : !llvm.ptr<i32> to i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.sub %505, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.urem %512, %505  : i64
    %514 = llvm.sub %512, %513  : i64
    %515 = llvm.inttoptr %514 : i64 to !llvm.ptr<i32>
    %516 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %517 = llvm.insertvalue %508, %516[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %515, %517[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.insertvalue %519, %518[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %496, %520[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %497, %521[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %498, %522[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %499, %523[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %497, %524[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %498, %525[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %499, %526[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.insertvalue %500, %527[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(6 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%529 : i64)
  ^bb73(%532: i64):  // 2 preds: ^bb72, ^bb83
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(2 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%534 : i64)
  ^bb75(%537: i64):  // 2 preds: ^bb74, ^bb82
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%539 : i64)
  ^bb77(%542: i64):  // 2 preds: ^bb76, ^bb81
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%544 : i64)
  ^bb79(%547: i64):  // 2 preds: ^bb78, ^bb80
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %549 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mul %532, %550  : i64
    %552 = llvm.add %551, %537  : i64
    %553 = llvm.add %552, %37  : i64
    %554 = llvm.add %553, %37  : i64
    %555 = llvm.getelementptr %549[%554] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %556 = llvm.load %555 : !llvm.ptr<i32>
    %557 = llvm.extractvalue %528[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.mlir.constant(2 : index) : i64
    %559 = llvm.mul %532, %558  : i64
    %560 = llvm.add %559, %537  : i64
    %561 = llvm.add %560, %542  : i64
    %562 = llvm.add %561, %547  : i64
    %563 = llvm.getelementptr %557[%562] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %556, %563 : !llvm.ptr<i32>
    %564 = llvm.add %547, %546  : i64
    llvm.br ^bb79(%564 : i64)
  ^bb81:  // pred: ^bb79
    %565 = llvm.add %542, %541  : i64
    llvm.br ^bb77(%565 : i64)
  ^bb82:  // pred: ^bb77
    %566 = llvm.add %537, %536  : i64
    llvm.br ^bb75(%566 : i64)
  ^bb83:  // pred: ^bb75
    %567 = llvm.add %532, %531  : i64
    llvm.br ^bb73(%567 : i64)
  ^bb84:  // pred: ^bb73
    %568 = llvm.mlir.constant(6 : index) : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(12 : index) : i64
    %574 = llvm.mlir.null : !llvm.ptr<i64>
    %575 = llvm.getelementptr %574[%573] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %576 = llvm.ptrtoint %575 : !llvm.ptr<i64> to i64
    %577 = llvm.mlir.constant(16 : index) : i64
    %578 = llvm.add %576, %577  : i64
    %579 = llvm.call @malloc(%578) : (i64) -> !llvm.ptr<i8>
    %580 = llvm.bitcast %579 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %581 = llvm.ptrtoint %580 : !llvm.ptr<i64> to i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.sub %577, %582  : i64
    %584 = llvm.add %581, %583  : i64
    %585 = llvm.urem %584, %577  : i64
    %586 = llvm.sub %584, %585  : i64
    %587 = llvm.inttoptr %586 : i64 to !llvm.ptr<i64>
    %588 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %589 = llvm.insertvalue %580, %588[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %587, %589[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.insertvalue %591, %590[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %568, %592[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %569, %593[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %570, %594[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %571, %595[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %569, %596[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %570, %597[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %571, %598[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.insertvalue %572, %599[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(6 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%601 : i64)
  ^bb85(%604: i64):  // 2 preds: ^bb84, ^bb95
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(2 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%606 : i64)
  ^bb87(%609: i64):  // 2 preds: ^bb86, ^bb94
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%611 : i64)
  ^bb89(%614: i64):  // 2 preds: ^bb88, ^bb93
    %615 = llvm.icmp "slt" %614, %612 : i64
    llvm.cond_br %615, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%616 : i64)
  ^bb91(%619: i64):  // 2 preds: ^bb90, ^bb92
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %621 = llvm.extractvalue %145[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(2 : index) : i64
    %623 = llvm.mul %604, %622  : i64
    %624 = llvm.add %623, %609  : i64
    %625 = llvm.add %624, %614  : i64
    %626 = llvm.add %625, %619  : i64
    %627 = llvm.getelementptr %621[%626] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %628 = llvm.load %627 : !llvm.ptr<i32>
    %629 = llvm.sext %628 : i32 to i64
    %630 = llvm.extractvalue %600[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.mlir.constant(2 : index) : i64
    %632 = llvm.mul %604, %631  : i64
    %633 = llvm.add %632, %609  : i64
    %634 = llvm.add %633, %614  : i64
    %635 = llvm.add %634, %619  : i64
    %636 = llvm.getelementptr %630[%635] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %629, %636 : !llvm.ptr<i64>
    %637 = llvm.add %619, %618  : i64
    llvm.br ^bb91(%637 : i64)
  ^bb93:  // pred: ^bb91
    %638 = llvm.add %614, %613  : i64
    llvm.br ^bb89(%638 : i64)
  ^bb94:  // pred: ^bb89
    %639 = llvm.add %609, %608  : i64
    llvm.br ^bb87(%639 : i64)
  ^bb95:  // pred: ^bb87
    %640 = llvm.add %604, %603  : i64
    llvm.br ^bb85(%640 : i64)
  ^bb96:  // pred: ^bb85
    %641 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %642 = llvm.insertvalue %528, %641[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %643 = llvm.insertvalue %600, %642[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %643 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.getelementptr %0[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %87 = llvm.load %86 : !llvm.ptr<ptr<i8>>
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %97[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.getelementptr %96[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %97[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %125, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.mlir.constant(16 : i64) : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(4 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %141[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %142[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(3 : i64) : i64
    %159 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %141[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %142[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(0 : i64) : i64
    %164 = llvm.getelementptr %132[%163] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %164 : !llvm.ptr<ptr<i8>>
    %165 = llvm.mlir.constant(4 : i64) : i64
    %166 = llvm.call @omTensorCreateUntyped(%165) : (i64) -> !llvm.ptr<i8>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.bitcast %168 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %170 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.bitcast %170 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%166, %167, %169, %171) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %172 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%166, %172) : (!llvm.ptr<i8>, i64) -> ()
    %173 = llvm.call @omTensorGetShape(%166) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %174 = llvm.call @omTensorGetStrides(%166) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %175 = llvm.mlir.constant(0 : i64) : i64
    %176 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %173[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %174[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(1 : i64) : i64
    %181 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %173[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %174[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(2 : i64) : i64
    %186 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %173[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %174[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(3 : i64) : i64
    %191 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %173[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %174[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(1 : i64) : i64
    %196 = llvm.getelementptr %132[%195] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %166, %196 : !llvm.ptr<ptr<i8>>
    %197 = llvm.call @omTensorListCreate(%132, %129, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %197 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
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


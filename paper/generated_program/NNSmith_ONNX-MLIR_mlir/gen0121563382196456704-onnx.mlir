module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 5] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<[[[[6], [4]]], [[[3], [5]]]]> : tensor<2x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_7(dense<[[[7, 5], [6, 7]]]> : tensor<1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_6(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v7_0", "v5_0"]} {
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
    %36 = llvm.mlir.constant(3 : index) : i64
    %37 = llvm.mlir.constant(1 : i64) : i64
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(4 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(4 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %70 = llvm.bitcast %69 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %71 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.insertvalue %70, %71[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.insertvalue %70, %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.insertvalue %74, %73[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %81 = llvm.bitcast %80 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %83 = llvm.insertvalue %81, %82[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %87 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %88 = llvm.bitcast %87 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.insertvalue %88, %89[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.insertvalue %88, %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.insertvalue %92, %91[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<2 x array<2 x i32>>>>
    %99 = llvm.bitcast %98 : !llvm.ptr<array<1 x array<2 x array<2 x i32>>>> to !llvm.ptr<i32>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.insertvalue %105, %104[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.insertvalue %107, %106[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.insertvalue %109, %108[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.insertvalue %111, %110[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.insertvalue %113, %112[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.insertvalue %115, %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<2 x array<1 x array<2 x array<1 x i32>>>>>
    %118 = llvm.bitcast %117 : !llvm.ptr<array<2 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %119 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %120 = llvm.insertvalue %118, %119[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %118, %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.insertvalue %122, %121[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.insertvalue %124, %123[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.insertvalue %126, %125[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.insertvalue %128, %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.insertvalue %130, %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.insertvalue %132, %131[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.insertvalue %134, %133[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.insertvalue %136, %135[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.insertvalue %138, %137[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(4 : index) : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.constant(8 : index) : i64
    %148 = llvm.mlir.null : !llvm.ptr<i32>
    %149 = llvm.getelementptr %148[%147] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<i32> to i64
    %151 = llvm.mlir.constant(16 : index) : i64
    %152 = llvm.add %150, %151  : i64
    %153 = llvm.call @malloc(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.bitcast %153 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i32> to i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.sub %151, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.urem %158, %151  : i64
    %160 = llvm.sub %158, %159  : i64
    %161 = llvm.inttoptr %160 : i64 to !llvm.ptr<i32>
    %162 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %163 = llvm.insertvalue %154, %162[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %161, %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.insertvalue %165, %164[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %140, %166[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %146, %170[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %145, %171[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %143, %172[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %144, %173[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%175 : i64)
  ^bb1(%178: i64):  // 2 preds: ^bb0, ^bb11
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%180 : i64)
  ^bb3(%183: i64):  // 2 preds: ^bb2, ^bb10
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%185 : i64)
  ^bb5(%188: i64):  // 2 preds: ^bb4, ^bb9
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%190 : i64)
  ^bb7(%193: i64):  // 2 preds: ^bb6, ^bb8
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %195 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mul %183, %196  : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %188, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.add %200, %193  : i64
    %202 = llvm.getelementptr %195[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %203 = llvm.load %202 : !llvm.ptr<i32>
    %204 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %178, %205  : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mul %183, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mul %38, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.add %212, %193  : i64
    %214 = llvm.getelementptr %204[%213] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.load %214 : !llvm.ptr<i32>
    %216 = llvm.icmp "sgt" %203, %215 : i32
    %217 = llvm.select %216, %203, %215 : i1, i32
    %218 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mul %178, %219  : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %183, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %188, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.add %226, %193  : i64
    %228 = llvm.getelementptr %218[%227] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %217, %228 : !llvm.ptr<i32>
    %229 = llvm.add %193, %192  : i64
    llvm.br ^bb7(%229 : i64)
  ^bb9:  // pred: ^bb7
    %230 = llvm.add %188, %187  : i64
    llvm.br ^bb5(%230 : i64)
  ^bb10:  // pred: ^bb5
    %231 = llvm.add %183, %182  : i64
    llvm.br ^bb3(%231 : i64)
  ^bb11:  // pred: ^bb3
    %232 = llvm.add %178, %177  : i64
    llvm.br ^bb1(%232 : i64)
  ^bb12:  // pred: ^bb1
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i64>
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i64> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i64> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i64>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %234, %254[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%256 : i64)
  ^bb13(%259: i64):  // 2 preds: ^bb12, ^bb14
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %261 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %262 : !llvm.ptr<i64>
    %263 = llvm.add %259, %258  : i64
    llvm.br ^bb13(%263 : i64)
  ^bb15:  // pred: ^bb13
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.null : !llvm.ptr<i64>
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i64> to i64
    %269 = llvm.mlir.constant(16 : index) : i64
    %270 = llvm.add %268, %269  : i64
    %271 = llvm.call @malloc(%270) : (i64) -> !llvm.ptr<i8>
    %272 = llvm.bitcast %271 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i64> to i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.sub %269, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.urem %276, %269  : i64
    %278 = llvm.sub %276, %277  : i64
    %279 = llvm.inttoptr %278 : i64 to !llvm.ptr<i64>
    %280 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %272, %280[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %264, %284[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %265, %285[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%287 : i64)
  ^bb16(%290: i64):  // 2 preds: ^bb15, ^bb17
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %292 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.getelementptr %292[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.load %293 : !llvm.ptr<i64>
    %295 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %296 = llvm.load %295 : !llvm.ptr<i64>
    %297 = llvm.mul %294, %296  : i64
    %298 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %297, %299 : !llvm.ptr<i64>
    %300 = llvm.add %290, %289  : i64
    llvm.br ^bb16(%300 : i64)
  ^bb18:  // pred: ^bb16
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.null : !llvm.ptr<i1>
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i1> to i64
    %306 = llvm.mlir.constant(16 : index) : i64
    %307 = llvm.add %305, %306  : i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr<i8>
    %309 = llvm.bitcast %308 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %310 = llvm.ptrtoint %309 : !llvm.ptr<i1> to i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.sub %306, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.urem %313, %306  : i64
    %315 = llvm.sub %313, %314  : i64
    %316 = llvm.inttoptr %315 : i64 to !llvm.ptr<i1>
    %317 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %318 = llvm.insertvalue %309, %317[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %316, %318[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.insertvalue %320, %319[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %301, %321[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(4 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%324 : i64)
  ^bb19(%327: i64):  // 2 preds: ^bb18, ^bb20
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %329 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.icmp "eq" %331, %334 : i64
    %336 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%327] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %335, %337 : !llvm.ptr<i1>
    %338 = llvm.add %327, %326  : i64
    llvm.br ^bb19(%338 : i64)
  ^bb21:  // pred: ^bb19
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.null : !llvm.ptr<i64>
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i64> to i64
    %344 = llvm.mlir.constant(16 : index) : i64
    %345 = llvm.add %343, %344  : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr<i8>
    %347 = llvm.bitcast %346 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i64> to i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.sub %344, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.urem %351, %344  : i64
    %353 = llvm.sub %351, %352  : i64
    %354 = llvm.inttoptr %353 : i64 to !llvm.ptr<i64>
    %355 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %356 = llvm.insertvalue %347, %355[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %354, %356[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.insertvalue %358, %357[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.insertvalue %339, %359[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %340, %360[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%362 : i64)
  ^bb22(%365: i64):  // 2 preds: ^bb21, ^bb23
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %367 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%365] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %369 = llvm.load %368 : !llvm.ptr<i1>
    %370 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.getelementptr %373[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.select %369, %372, %375 : i1, i64
    %377 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %376, %378 : !llvm.ptr<i64>
    %379 = llvm.add %365, %364  : i64
    llvm.br ^bb22(%379 : i64)
  ^bb24:  // pred: ^bb22
    %380 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.getelementptr %380[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %382 = llvm.load %381 : !llvm.ptr<i64>
    %383 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.getelementptr %383[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %385 = llvm.load %384 : !llvm.ptr<i64>
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mul %385, %387  : i64
    %390 = llvm.mul %389, %382  : i64
    %391 = llvm.mul %390, %386  : i64
    %392 = llvm.mlir.null : !llvm.ptr<i32>
    %393 = llvm.getelementptr %392[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i32> to i64
    %395 = llvm.mlir.constant(16 : index) : i64
    %396 = llvm.add %394, %395  : i64
    %397 = llvm.call @malloc(%396) : (i64) -> !llvm.ptr<i8>
    %398 = llvm.bitcast %397 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %399 = llvm.ptrtoint %398 : !llvm.ptr<i32> to i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.sub %395, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.urem %402, %395  : i64
    %404 = llvm.sub %402, %403  : i64
    %405 = llvm.inttoptr %404 : i64 to !llvm.ptr<i32>
    %406 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %407 = llvm.insertvalue %398, %406[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %405, %407[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.insertvalue %409, %408[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %386, %410[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %382, %411[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %387, %412[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %385, %413[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %390, %414[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %389, %415[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %385, %416[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %388, %417[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%419 : i64)
  ^bb25(%422: i64):  // 2 preds: ^bb24, ^bb35
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%424 : i64)
  ^bb27(%426: i64):  // 2 preds: ^bb26, ^bb34
    %427 = llvm.icmp "slt" %426, %382 : i64
    llvm.cond_br %427, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%428 : i64)
  ^bb29(%431: i64):  // 2 preds: ^bb28, ^bb33
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%433 : i64)
  ^bb31(%435: i64):  // 2 preds: ^bb30, ^bb32
    %436 = llvm.icmp "slt" %435, %385 : i64
    llvm.cond_br %436, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %437 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %422, %438  : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %38, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.add %442, %431  : i64
    %444 = llvm.add %443, %38  : i64
    %445 = llvm.getelementptr %437[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %446 = llvm.load %445 : !llvm.ptr<i32>
    %447 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.extractvalue %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mul %422, %448  : i64
    %450 = llvm.extractvalue %418[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mul %426, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.extractvalue %418[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mul %431, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.add %455, %435  : i64
    %457 = llvm.getelementptr %447[%456] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %446, %457 : !llvm.ptr<i32>
    %458 = llvm.add %435, %434  : i64
    llvm.br ^bb31(%458 : i64)
  ^bb33:  // pred: ^bb31
    %459 = llvm.add %431, %430  : i64
    llvm.br ^bb29(%459 : i64)
  ^bb34:  // pred: ^bb29
    %460 = llvm.add %426, %425  : i64
    llvm.br ^bb27(%460 : i64)
  ^bb35:  // pred: ^bb27
    %461 = llvm.add %422, %421  : i64
    llvm.br ^bb25(%461 : i64)
  ^bb36:  // pred: ^bb25
    %462 = llvm.mlir.constant(4 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.null : !llvm.ptr<i64>
    %465 = llvm.getelementptr %464[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %466 = llvm.ptrtoint %465 : !llvm.ptr<i64> to i64
    %467 = llvm.mlir.constant(16 : index) : i64
    %468 = llvm.add %466, %467  : i64
    %469 = llvm.call @malloc(%468) : (i64) -> !llvm.ptr<i8>
    %470 = llvm.bitcast %469 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %471 = llvm.ptrtoint %470 : !llvm.ptr<i64> to i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.sub %467, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.urem %474, %467  : i64
    %476 = llvm.sub %474, %475  : i64
    %477 = llvm.inttoptr %476 : i64 to !llvm.ptr<i64>
    %478 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %479 = llvm.insertvalue %470, %478[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %477, %479[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.insertvalue %481, %480[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.insertvalue %462, %482[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.insertvalue %463, %483[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%485 : i64)
  ^bb37(%488: i64):  // 2 preds: ^bb36, ^bb38
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %490 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.getelementptr %490[%488] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %491 : !llvm.ptr<i64>
    %492 = llvm.add %488, %487  : i64
    llvm.br ^bb37(%492 : i64)
  ^bb39:  // pred: ^bb37
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i64>
    %496 = llvm.getelementptr %495[%493] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i64> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i64> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i64>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.insertvalue %493, %513[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %494, %514[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(4 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%516 : i64)
  ^bb40(%519: i64):  // 2 preds: ^bb39, ^bb41
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %521 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %522 = llvm.getelementptr %521[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %523 = llvm.load %522 : !llvm.ptr<i64>
    %524 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %525 = llvm.load %524 : !llvm.ptr<i64>
    %526 = llvm.mul %523, %525  : i64
    %527 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.getelementptr %527[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %526, %528 : !llvm.ptr<i64>
    %529 = llvm.add %519, %518  : i64
    llvm.br ^bb40(%529 : i64)
  ^bb42:  // pred: ^bb40
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.null : !llvm.ptr<i1>
    %533 = llvm.getelementptr %532[%530] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %534 = llvm.ptrtoint %533 : !llvm.ptr<i1> to i64
    %535 = llvm.mlir.constant(16 : index) : i64
    %536 = llvm.add %534, %535  : i64
    %537 = llvm.call @malloc(%536) : (i64) -> !llvm.ptr<i8>
    %538 = llvm.bitcast %537 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %539 = llvm.ptrtoint %538 : !llvm.ptr<i1> to i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.sub %535, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.urem %542, %535  : i64
    %544 = llvm.sub %542, %543  : i64
    %545 = llvm.inttoptr %544 : i64 to !llvm.ptr<i1>
    %546 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %547 = llvm.insertvalue %538, %546[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.insertvalue %545, %547[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.insertvalue %549, %548[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %551 = llvm.insertvalue %530, %550[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.insertvalue %531, %551[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(4 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%553 : i64)
  ^bb43(%556: i64):  // 2 preds: ^bb42, ^bb44
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %558 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %559 = llvm.getelementptr %558[%556] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %560 = llvm.load %559 : !llvm.ptr<i64>
    %561 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %562 = llvm.getelementptr %561[%556] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %563 = llvm.load %562 : !llvm.ptr<i64>
    %564 = llvm.icmp "eq" %560, %563 : i64
    %565 = llvm.extractvalue %552[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.getelementptr %565[%556] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %564, %566 : !llvm.ptr<i1>
    %567 = llvm.add %556, %555  : i64
    llvm.br ^bb43(%567 : i64)
  ^bb45:  // pred: ^bb43
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.null : !llvm.ptr<i64>
    %571 = llvm.getelementptr %570[%568] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %572 = llvm.ptrtoint %571 : !llvm.ptr<i64> to i64
    %573 = llvm.mlir.constant(16 : index) : i64
    %574 = llvm.add %572, %573  : i64
    %575 = llvm.call @malloc(%574) : (i64) -> !llvm.ptr<i8>
    %576 = llvm.bitcast %575 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %577 = llvm.ptrtoint %576 : !llvm.ptr<i64> to i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.sub %573, %578  : i64
    %580 = llvm.add %577, %579  : i64
    %581 = llvm.urem %580, %573  : i64
    %582 = llvm.sub %580, %581  : i64
    %583 = llvm.inttoptr %582 : i64 to !llvm.ptr<i64>
    %584 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %585 = llvm.insertvalue %576, %584[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.insertvalue %583, %585[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.insertvalue %587, %586[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %589 = llvm.insertvalue %568, %588[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %590 = llvm.insertvalue %569, %589[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.mlir.constant(4 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%591 : i64)
  ^bb46(%594: i64):  // 2 preds: ^bb45, ^bb47
    %595 = llvm.icmp "slt" %594, %592 : i64
    llvm.cond_br %595, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %596 = llvm.extractvalue %552[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.getelementptr %596[%594] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %598 = llvm.load %597 : !llvm.ptr<i1>
    %599 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.getelementptr %599[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %601 = llvm.load %600 : !llvm.ptr<i64>
    %602 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %603 = llvm.getelementptr %602[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %604 = llvm.load %603 : !llvm.ptr<i64>
    %605 = llvm.select %598, %601, %604 : i1, i64
    %606 = llvm.extractvalue %590[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.getelementptr %606[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %605, %607 : !llvm.ptr<i64>
    %608 = llvm.add %594, %593  : i64
    llvm.br ^bb46(%608 : i64)
  ^bb48:  // pred: ^bb46
    %609 = llvm.mlir.constant(2 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(2 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(2 : index) : i64
    %615 = llvm.mlir.constant(4 : index) : i64
    %616 = llvm.mlir.null : !llvm.ptr<i32>
    %617 = llvm.getelementptr %616[%615] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %618 = llvm.ptrtoint %617 : !llvm.ptr<i32> to i64
    %619 = llvm.mlir.constant(16 : index) : i64
    %620 = llvm.add %618, %619  : i64
    %621 = llvm.call @malloc(%620) : (i64) -> !llvm.ptr<i8>
    %622 = llvm.bitcast %621 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %623 = llvm.ptrtoint %622 : !llvm.ptr<i32> to i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.sub %619, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.urem %626, %619  : i64
    %628 = llvm.sub %626, %627  : i64
    %629 = llvm.inttoptr %628 : i64 to !llvm.ptr<i32>
    %630 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %631 = llvm.insertvalue %622, %630[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %629, %631[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.insertvalue %633, %632[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %609, %634[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.insertvalue %610, %635[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.insertvalue %611, %636[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.insertvalue %612, %637[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.insertvalue %614, %638[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.insertvalue %611, %639[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.insertvalue %612, %640[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.insertvalue %613, %641[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.icmp "sgt" %382, %39 : i64
    %644 = llvm.icmp "sgt" %385, %39 : i64
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(2 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%645 : i64)
  ^bb49(%648: i64):  // 2 preds: ^bb48, ^bb59
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%650 : i64)
  ^bb51(%653: i64):  // 2 preds: ^bb50, ^bb58
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %655 = llvm.mlir.constant(0 : index) : i64
    %656 = llvm.mlir.constant(2 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%655 : i64)
  ^bb53(%658: i64):  // 2 preds: ^bb52, ^bb57
    %659 = llvm.icmp "slt" %658, %656 : i64
    llvm.cond_br %659, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %660 = llvm.mlir.constant(0 : index) : i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%660 : i64)
  ^bb55(%663: i64):  // 2 preds: ^bb54, ^bb56
    %664 = llvm.icmp "slt" %663, %661 : i64
    llvm.cond_br %664, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %665 = llvm.select %643, %653, %38 : i1, i64
    %666 = llvm.select %644, %663, %38 : i1, i64
    %667 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.extractvalue %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.mul %648, %668  : i64
    %670 = llvm.extractvalue %418[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.mul %665, %670  : i64
    %672 = llvm.add %669, %671  : i64
    %673 = llvm.extractvalue %418[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.mul %658, %673  : i64
    %675 = llvm.add %672, %674  : i64
    %676 = llvm.add %675, %666  : i64
    %677 = llvm.getelementptr %667[%676] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %678 = llvm.load %677 : !llvm.ptr<i32>
    %679 = llvm.extractvalue %642[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.mlir.constant(2 : index) : i64
    %681 = llvm.mul %648, %680  : i64
    %682 = llvm.mlir.constant(2 : index) : i64
    %683 = llvm.mul %653, %682  : i64
    %684 = llvm.add %681, %683  : i64
    %685 = llvm.add %684, %658  : i64
    %686 = llvm.add %685, %663  : i64
    %687 = llvm.getelementptr %679[%686] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %678, %687 : !llvm.ptr<i32>
    %688 = llvm.add %663, %662  : i64
    llvm.br ^bb55(%688 : i64)
  ^bb57:  // pred: ^bb55
    %689 = llvm.add %658, %657  : i64
    llvm.br ^bb53(%689 : i64)
  ^bb58:  // pred: ^bb53
    %690 = llvm.add %653, %652  : i64
    llvm.br ^bb51(%690 : i64)
  ^bb59:  // pred: ^bb51
    %691 = llvm.add %648, %647  : i64
    llvm.br ^bb49(%691 : i64)
  ^bb60:  // pred: ^bb49
    %692 = llvm.mlir.constant(2 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    %694 = llvm.mlir.constant(2 : index) : i64
    %695 = llvm.mlir.constant(5 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    %697 = llvm.mlir.constant(10 : index) : i64
    %698 = llvm.mlir.constant(10 : index) : i64
    %699 = llvm.mlir.constant(20 : index) : i64
    %700 = llvm.mlir.null : !llvm.ptr<i32>
    %701 = llvm.getelementptr %700[%699] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %702 = llvm.ptrtoint %701 : !llvm.ptr<i32> to i64
    %703 = llvm.mlir.constant(16 : index) : i64
    %704 = llvm.add %702, %703  : i64
    %705 = llvm.call @malloc(%704) : (i64) -> !llvm.ptr<i8>
    %706 = llvm.bitcast %705 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %707 = llvm.ptrtoint %706 : !llvm.ptr<i32> to i64
    %708 = llvm.mlir.constant(1 : index) : i64
    %709 = llvm.sub %703, %708  : i64
    %710 = llvm.add %707, %709  : i64
    %711 = llvm.urem %710, %703  : i64
    %712 = llvm.sub %710, %711  : i64
    %713 = llvm.inttoptr %712 : i64 to !llvm.ptr<i32>
    %714 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %715 = llvm.insertvalue %706, %714[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %716 = llvm.insertvalue %713, %715[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %717 = llvm.mlir.constant(0 : index) : i64
    %718 = llvm.insertvalue %717, %716[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %719 = llvm.insertvalue %692, %718[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %720 = llvm.insertvalue %693, %719[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %721 = llvm.insertvalue %694, %720[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.insertvalue %695, %721[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.insertvalue %698, %722[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %724 = llvm.insertvalue %697, %723[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %725 = llvm.insertvalue %695, %724[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %726 = llvm.insertvalue %696, %725[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %727 = llvm.mlir.constant(0 : index) : i64
    %728 = llvm.mlir.constant(2 : index) : i64
    %729 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%727 : i64)
  ^bb61(%730: i64):  // 2 preds: ^bb60, ^bb71
    %731 = llvm.icmp "slt" %730, %728 : i64
    llvm.cond_br %731, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %732 = llvm.mlir.constant(0 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    %734 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%732 : i64)
  ^bb63(%735: i64):  // 2 preds: ^bb62, ^bb70
    %736 = llvm.icmp "slt" %735, %733 : i64
    llvm.cond_br %736, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %737 = llvm.mlir.constant(0 : index) : i64
    %738 = llvm.mlir.constant(2 : index) : i64
    %739 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%737 : i64)
  ^bb65(%740: i64):  // 2 preds: ^bb64, ^bb69
    %741 = llvm.icmp "slt" %740, %738 : i64
    llvm.cond_br %741, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %742 = llvm.mlir.constant(0 : index) : i64
    %743 = llvm.mlir.constant(1 : index) : i64
    %744 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%742 : i64)
  ^bb67(%745: i64):  // 2 preds: ^bb66, ^bb68
    %746 = llvm.icmp "slt" %745, %743 : i64
    llvm.cond_br %746, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %747 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %748 = llvm.mlir.constant(2 : index) : i64
    %749 = llvm.mul %730, %748  : i64
    %750 = llvm.mlir.constant(2 : index) : i64
    %751 = llvm.mul %735, %750  : i64
    %752 = llvm.add %749, %751  : i64
    %753 = llvm.add %752, %740  : i64
    %754 = llvm.add %753, %745  : i64
    %755 = llvm.getelementptr %747[%754] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %756 = llvm.load %755 : !llvm.ptr<i32>
    %757 = llvm.extractvalue %726[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %758 = llvm.mlir.constant(10 : index) : i64
    %759 = llvm.mul %730, %758  : i64
    %760 = llvm.mlir.constant(10 : index) : i64
    %761 = llvm.mul %735, %760  : i64
    %762 = llvm.add %759, %761  : i64
    %763 = llvm.mlir.constant(5 : index) : i64
    %764 = llvm.mul %740, %763  : i64
    %765 = llvm.add %762, %764  : i64
    %766 = llvm.add %765, %745  : i64
    %767 = llvm.getelementptr %757[%766] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %756, %767 : !llvm.ptr<i32>
    %768 = llvm.add %745, %744  : i64
    llvm.br ^bb67(%768 : i64)
  ^bb69:  // pred: ^bb67
    %769 = llvm.add %740, %739  : i64
    llvm.br ^bb65(%769 : i64)
  ^bb70:  // pred: ^bb65
    %770 = llvm.add %735, %734  : i64
    llvm.br ^bb63(%770 : i64)
  ^bb71:  // pred: ^bb63
    %771 = llvm.add %730, %729  : i64
    llvm.br ^bb61(%771 : i64)
  ^bb72:  // pred: ^bb61
    %772 = llvm.mlir.constant(0 : index) : i64
    %773 = llvm.mlir.constant(2 : index) : i64
    %774 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%772 : i64)
  ^bb73(%775: i64):  // 2 preds: ^bb72, ^bb83
    %776 = llvm.icmp "slt" %775, %773 : i64
    llvm.cond_br %776, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %777 = llvm.mlir.constant(0 : index) : i64
    %778 = llvm.mlir.constant(1 : index) : i64
    %779 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%777 : i64)
  ^bb75(%780: i64):  // 2 preds: ^bb74, ^bb82
    %781 = llvm.icmp "slt" %780, %778 : i64
    llvm.cond_br %781, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %782 = llvm.mlir.constant(0 : index) : i64
    %783 = llvm.mlir.constant(2 : index) : i64
    %784 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%782 : i64)
  ^bb77(%785: i64):  // 2 preds: ^bb76, ^bb81
    %786 = llvm.icmp "slt" %785, %783 : i64
    llvm.cond_br %786, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %787 = llvm.mlir.constant(0 : index) : i64
    %788 = llvm.mlir.constant(1 : index) : i64
    %789 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%787 : i64)
  ^bb79(%790: i64):  // 2 preds: ^bb78, ^bb80
    %791 = llvm.icmp "slt" %790, %788 : i64
    llvm.cond_br %791, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %792 = llvm.mlir.constant(1 : index) : i64
    %793 = llvm.add %790, %792  : i64
    %794 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %795 = llvm.mlir.constant(2 : index) : i64
    %796 = llvm.mul %775, %795  : i64
    %797 = llvm.mlir.constant(2 : index) : i64
    %798 = llvm.mul %780, %797  : i64
    %799 = llvm.add %796, %798  : i64
    %800 = llvm.add %799, %785  : i64
    %801 = llvm.add %800, %790  : i64
    %802 = llvm.getelementptr %794[%801] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %803 = llvm.load %802 : !llvm.ptr<i32>
    %804 = llvm.extractvalue %726[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %805 = llvm.mlir.constant(10 : index) : i64
    %806 = llvm.mul %775, %805  : i64
    %807 = llvm.mlir.constant(10 : index) : i64
    %808 = llvm.mul %780, %807  : i64
    %809 = llvm.add %806, %808  : i64
    %810 = llvm.mlir.constant(5 : index) : i64
    %811 = llvm.mul %785, %810  : i64
    %812 = llvm.add %809, %811  : i64
    %813 = llvm.add %812, %793  : i64
    %814 = llvm.getelementptr %804[%813] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %803, %814 : !llvm.ptr<i32>
    %815 = llvm.add %790, %789  : i64
    llvm.br ^bb79(%815 : i64)
  ^bb81:  // pred: ^bb79
    %816 = llvm.add %785, %784  : i64
    llvm.br ^bb77(%816 : i64)
  ^bb82:  // pred: ^bb77
    %817 = llvm.add %780, %779  : i64
    llvm.br ^bb75(%817 : i64)
  ^bb83:  // pred: ^bb75
    %818 = llvm.add %775, %774  : i64
    llvm.br ^bb73(%818 : i64)
  ^bb84:  // pred: ^bb73
    %819 = llvm.mlir.constant(0 : index) : i64
    %820 = llvm.mlir.constant(2 : index) : i64
    %821 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%819 : i64)
  ^bb85(%822: i64):  // 2 preds: ^bb84, ^bb95
    %823 = llvm.icmp "slt" %822, %820 : i64
    llvm.cond_br %823, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %824 = llvm.mlir.constant(0 : index) : i64
    %825 = llvm.mlir.constant(1 : index) : i64
    %826 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%824 : i64)
  ^bb87(%827: i64):  // 2 preds: ^bb86, ^bb94
    %828 = llvm.icmp "slt" %827, %825 : i64
    llvm.cond_br %828, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %829 = llvm.mlir.constant(0 : index) : i64
    %830 = llvm.mlir.constant(2 : index) : i64
    %831 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%829 : i64)
  ^bb89(%832: i64):  // 2 preds: ^bb88, ^bb93
    %833 = llvm.icmp "slt" %832, %830 : i64
    llvm.cond_br %833, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %834 = llvm.mlir.constant(0 : index) : i64
    %835 = llvm.mlir.constant(1 : index) : i64
    %836 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%834 : i64)
  ^bb91(%837: i64):  // 2 preds: ^bb90, ^bb92
    %838 = llvm.icmp "slt" %837, %835 : i64
    llvm.cond_br %838, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %839 = llvm.mlir.constant(2 : index) : i64
    %840 = llvm.add %837, %839  : i64
    %841 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %842 = llvm.mlir.constant(2 : index) : i64
    %843 = llvm.mul %822, %842  : i64
    %844 = llvm.mlir.constant(2 : index) : i64
    %845 = llvm.mul %827, %844  : i64
    %846 = llvm.add %843, %845  : i64
    %847 = llvm.add %846, %832  : i64
    %848 = llvm.add %847, %837  : i64
    %849 = llvm.getelementptr %841[%848] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %850 = llvm.load %849 : !llvm.ptr<i32>
    %851 = llvm.extractvalue %726[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %852 = llvm.mlir.constant(10 : index) : i64
    %853 = llvm.mul %822, %852  : i64
    %854 = llvm.mlir.constant(10 : index) : i64
    %855 = llvm.mul %827, %854  : i64
    %856 = llvm.add %853, %855  : i64
    %857 = llvm.mlir.constant(5 : index) : i64
    %858 = llvm.mul %832, %857  : i64
    %859 = llvm.add %856, %858  : i64
    %860 = llvm.add %859, %840  : i64
    %861 = llvm.getelementptr %851[%860] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %850, %861 : !llvm.ptr<i32>
    %862 = llvm.add %837, %836  : i64
    llvm.br ^bb91(%862 : i64)
  ^bb93:  // pred: ^bb91
    %863 = llvm.add %832, %831  : i64
    llvm.br ^bb89(%863 : i64)
  ^bb94:  // pred: ^bb89
    %864 = llvm.add %827, %826  : i64
    llvm.br ^bb87(%864 : i64)
  ^bb95:  // pred: ^bb87
    %865 = llvm.add %822, %821  : i64
    llvm.br ^bb85(%865 : i64)
  ^bb96:  // pred: ^bb85
    %866 = llvm.mlir.constant(0 : index) : i64
    %867 = llvm.mlir.constant(2 : index) : i64
    %868 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%866 : i64)
  ^bb97(%869: i64):  // 2 preds: ^bb96, ^bb107
    %870 = llvm.icmp "slt" %869, %867 : i64
    llvm.cond_br %870, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %871 = llvm.mlir.constant(0 : index) : i64
    %872 = llvm.mlir.constant(1 : index) : i64
    %873 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%871 : i64)
  ^bb99(%874: i64):  // 2 preds: ^bb98, ^bb106
    %875 = llvm.icmp "slt" %874, %872 : i64
    llvm.cond_br %875, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %876 = llvm.mlir.constant(0 : index) : i64
    %877 = llvm.mlir.constant(2 : index) : i64
    %878 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%876 : i64)
  ^bb101(%879: i64):  // 2 preds: ^bb100, ^bb105
    %880 = llvm.icmp "slt" %879, %877 : i64
    llvm.cond_br %880, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %881 = llvm.mlir.constant(0 : index) : i64
    %882 = llvm.mlir.constant(2 : index) : i64
    %883 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%881 : i64)
  ^bb103(%884: i64):  // 2 preds: ^bb102, ^bb104
    %885 = llvm.icmp "slt" %884, %882 : i64
    llvm.cond_br %885, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %886 = llvm.mlir.constant(3 : index) : i64
    %887 = llvm.add %884, %886  : i64
    %888 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %889 = llvm.mlir.constant(4 : index) : i64
    %890 = llvm.mul %869, %889  : i64
    %891 = llvm.mlir.constant(4 : index) : i64
    %892 = llvm.mul %874, %891  : i64
    %893 = llvm.add %890, %892  : i64
    %894 = llvm.mlir.constant(2 : index) : i64
    %895 = llvm.mul %879, %894  : i64
    %896 = llvm.add %893, %895  : i64
    %897 = llvm.add %896, %884  : i64
    %898 = llvm.getelementptr %888[%897] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %899 = llvm.load %898 : !llvm.ptr<i32>
    %900 = llvm.extractvalue %726[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %901 = llvm.mlir.constant(10 : index) : i64
    %902 = llvm.mul %869, %901  : i64
    %903 = llvm.mlir.constant(10 : index) : i64
    %904 = llvm.mul %874, %903  : i64
    %905 = llvm.add %902, %904  : i64
    %906 = llvm.mlir.constant(5 : index) : i64
    %907 = llvm.mul %879, %906  : i64
    %908 = llvm.add %905, %907  : i64
    %909 = llvm.add %908, %887  : i64
    %910 = llvm.getelementptr %900[%909] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %899, %910 : !llvm.ptr<i32>
    %911 = llvm.add %884, %883  : i64
    llvm.br ^bb103(%911 : i64)
  ^bb105:  // pred: ^bb103
    %912 = llvm.add %879, %878  : i64
    llvm.br ^bb101(%912 : i64)
  ^bb106:  // pred: ^bb101
    %913 = llvm.add %874, %873  : i64
    llvm.br ^bb99(%913 : i64)
  ^bb107:  // pred: ^bb99
    %914 = llvm.add %869, %868  : i64
    llvm.br ^bb97(%914 : i64)
  ^bb108:  // pred: ^bb97
    %915 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %916 = llvm.insertvalue %642, %915[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %917 = llvm.insertvalue %35, %916[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %918 = llvm.insertvalue %726, %917[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %918 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v7_0", "v5_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.extractvalue %126[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.mlir.constant(24 : i64) : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(4 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %142[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %143[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(2 : i64) : i64
    %155 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %142[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %143[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(3 : i64) : i64
    %160 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %142[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %143[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.getelementptr %133[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.mlir.constant(4 : i64) : i64
    %167 = llvm.call @omTensorCreateUntyped(%166) : (i64) -> !llvm.ptr<i8>
    %168 = llvm.mlir.constant(0 : i64) : i64
    %169 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.bitcast %169 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %171 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.bitcast %171 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%167, %168, %170, %172) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %173 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%167, %173) : (!llvm.ptr<i8>, i64) -> ()
    %174 = llvm.call @omTensorGetShape(%167) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %175 = llvm.call @omTensorGetStrides(%167) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %174[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %175[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.mlir.constant(1 : i64) : i64
    %182 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %174[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %175[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.mlir.constant(2 : i64) : i64
    %187 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %174[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %175[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.mlir.constant(3 : i64) : i64
    %192 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %174[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %175[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.mlir.constant(1 : i64) : i64
    %197 = llvm.getelementptr %133[%196] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %167, %197 : !llvm.ptr<ptr<i8>>
    %198 = llvm.mlir.constant(4 : i64) : i64
    %199 = llvm.call @omTensorCreateUntyped(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.mlir.constant(1 : i64) : i64
    %201 = llvm.extractvalue %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.bitcast %201 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %203 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.bitcast %203 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%199, %200, %202, %204) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %205 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%199, %205) : (!llvm.ptr<i8>, i64) -> ()
    %206 = llvm.call @omTensorGetShape(%199) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %207 = llvm.call @omTensorGetStrides(%199) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %208 = llvm.mlir.constant(0 : i64) : i64
    %209 = llvm.extractvalue %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %206[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.extractvalue %129[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.getelementptr %207[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %211, %212 : !llvm.ptr<i64>
    %213 = llvm.mlir.constant(1 : i64) : i64
    %214 = llvm.extractvalue %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %206[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.extractvalue %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.getelementptr %207[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %216, %217 : !llvm.ptr<i64>
    %218 = llvm.mlir.constant(2 : i64) : i64
    %219 = llvm.extractvalue %129[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %206[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.extractvalue %129[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.getelementptr %207[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %221, %222 : !llvm.ptr<i64>
    %223 = llvm.mlir.constant(3 : i64) : i64
    %224 = llvm.extractvalue %129[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %206[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %207[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(2 : i64) : i64
    %229 = llvm.getelementptr %133[%228] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %199, %229 : !llvm.ptr<ptr<i8>>
    %230 = llvm.call @omTensorListCreate(%133, %130, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %230 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


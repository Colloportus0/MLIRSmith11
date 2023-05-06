module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [6 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[[[[3, 5], [6, 7]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<[[[4, 4], [4, 5]]]> : tensor<1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_4(dense<[6, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[6, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<[[[[-1, -1], [-2, -1]]], [[[-2, -2], [0, 1]]]]> : tensor<2x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v1_0"]} {
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
    %38 = llvm.mlir.constant(0 : i64) : i64
    %39 = llvm.mlir.constant(-1 : i64) : i64
    %40 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(4 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %75 = llvm.bitcast %74 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %81 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %82 = llvm.bitcast %81 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %84 = llvm.insertvalue %82, %83[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(4 : index) : i64
    %89 = llvm.insertvalue %88, %87[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<2 x array<2 x i32>>>>
    %93 = llvm.bitcast %92 : !llvm.ptr<array<1 x array<2 x array<2 x i32>>>> to !llvm.ptr<i32>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %95 = llvm.insertvalue %93, %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.mlir.constant(4 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.insertvalue %103, %102[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.insertvalue %105, %104[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.insertvalue %107, %106[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.insertvalue %109, %108[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %112 = llvm.bitcast %111 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %113 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %114 = llvm.insertvalue %112, %113[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %112, %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.insertvalue %116, %115[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.insertvalue %120, %119[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.insertvalue %122, %121[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.insertvalue %124, %123[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.insertvalue %126, %125[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.insertvalue %128, %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.insertvalue %130, %129[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.insertvalue %132, %131[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.null : !llvm.ptr<i64>
    %139 = llvm.getelementptr %138[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i64> to i64
    %141 = llvm.mlir.constant(16 : index) : i64
    %142 = llvm.add %140, %141  : i64
    %143 = llvm.call @malloc(%142) : (i64) -> !llvm.ptr<i8>
    %144 = llvm.bitcast %143 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %145 = llvm.ptrtoint %144 : !llvm.ptr<i64> to i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.sub %141, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.urem %148, %141  : i64
    %150 = llvm.sub %148, %149  : i64
    %151 = llvm.inttoptr %150 : i64 to !llvm.ptr<i64>
    %152 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %153 = llvm.insertvalue %144, %152[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %154 = llvm.insertvalue %151, %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.insertvalue %134, %156[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %135, %157[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.insertvalue %135, %158[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.insertvalue %136, %159[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%161 : i64)
  ^bb1(%164: i64):  // 2 preds: ^bb0, ^bb5
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%166 : i64)
  ^bb3(%169: i64):  // 2 preds: ^bb2, ^bb4
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %171 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %164, %172  : i64
    %174 = llvm.add %173, %169  : i64
    %175 = llvm.getelementptr %171[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %39, %175 : !llvm.ptr<i64>
    %176 = llvm.add %169, %168  : i64
    llvm.br ^bb3(%176 : i64)
  ^bb5:  // pred: ^bb3
    %177 = llvm.add %164, %163  : i64
    llvm.br ^bb1(%177 : i64)
  ^bb6:  // pred: ^bb1
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%178 : i64)
  ^bb7(%181: i64):  // 2 preds: ^bb6, ^bb14
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%183 : i64)
  ^bb9(%186: i64):  // 2 preds: ^bb8, ^bb13
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%188 : i64)
  ^bb11(%191: i64):  // 2 preds: ^bb10, ^bb12
    %192 = llvm.icmp "slt" %191, %189 : i64
    llvm.cond_br %192, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %193 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mul %181, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %186, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %191  : i64
    %200 = llvm.getelementptr %193[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %201 = llvm.load %200 : !llvm.ptr<i32>
    %202 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %186, %203  : i64
    %205 = llvm.add %204, %191  : i64
    %206 = llvm.getelementptr %202[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %207 = llvm.load %206 : !llvm.ptr<i64>
    %208 = llvm.icmp "slt" %207, %38 : i64
    %209 = llvm.select %208, %38, %207 : i1, i64
    %210 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mul %209, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %186, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.add %215, %191  : i64
    %217 = llvm.getelementptr %210[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.icmp "slt" %201, %218 : i32
    %220 = llvm.select %219, %181, %209 : i1, i64
    %221 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mul %186, %222  : i64
    %224 = llvm.add %223, %191  : i64
    %225 = llvm.getelementptr %221[%224] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %220, %225 : !llvm.ptr<i64>
    %226 = llvm.add %191, %190  : i64
    llvm.br ^bb11(%226 : i64)
  ^bb13:  // pred: ^bb11
    %227 = llvm.add %186, %185  : i64
    llvm.br ^bb9(%227 : i64)
  ^bb14:  // pred: ^bb9
    %228 = llvm.add %181, %180  : i64
    llvm.br ^bb7(%228 : i64)
  ^bb15:  // pred: ^bb7
    %229 = llvm.mlir.constant(6 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.constant(24 : index) : i64
    %237 = llvm.mlir.null : !llvm.ptr<i32>
    %238 = llvm.getelementptr %237[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i32> to i64
    %240 = llvm.mlir.constant(16 : index) : i64
    %241 = llvm.add %239, %240  : i64
    %242 = llvm.call @malloc(%241) : (i64) -> !llvm.ptr<i8>
    %243 = llvm.bitcast %242 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %244 = llvm.ptrtoint %243 : !llvm.ptr<i32> to i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.sub %240, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.urem %247, %240  : i64
    %249 = llvm.sub %247, %248  : i64
    %250 = llvm.inttoptr %249 : i64 to !llvm.ptr<i32>
    %251 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %252 = llvm.insertvalue %243, %251[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %250, %252[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.insertvalue %254, %253[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %229, %255[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %230, %256[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %231, %257[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %232, %258[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %235, %259[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %234, %260[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %232, %261[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %233, %262[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%264 : i64)
  ^bb16(%267: i64):  // 2 preds: ^bb15, ^bb26
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%269 : i64)
  ^bb18(%272: i64):  // 2 preds: ^bb17, ^bb25
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%274 : i64)
  ^bb20(%277: i64):  // 2 preds: ^bb19, ^bb24
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%279 : i64)
  ^bb22(%282: i64):  // 2 preds: ^bb21, ^bb23
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %284 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mul %267, %285  : i64
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mul %272, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mul %277, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.add %292, %282  : i64
    %294 = llvm.getelementptr %284[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mul %267, %297  : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mul %272, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mul %277, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.add %304, %282  : i64
    %306 = llvm.getelementptr %296[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %295, %306 : !llvm.ptr<i32>
    %307 = llvm.add %282, %281  : i64
    llvm.br ^bb22(%307 : i64)
  ^bb24:  // pred: ^bb22
    %308 = llvm.add %277, %276  : i64
    llvm.br ^bb20(%308 : i64)
  ^bb25:  // pred: ^bb20
    %309 = llvm.add %272, %271  : i64
    llvm.br ^bb18(%309 : i64)
  ^bb26:  // pred: ^bb18
    %310 = llvm.add %267, %266  : i64
    llvm.br ^bb16(%310 : i64)
  ^bb27:  // pred: ^bb16
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%311 : i64)
  ^bb28(%314: i64):  // 2 preds: ^bb27, ^bb38
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%316 : i64)
  ^bb30(%319: i64):  // 2 preds: ^bb29, ^bb37
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%321 : i64)
  ^bb32(%324: i64):  // 2 preds: ^bb31, ^bb36
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%326 : i64)
  ^bb34(%329: i64):  // 2 preds: ^bb33, ^bb35
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.add %314, %331  : i64
    %333 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mul %314, %334  : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mul %319, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %324, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.add %341, %329  : i64
    %343 = llvm.getelementptr %333[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %344 = llvm.load %343 : !llvm.ptr<i32>
    %345 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mul %332, %346  : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mul %319, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %324, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.add %353, %329  : i64
    %355 = llvm.getelementptr %345[%354] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %344, %355 : !llvm.ptr<i32>
    %356 = llvm.add %329, %328  : i64
    llvm.br ^bb34(%356 : i64)
  ^bb36:  // pred: ^bb34
    %357 = llvm.add %324, %323  : i64
    llvm.br ^bb32(%357 : i64)
  ^bb37:  // pred: ^bb32
    %358 = llvm.add %319, %318  : i64
    llvm.br ^bb30(%358 : i64)
  ^bb38:  // pred: ^bb30
    %359 = llvm.add %314, %313  : i64
    llvm.br ^bb28(%359 : i64)
  ^bb39:  // pred: ^bb28
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%360 : i64)
  ^bb40(%363: i64):  // 2 preds: ^bb39, ^bb50
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%365 : i64)
  ^bb42(%368: i64):  // 2 preds: ^bb41, ^bb49
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%370 : i64)
  ^bb44(%373: i64):  // 2 preds: ^bb43, ^bb48
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%375 : i64)
  ^bb46(%378: i64):  // 2 preds: ^bb45, ^bb47
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.add %363, %380  : i64
    %382 = llvm.extractvalue %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mul %363, %383  : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mul %368, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mul %373, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.add %390, %378  : i64
    %392 = llvm.getelementptr %382[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %393 = llvm.load %392 : !llvm.ptr<i32>
    %394 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mul %381, %395  : i64
    %397 = llvm.mlir.constant(4 : index) : i64
    %398 = llvm.mul %368, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %373, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.add %402, %378  : i64
    %404 = llvm.getelementptr %394[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %393, %404 : !llvm.ptr<i32>
    %405 = llvm.add %378, %377  : i64
    llvm.br ^bb46(%405 : i64)
  ^bb48:  // pred: ^bb46
    %406 = llvm.add %373, %372  : i64
    llvm.br ^bb44(%406 : i64)
  ^bb49:  // pred: ^bb44
    %407 = llvm.add %368, %367  : i64
    llvm.br ^bb42(%407 : i64)
  ^bb50:  // pred: ^bb42
    %408 = llvm.add %363, %362  : i64
    llvm.br ^bb40(%408 : i64)
  ^bb51:  // pred: ^bb40
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%409 : i64)
  ^bb52(%412: i64):  // 2 preds: ^bb51, ^bb62
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%414 : i64)
  ^bb54(%417: i64):  // 2 preds: ^bb53, ^bb61
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%419 : i64)
  ^bb56(%422: i64):  // 2 preds: ^bb55, ^bb60
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%424 : i64)
  ^bb58(%427: i64):  // 2 preds: ^bb57, ^bb59
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %429 = llvm.mlir.constant(3 : index) : i64
    %430 = llvm.add %412, %429  : i64
    %431 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mul %412, %432  : i64
    %434 = llvm.mlir.constant(4 : index) : i64
    %435 = llvm.mul %417, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mul %422, %437  : i64
    %439 = llvm.add %436, %438  : i64
    %440 = llvm.add %439, %427  : i64
    %441 = llvm.getelementptr %431[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %442 = llvm.load %441 : !llvm.ptr<i32>
    %443 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(4 : index) : i64
    %445 = llvm.mul %430, %444  : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mul %417, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mul %422, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.add %451, %427  : i64
    %453 = llvm.getelementptr %443[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %442, %453 : !llvm.ptr<i32>
    %454 = llvm.add %427, %426  : i64
    llvm.br ^bb58(%454 : i64)
  ^bb60:  // pred: ^bb58
    %455 = llvm.add %422, %421  : i64
    llvm.br ^bb56(%455 : i64)
  ^bb61:  // pred: ^bb56
    %456 = llvm.add %417, %416  : i64
    llvm.br ^bb54(%456 : i64)
  ^bb62:  // pred: ^bb54
    %457 = llvm.add %412, %411  : i64
    llvm.br ^bb52(%457 : i64)
  ^bb63:  // pred: ^bb52
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%458 : i64)
  ^bb64(%461: i64):  // 2 preds: ^bb63, ^bb74
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%463 : i64)
  ^bb66(%466: i64):  // 2 preds: ^bb65, ^bb73
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%468 : i64)
  ^bb68(%471: i64):  // 2 preds: ^bb67, ^bb72
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%473 : i64)
  ^bb70(%476: i64):  // 2 preds: ^bb69, ^bb71
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.add %461, %478  : i64
    %480 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(4 : index) : i64
    %482 = llvm.mul %461, %481  : i64
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %466, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %471, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.add %488, %476  : i64
    %490 = llvm.getelementptr %480[%489] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %491 = llvm.load %490 : !llvm.ptr<i32>
    %492 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mul %479, %493  : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mul %466, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.mlir.constant(2 : index) : i64
    %499 = llvm.mul %471, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.add %500, %476  : i64
    %502 = llvm.getelementptr %492[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %491, %502 : !llvm.ptr<i32>
    %503 = llvm.add %476, %475  : i64
    llvm.br ^bb70(%503 : i64)
  ^bb72:  // pred: ^bb70
    %504 = llvm.add %471, %470  : i64
    llvm.br ^bb68(%504 : i64)
  ^bb73:  // pred: ^bb68
    %505 = llvm.add %466, %465  : i64
    llvm.br ^bb66(%505 : i64)
  ^bb74:  // pred: ^bb66
    %506 = llvm.add %461, %460  : i64
    llvm.br ^bb64(%506 : i64)
  ^bb75:  // pred: ^bb64
    %507 = llvm.mlir.constant(4 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.null : !llvm.ptr<i64>
    %510 = llvm.getelementptr %509[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %511 = llvm.ptrtoint %510 : !llvm.ptr<i64> to i64
    %512 = llvm.mlir.constant(16 : index) : i64
    %513 = llvm.add %511, %512  : i64
    %514 = llvm.call @malloc(%513) : (i64) -> !llvm.ptr<i8>
    %515 = llvm.bitcast %514 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %516 = llvm.ptrtoint %515 : !llvm.ptr<i64> to i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.sub %512, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.urem %519, %512  : i64
    %521 = llvm.sub %519, %520  : i64
    %522 = llvm.inttoptr %521 : i64 to !llvm.ptr<i64>
    %523 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %524 = llvm.insertvalue %515, %523[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %525 = llvm.insertvalue %522, %524[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.insertvalue %526, %525[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.insertvalue %507, %527[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.insertvalue %508, %528[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(4 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%530 : i64)
  ^bb76(%533: i64):  // 2 preds: ^bb75, ^bb77
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %535 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %536 = llvm.getelementptr %535[%533] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %536 : !llvm.ptr<i64>
    %537 = llvm.add %533, %532  : i64
    llvm.br ^bb76(%537 : i64)
  ^bb78:  // pred: ^bb76
    %538 = llvm.mlir.constant(4 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.null : !llvm.ptr<i64>
    %541 = llvm.getelementptr %540[%538] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %542 = llvm.ptrtoint %541 : !llvm.ptr<i64> to i64
    %543 = llvm.mlir.constant(16 : index) : i64
    %544 = llvm.add %542, %543  : i64
    %545 = llvm.call @malloc(%544) : (i64) -> !llvm.ptr<i8>
    %546 = llvm.bitcast %545 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %547 = llvm.ptrtoint %546 : !llvm.ptr<i64> to i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.sub %543, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.urem %550, %543  : i64
    %552 = llvm.sub %550, %551  : i64
    %553 = llvm.inttoptr %552 : i64 to !llvm.ptr<i64>
    %554 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %555 = llvm.insertvalue %546, %554[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %556 = llvm.insertvalue %553, %555[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %557 = llvm.mlir.constant(0 : index) : i64
    %558 = llvm.insertvalue %557, %556[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %559 = llvm.insertvalue %538, %558[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %560 = llvm.insertvalue %539, %559[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%561 : i64)
  ^bb79(%564: i64):  // 2 preds: ^bb78, ^bb80
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %566 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.getelementptr %566[%564] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %568 = llvm.load %567 : !llvm.ptr<i64>
    %569 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %570 = llvm.load %569 : !llvm.ptr<i64>
    %571 = llvm.mul %568, %570  : i64
    %572 = llvm.extractvalue %560[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.getelementptr %572[%564] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %571, %573 : !llvm.ptr<i64>
    %574 = llvm.add %564, %563  : i64
    llvm.br ^bb79(%574 : i64)
  ^bb81:  // pred: ^bb79
    %575 = llvm.mlir.constant(4 : index) : i64
    %576 = llvm.mlir.constant(1 : index) : i64
    %577 = llvm.mlir.null : !llvm.ptr<i1>
    %578 = llvm.getelementptr %577[%575] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %579 = llvm.ptrtoint %578 : !llvm.ptr<i1> to i64
    %580 = llvm.mlir.constant(16 : index) : i64
    %581 = llvm.add %579, %580  : i64
    %582 = llvm.call @malloc(%581) : (i64) -> !llvm.ptr<i8>
    %583 = llvm.bitcast %582 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %584 = llvm.ptrtoint %583 : !llvm.ptr<i1> to i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.sub %580, %585  : i64
    %587 = llvm.add %584, %586  : i64
    %588 = llvm.urem %587, %580  : i64
    %589 = llvm.sub %587, %588  : i64
    %590 = llvm.inttoptr %589 : i64 to !llvm.ptr<i1>
    %591 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %592 = llvm.insertvalue %583, %591[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %593 = llvm.insertvalue %590, %592[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.insertvalue %594, %593[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %596 = llvm.insertvalue %575, %595[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.insertvalue %576, %596[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(4 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%598 : i64)
  ^bb82(%601: i64):  // 2 preds: ^bb81, ^bb83
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %603 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.getelementptr %603[%601] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %605 = llvm.load %604 : !llvm.ptr<i64>
    %606 = llvm.extractvalue %560[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.getelementptr %606[%601] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %608 = llvm.load %607 : !llvm.ptr<i64>
    %609 = llvm.icmp "eq" %605, %608 : i64
    %610 = llvm.extractvalue %597[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.getelementptr %610[%601] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %609, %611 : !llvm.ptr<i1>
    %612 = llvm.add %601, %600  : i64
    llvm.br ^bb82(%612 : i64)
  ^bb84:  // pred: ^bb82
    %613 = llvm.mlir.constant(4 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    %615 = llvm.mlir.null : !llvm.ptr<i64>
    %616 = llvm.getelementptr %615[%613] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %617 = llvm.ptrtoint %616 : !llvm.ptr<i64> to i64
    %618 = llvm.mlir.constant(16 : index) : i64
    %619 = llvm.add %617, %618  : i64
    %620 = llvm.call @malloc(%619) : (i64) -> !llvm.ptr<i8>
    %621 = llvm.bitcast %620 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %622 = llvm.ptrtoint %621 : !llvm.ptr<i64> to i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.sub %618, %623  : i64
    %625 = llvm.add %622, %624  : i64
    %626 = llvm.urem %625, %618  : i64
    %627 = llvm.sub %625, %626  : i64
    %628 = llvm.inttoptr %627 : i64 to !llvm.ptr<i64>
    %629 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %630 = llvm.insertvalue %621, %629[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %631 = llvm.insertvalue %628, %630[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.insertvalue %632, %631[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %634 = llvm.insertvalue %613, %633[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.insertvalue %614, %634[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(4 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%636 : i64)
  ^bb85(%639: i64):  // 2 preds: ^bb84, ^bb86
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %641 = llvm.extractvalue %597[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%639] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %643 = llvm.load %642 : !llvm.ptr<i1>
    %644 = llvm.extractvalue %529[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.getelementptr %644[%639] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %646 = llvm.load %645 : !llvm.ptr<i64>
    %647 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %648 = llvm.getelementptr %647[%639] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %649 = llvm.load %648 : !llvm.ptr<i64>
    %650 = llvm.select %643, %646, %649 : i1, i64
    %651 = llvm.extractvalue %635[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %652 = llvm.getelementptr %651[%639] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %650, %652 : !llvm.ptr<i64>
    %653 = llvm.add %639, %638  : i64
    llvm.br ^bb85(%653 : i64)
  ^bb87:  // pred: ^bb85
    %654 = llvm.mlir.constant(6 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(2 : index) : i64
    %657 = llvm.mlir.constant(2 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    %659 = llvm.mlir.constant(4 : index) : i64
    %660 = llvm.mlir.constant(4 : index) : i64
    %661 = llvm.mlir.constant(24 : index) : i64
    %662 = llvm.mlir.null : !llvm.ptr<i32>
    %663 = llvm.getelementptr %662[%661] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %664 = llvm.ptrtoint %663 : !llvm.ptr<i32> to i64
    %665 = llvm.mlir.constant(16 : index) : i64
    %666 = llvm.add %664, %665  : i64
    %667 = llvm.call @malloc(%666) : (i64) -> !llvm.ptr<i8>
    %668 = llvm.bitcast %667 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %669 = llvm.ptrtoint %668 : !llvm.ptr<i32> to i64
    %670 = llvm.mlir.constant(1 : index) : i64
    %671 = llvm.sub %665, %670  : i64
    %672 = llvm.add %669, %671  : i64
    %673 = llvm.urem %672, %665  : i64
    %674 = llvm.sub %672, %673  : i64
    %675 = llvm.inttoptr %674 : i64 to !llvm.ptr<i32>
    %676 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %677 = llvm.insertvalue %668, %676[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %675, %677[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.mlir.constant(0 : index) : i64
    %680 = llvm.insertvalue %679, %678[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.insertvalue %654, %680[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.insertvalue %655, %681[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.insertvalue %656, %682[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.insertvalue %657, %683[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.insertvalue %660, %684[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %686 = llvm.insertvalue %659, %685[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.insertvalue %657, %686[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.insertvalue %658, %687[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.mlir.constant(0 : index) : i64
    %690 = llvm.mlir.constant(6 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%689 : i64)
  ^bb88(%692: i64):  // 2 preds: ^bb87, ^bb98
    %693 = llvm.icmp "slt" %692, %690 : i64
    llvm.cond_br %693, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %694 = llvm.mlir.constant(0 : index) : i64
    %695 = llvm.mlir.constant(1 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%694 : i64)
  ^bb90(%697: i64):  // 2 preds: ^bb89, ^bb97
    %698 = llvm.icmp "slt" %697, %695 : i64
    llvm.cond_br %698, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %699 = llvm.mlir.constant(0 : index) : i64
    %700 = llvm.mlir.constant(2 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%699 : i64)
  ^bb92(%702: i64):  // 2 preds: ^bb91, ^bb96
    %703 = llvm.icmp "slt" %702, %700 : i64
    llvm.cond_br %703, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %704 = llvm.mlir.constant(0 : index) : i64
    %705 = llvm.mlir.constant(2 : index) : i64
    %706 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%704 : i64)
  ^bb94(%707: i64):  // 2 preds: ^bb93, ^bb95
    %708 = llvm.icmp "slt" %707, %705 : i64
    llvm.cond_br %708, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %709 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.mlir.constant(4 : index) : i64
    %711 = llvm.mul %692, %710  : i64
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mul %37, %712  : i64
    %714 = llvm.add %711, %713  : i64
    %715 = llvm.mlir.constant(2 : index) : i64
    %716 = llvm.mul %702, %715  : i64
    %717 = llvm.add %714, %716  : i64
    %718 = llvm.add %717, %707  : i64
    %719 = llvm.getelementptr %709[%718] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %720 = llvm.load %719 : !llvm.ptr<i32>
    %721 = llvm.extractvalue %688[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.mlir.constant(4 : index) : i64
    %723 = llvm.mul %692, %722  : i64
    %724 = llvm.mlir.constant(4 : index) : i64
    %725 = llvm.mul %697, %724  : i64
    %726 = llvm.add %723, %725  : i64
    %727 = llvm.mlir.constant(2 : index) : i64
    %728 = llvm.mul %702, %727  : i64
    %729 = llvm.add %726, %728  : i64
    %730 = llvm.add %729, %707  : i64
    %731 = llvm.getelementptr %721[%730] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %720, %731 : !llvm.ptr<i32>
    %732 = llvm.add %707, %706  : i64
    llvm.br ^bb94(%732 : i64)
  ^bb96:  // pred: ^bb94
    %733 = llvm.add %702, %701  : i64
    llvm.br ^bb92(%733 : i64)
  ^bb97:  // pred: ^bb92
    %734 = llvm.add %697, %696  : i64
    llvm.br ^bb90(%734 : i64)
  ^bb98:  // pred: ^bb90
    %735 = llvm.add %692, %691  : i64
    llvm.br ^bb88(%735 : i64)
  ^bb99:  // pred: ^bb88
    %736 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %737 = llvm.insertvalue %160, %736[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %738 = llvm.insertvalue %688, %737[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %738 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0", "v1_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.mlir.constant(16 : i64) : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(2 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(0 : i64) : i64
    %154 = llvm.getelementptr %132[%153] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %154 : !llvm.ptr<ptr<i8>>
    %155 = llvm.mlir.constant(4 : i64) : i64
    %156 = llvm.call @omTensorCreateUntyped(%155) : (i64) -> !llvm.ptr<i8>
    %157 = llvm.mlir.constant(1 : i64) : i64
    %158 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.bitcast %158 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %160 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.bitcast %160 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%156, %157, %159, %161) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %162 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%156, %162) : (!llvm.ptr<i8>, i64) -> ()
    %163 = llvm.call @omTensorGetShape(%156) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.call @omTensorGetStrides(%156) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %165 = llvm.mlir.constant(0 : i64) : i64
    %166 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.getelementptr %163[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %164[%165] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.mlir.constant(1 : i64) : i64
    %171 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.getelementptr %163[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %164[%170] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.mlir.constant(2 : i64) : i64
    %176 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %163[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %164[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(3 : i64) : i64
    %181 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %163[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %164[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(1 : i64) : i64
    %186 = llvm.getelementptr %132[%185] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %156, %186 : !llvm.ptr<ptr<i8>>
    %187 = llvm.call @omTensorListCreate(%132, %129, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %187 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 4 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<6> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_7(dense<true> : tensor<1x1x1x1x1xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x array<1 x i1>>>>>
  llvm.mlir.global internal constant @constant_6(dense<[[[[[4]], [[5]]], [[[7]], [[5]]]]]> : tensor<1x2x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x array<1 x i32>>>>>
  llvm.mlir.global internal constant @constant_4(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<6> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v8_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v3_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x i32>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<2 x i32>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x array<1 x i32>>>>>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %95 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i1>>>>>>
    %96 = llvm.bitcast %95 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i1>>>>>> to !llvm.ptr<i1>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.insertvalue %106, %105[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.insertvalue %108, %107[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.insertvalue %110, %109[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.insertvalue %112, %111[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.insertvalue %114, %113[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.insertvalue %116, %115[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.insertvalue %120, %119[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %122 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %123 = llvm.bitcast %122 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %125 = llvm.insertvalue %123, %124[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.insertvalue %129, %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.insertvalue %131, %130[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.insertvalue %133, %132[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.insertvalue %135, %134[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.insertvalue %137, %136[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.insertvalue %141, %140[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.insertvalue %143, %142[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mlir.null : !llvm.ptr<i32>
    %154 = llvm.getelementptr %153[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<i32> to i64
    %156 = llvm.mlir.constant(16 : index) : i64
    %157 = llvm.add %155, %156  : i64
    %158 = llvm.call @malloc(%157) : (i64) -> !llvm.ptr<i8>
    %159 = llvm.bitcast %158 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<i32> to i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.sub %156, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.urem %163, %156  : i64
    %165 = llvm.sub %163, %164  : i64
    %166 = llvm.inttoptr %165 : i64 to !llvm.ptr<i32>
    %167 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %168 = llvm.insertvalue %159, %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %169 = llvm.insertvalue %166, %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.insertvalue %170, %169[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %172 = llvm.insertvalue %145, %171[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %173 = llvm.insertvalue %146, %172[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %174 = llvm.insertvalue %147, %173[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %175 = llvm.insertvalue %148, %174[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %176 = llvm.insertvalue %149, %175[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %177 = llvm.insertvalue %151, %176[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %178 = llvm.insertvalue %147, %177[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %179 = llvm.insertvalue %148, %178[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %180 = llvm.insertvalue %149, %179[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %181 = llvm.insertvalue %150, %180[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%182 : i64)
  ^bb1(%185: i64):  // 2 preds: ^bb0, ^bb14
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%187 : i64)
  ^bb3(%190: i64):  // 2 preds: ^bb2, ^bb13
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%192 : i64)
  ^bb5(%195: i64):  // 2 preds: ^bb4, ^bb12
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%197 : i64)
  ^bb7(%200: i64):  // 2 preds: ^bb6, ^bb11
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%202 : i64)
  ^bb9(%205: i64):  // 2 preds: ^bb8, ^bb10
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %207 = llvm.extractvalue %121[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %208 = llvm.add %185, %27  : i64
    %209 = llvm.add %208, %27  : i64
    %210 = llvm.add %209, %200  : i64
    %211 = llvm.add %210, %205  : i64
    %212 = llvm.getelementptr %207[%211] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %213 = llvm.load %212 : !llvm.ptr<i1>
    %214 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %215 = llvm.add %185, %27  : i64
    %216 = llvm.add %215, %27  : i64
    %217 = llvm.add %216, %200  : i64
    %218 = llvm.add %217, %205  : i64
    %219 = llvm.getelementptr %214[%218] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %220 = llvm.load %219 : !llvm.ptr<i32>
    %221 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mul %185, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %190, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.add %226, %195  : i64
    %228 = llvm.add %227, %200  : i64
    %229 = llvm.add %228, %205  : i64
    %230 = llvm.getelementptr %221[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.select %213, %220, %231 : i1, i32
    %233 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mul %185, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %190, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.add %238, %195  : i64
    %240 = llvm.add %239, %200  : i64
    %241 = llvm.add %240, %205  : i64
    %242 = llvm.getelementptr %233[%241] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %232, %242 : !llvm.ptr<i32>
    %243 = llvm.add %205, %204  : i64
    llvm.br ^bb9(%243 : i64)
  ^bb11:  // pred: ^bb9
    %244 = llvm.add %200, %199  : i64
    llvm.br ^bb7(%244 : i64)
  ^bb12:  // pred: ^bb7
    %245 = llvm.add %195, %194  : i64
    llvm.br ^bb5(%245 : i64)
  ^bb13:  // pred: ^bb5
    %246 = llvm.add %190, %189  : i64
    llvm.br ^bb3(%246 : i64)
  ^bb14:  // pred: ^bb3
    %247 = llvm.add %185, %184  : i64
    llvm.br ^bb1(%247 : i64)
  ^bb15:  // pred: ^bb1
    %248 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %249 = llvm.extractvalue %181[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %250 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %251 = llvm.insertvalue %249, %248[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %250, %251[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.insertvalue %253, %252[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.insertvalue %255, %254[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.insertvalue %257, %256[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.insertvalue %259, %258[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.insertvalue %261, %260[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.insertvalue %263, %262[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.insertvalue %265, %264[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.insertvalue %267, %266[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.insertvalue %269, %268[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.null : !llvm.ptr<i64>
    %274 = llvm.getelementptr %273[%271] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i64> to i64
    %276 = llvm.mlir.constant(16 : index) : i64
    %277 = llvm.add %275, %276  : i64
    %278 = llvm.call @malloc(%277) : (i64) -> !llvm.ptr<i8>
    %279 = llvm.bitcast %278 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i64> to i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.sub %276, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.urem %283, %276  : i64
    %285 = llvm.sub %283, %284  : i64
    %286 = llvm.inttoptr %285 : i64 to !llvm.ptr<i64>
    %287 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %288 = llvm.insertvalue %279, %287[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %286, %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.insertvalue %290, %289[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.insertvalue %271, %291[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %272, %292[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%294 : i64)
  ^bb16(%297: i64):  // 2 preds: ^bb15, ^bb17
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %299 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%297] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %300 : !llvm.ptr<i64>
    %301 = llvm.add %297, %296  : i64
    llvm.br ^bb16(%301 : i64)
  ^bb18:  // pred: ^bb16
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i64>
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%325 : i64)
  ^bb19(%328: i64):  // 2 preds: ^bb18, ^bb20
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %330 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %332 = llvm.load %331 : !llvm.ptr<i64>
    %333 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.mul %332, %334  : i64
    %336 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %335, %337 : !llvm.ptr<i64>
    %338 = llvm.add %328, %327  : i64
    llvm.br ^bb19(%338 : i64)
  ^bb21:  // pred: ^bb19
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.null : !llvm.ptr<i1>
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i1> to i64
    %344 = llvm.mlir.constant(16 : index) : i64
    %345 = llvm.add %343, %344  : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr<i8>
    %347 = llvm.bitcast %346 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i1> to i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.sub %344, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.urem %351, %344  : i64
    %353 = llvm.sub %351, %352  : i64
    %354 = llvm.inttoptr %353 : i64 to !llvm.ptr<i1>
    %355 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %356 = llvm.insertvalue %347, %355[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %354, %356[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.insertvalue %358, %357[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.insertvalue %339, %359[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %340, %360[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%362 : i64)
  ^bb22(%365: i64):  // 2 preds: ^bb21, ^bb23
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %367 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %369 = llvm.load %368 : !llvm.ptr<i64>
    %370 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.icmp "eq" %369, %372 : i64
    %374 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.getelementptr %374[%365] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %373, %375 : !llvm.ptr<i1>
    %376 = llvm.add %365, %364  : i64
    llvm.br ^bb22(%376 : i64)
  ^bb24:  // pred: ^bb22
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.null : !llvm.ptr<i64>
    %380 = llvm.getelementptr %379[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %381 = llvm.ptrtoint %380 : !llvm.ptr<i64> to i64
    %382 = llvm.mlir.constant(16 : index) : i64
    %383 = llvm.add %381, %382  : i64
    %384 = llvm.call @malloc(%383) : (i64) -> !llvm.ptr<i8>
    %385 = llvm.bitcast %384 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %386 = llvm.ptrtoint %385 : !llvm.ptr<i64> to i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.sub %382, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.urem %389, %382  : i64
    %391 = llvm.sub %389, %390  : i64
    %392 = llvm.inttoptr %391 : i64 to !llvm.ptr<i64>
    %393 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %394 = llvm.insertvalue %385, %393[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.insertvalue %392, %394[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.insertvalue %396, %395[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.insertvalue %377, %397[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.insertvalue %378, %398[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%400 : i64)
  ^bb25(%403: i64):  // 2 preds: ^bb24, ^bb26
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %405 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.getelementptr %405[%403] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %407 = llvm.load %406 : !llvm.ptr<i1>
    %408 = llvm.extractvalue %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.getelementptr %408[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %410 = llvm.load %409 : !llvm.ptr<i64>
    %411 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.getelementptr %411[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %413 = llvm.load %412 : !llvm.ptr<i64>
    %414 = llvm.select %407, %410, %413 : i1, i64
    %415 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.getelementptr %415[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %414, %416 : !llvm.ptr<i64>
    %417 = llvm.add %403, %402  : i64
    llvm.br ^bb25(%417 : i64)
  ^bb27:  // pred: ^bb25
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.null : !llvm.ptr<i32>
    %425 = llvm.getelementptr %424[%423] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i32> to i64
    %427 = llvm.mlir.constant(16 : index) : i64
    %428 = llvm.add %426, %427  : i64
    %429 = llvm.call @malloc(%428) : (i64) -> !llvm.ptr<i8>
    %430 = llvm.bitcast %429 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i32> to i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.sub %427, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.urem %434, %427  : i64
    %436 = llvm.sub %434, %435  : i64
    %437 = llvm.inttoptr %436 : i64 to !llvm.ptr<i32>
    %438 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %439 = llvm.insertvalue %430, %438[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %437, %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.insertvalue %441, %440[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %418, %442[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %419, %443[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %420, %444[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %421, %445[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %419, %446[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %420, %447[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %421, %448[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %422, %449[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%451 : i64)
  ^bb28(%454: i64):  // 2 preds: ^bb27, ^bb38
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%456 : i64)
  ^bb30(%459: i64):  // 2 preds: ^bb29, ^bb37
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%461 : i64)
  ^bb32(%464: i64):  // 2 preds: ^bb31, ^bb36
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%466 : i64)
  ^bb34(%469: i64):  // 2 preds: ^bb33, ^bb35
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %471 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %454, %472  : i64
    %474 = llvm.add %473, %459  : i64
    %475 = llvm.add %474, %27  : i64
    %476 = llvm.add %475, %27  : i64
    %477 = llvm.getelementptr %471[%476] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %478 = llvm.load %477 : !llvm.ptr<i32>
    %479 = llvm.extractvalue %450[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mul %454, %480  : i64
    %482 = llvm.add %481, %459  : i64
    %483 = llvm.add %482, %464  : i64
    %484 = llvm.add %483, %469  : i64
    %485 = llvm.getelementptr %479[%484] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %478, %485 : !llvm.ptr<i32>
    %486 = llvm.add %469, %468  : i64
    llvm.br ^bb34(%486 : i64)
  ^bb36:  // pred: ^bb34
    %487 = llvm.add %464, %463  : i64
    llvm.br ^bb32(%487 : i64)
  ^bb37:  // pred: ^bb32
    %488 = llvm.add %459, %458  : i64
    llvm.br ^bb30(%488 : i64)
  ^bb38:  // pred: ^bb30
    %489 = llvm.add %454, %453  : i64
    llvm.br ^bb28(%489 : i64)
  ^bb39:  // pred: ^bb28
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.constant(4 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(8 : index) : i64
    %496 = llvm.mlir.null : !llvm.ptr<i32>
    %497 = llvm.getelementptr %496[%495] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %498 = llvm.ptrtoint %497 : !llvm.ptr<i32> to i64
    %499 = llvm.mlir.constant(16 : index) : i64
    %500 = llvm.add %498, %499  : i64
    %501 = llvm.call @malloc(%500) : (i64) -> !llvm.ptr<i8>
    %502 = llvm.bitcast %501 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %503 = llvm.ptrtoint %502 : !llvm.ptr<i32> to i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.sub %499, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.urem %506, %499  : i64
    %508 = llvm.sub %506, %507  : i64
    %509 = llvm.inttoptr %508 : i64 to !llvm.ptr<i32>
    %510 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %511 = llvm.insertvalue %502, %510[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %509, %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.insertvalue %513, %512[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %490, %514[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %491, %515[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %492, %516[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %493, %517[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %491, %518[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %492, %519[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %493, %520[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %494, %521[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%523 : i64)
  ^bb40(%526: i64):  // 2 preds: ^bb39, ^bb50
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%528 : i64)
  ^bb42(%531: i64):  // 2 preds: ^bb41, ^bb49
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%533 : i64)
  ^bb44(%536: i64):  // 2 preds: ^bb43, ^bb48
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%538 : i64)
  ^bb46(%541: i64):  // 2 preds: ^bb45, ^bb47
    %542 = llvm.icmp "slt" %541, %539 : i64
    llvm.cond_br %542, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %543 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.add %526, %531  : i64
    %545 = llvm.add %544, %536  : i64
    %546 = llvm.add %545, %541  : i64
    %547 = llvm.getelementptr %543[%546] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %548 = llvm.load %547 : !llvm.ptr<i32>
    %549 = llvm.extractvalue %522[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(4 : index) : i64
    %551 = llvm.mul %526, %550  : i64
    %552 = llvm.add %551, %531  : i64
    %553 = llvm.add %552, %536  : i64
    %554 = llvm.add %553, %541  : i64
    %555 = llvm.getelementptr %549[%554] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %548, %555 : !llvm.ptr<i32>
    %556 = llvm.add %541, %540  : i64
    llvm.br ^bb46(%556 : i64)
  ^bb48:  // pred: ^bb46
    %557 = llvm.add %536, %535  : i64
    llvm.br ^bb44(%557 : i64)
  ^bb49:  // pred: ^bb44
    %558 = llvm.add %531, %530  : i64
    llvm.br ^bb42(%558 : i64)
  ^bb50:  // pred: ^bb42
    %559 = llvm.add %526, %525  : i64
    llvm.br ^bb40(%559 : i64)
  ^bb51:  // pred: ^bb40
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(2 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%560 : i64)
  ^bb52(%563: i64):  // 2 preds: ^bb51, ^bb62
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%565 : i64)
  ^bb54(%568: i64):  // 2 preds: ^bb53, ^bb61
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %570 = llvm.mlir.constant(0 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%570 : i64)
  ^bb56(%573: i64):  // 2 preds: ^bb55, ^bb60
    %574 = llvm.icmp "slt" %573, %571 : i64
    llvm.cond_br %574, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(1 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%575 : i64)
  ^bb58(%578: i64):  // 2 preds: ^bb57, ^bb59
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %580 = llvm.mlir.constant(1 : index) : i64
    %581 = llvm.add %568, %580  : i64
    %582 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.add %563, %568  : i64
    %584 = llvm.add %583, %573  : i64
    %585 = llvm.add %584, %578  : i64
    %586 = llvm.getelementptr %582[%585] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %587 = llvm.load %586 : !llvm.ptr<i32>
    %588 = llvm.extractvalue %522[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mul %563, %589  : i64
    %591 = llvm.add %590, %581  : i64
    %592 = llvm.add %591, %573  : i64
    %593 = llvm.add %592, %578  : i64
    %594 = llvm.getelementptr %588[%593] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %587, %594 : !llvm.ptr<i32>
    %595 = llvm.add %578, %577  : i64
    llvm.br ^bb58(%595 : i64)
  ^bb60:  // pred: ^bb58
    %596 = llvm.add %573, %572  : i64
    llvm.br ^bb56(%596 : i64)
  ^bb61:  // pred: ^bb56
    %597 = llvm.add %568, %567  : i64
    llvm.br ^bb54(%597 : i64)
  ^bb62:  // pred: ^bb54
    %598 = llvm.add %563, %562  : i64
    llvm.br ^bb52(%598 : i64)
  ^bb63:  // pred: ^bb52
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(2 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%599 : i64)
  ^bb64(%602: i64):  // 2 preds: ^bb63, ^bb74
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(2 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%604 : i64)
  ^bb66(%607: i64):  // 2 preds: ^bb65, ^bb73
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%609 : i64)
  ^bb68(%612: i64):  // 2 preds: ^bb67, ^bb72
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %614 = llvm.mlir.constant(0 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%614 : i64)
  ^bb70(%617: i64):  // 2 preds: ^bb69, ^bb71
    %618 = llvm.icmp "slt" %617, %615 : i64
    llvm.cond_br %618, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %619 = llvm.mlir.constant(2 : index) : i64
    %620 = llvm.add %607, %619  : i64
    %621 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(2 : index) : i64
    %623 = llvm.mul %602, %622  : i64
    %624 = llvm.add %623, %607  : i64
    %625 = llvm.add %624, %612  : i64
    %626 = llvm.add %625, %617  : i64
    %627 = llvm.getelementptr %621[%626] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %628 = llvm.load %627 : !llvm.ptr<i32>
    %629 = llvm.extractvalue %522[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.mlir.constant(4 : index) : i64
    %631 = llvm.mul %602, %630  : i64
    %632 = llvm.add %631, %620  : i64
    %633 = llvm.add %632, %612  : i64
    %634 = llvm.add %633, %617  : i64
    %635 = llvm.getelementptr %629[%634] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %628, %635 : !llvm.ptr<i32>
    %636 = llvm.add %617, %616  : i64
    llvm.br ^bb70(%636 : i64)
  ^bb72:  // pred: ^bb70
    %637 = llvm.add %612, %611  : i64
    llvm.br ^bb68(%637 : i64)
  ^bb73:  // pred: ^bb68
    %638 = llvm.add %607, %606  : i64
    llvm.br ^bb66(%638 : i64)
  ^bb74:  // pred: ^bb66
    %639 = llvm.add %602, %601  : i64
    llvm.br ^bb64(%639 : i64)
  ^bb75:  // pred: ^bb64
    %640 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %641 = llvm.insertvalue %450, %640[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %642 = llvm.insertvalue %38, %641[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %643 = llvm.insertvalue %522, %642[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %643 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v3_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %26, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %91, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %92 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %95 = llvm.extractvalue %92[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.mlir.constant(24 : i64) : i64
    %98 = llvm.call @malloc(%97) : (i64) -> !llvm.ptr<i8>
    %99 = llvm.bitcast %98 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %100 = llvm.mlir.constant(4 : i64) : i64
    %101 = llvm.call @omTensorCreateUntyped(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.mlir.constant(1 : i64) : i64
    %103 = llvm.extractvalue %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.bitcast %103 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %105 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.bitcast %105 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%101, %102, %104, %106) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %107 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%101, %107) : (!llvm.ptr<i8>, i64) -> ()
    %108 = llvm.call @omTensorGetShape(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %109 = llvm.call @omTensorGetStrides(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.mlir.constant(0 : i64) : i64
    %111 = llvm.extractvalue %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %108[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %109[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(1 : i64) : i64
    %116 = llvm.extractvalue %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %108[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %93[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %109[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(2 : i64) : i64
    %121 = llvm.extractvalue %93[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %108[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %109[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(3 : i64) : i64
    %126 = llvm.extractvalue %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %108[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %93[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %109[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(0 : i64) : i64
    %131 = llvm.getelementptr %99[%130] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %101, %131 : !llvm.ptr<ptr<i8>>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.call @omTensorCreateUntyped(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.bitcast %135 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %137 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%133, %134, %136, %138) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %139 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%133, %139) : (!llvm.ptr<i8>, i64) -> ()
    %140 = llvm.call @omTensorGetShape(%133) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.call @omTensorGetStrides(%133) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.mlir.constant(0 : i64) : i64
    %143 = llvm.extractvalue %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.getelementptr %140[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %141[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(1 : i64) : i64
    %148 = llvm.getelementptr %99[%147] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %133, %148 : !llvm.ptr<ptr<i8>>
    %149 = llvm.mlir.constant(4 : i64) : i64
    %150 = llvm.call @omTensorCreateUntyped(%149) : (i64) -> !llvm.ptr<i8>
    %151 = llvm.mlir.constant(1 : i64) : i64
    %152 = llvm.extractvalue %95[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.bitcast %152 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %154 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.bitcast %154 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%150, %151, %153, %155) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %156 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%150, %156) : (!llvm.ptr<i8>, i64) -> ()
    %157 = llvm.call @omTensorGetShape(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %158 = llvm.call @omTensorGetStrides(%150) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %159 = llvm.mlir.constant(0 : i64) : i64
    %160 = llvm.extractvalue %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %157[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %95[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %158[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(1 : i64) : i64
    %165 = llvm.extractvalue %95[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %157[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %158[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(2 : i64) : i64
    %170 = llvm.extractvalue %95[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %157[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %95[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %158[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(3 : i64) : i64
    %175 = llvm.extractvalue %95[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %157[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %95[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %158[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(2 : i64) : i64
    %180 = llvm.getelementptr %99[%179] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %150, %180 : !llvm.ptr<ptr<i8>>
    %181 = llvm.call @omTensorListCreate(%99, %96, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %181 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<146 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<146 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


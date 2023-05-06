module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2 , 3] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 3] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[[[[4], [6]]], [[[4], [4]]]]> : tensor<2x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<[[[[[4, 6, 4], [6, 5, 4]]]]]> : tensor<1x1x1x2x3xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x array<3 x i32>>>>>
  llvm.mlir.global internal constant @constant_4(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<true> : tensor<1x1x1x2x3xi1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x array<3 x i1>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v8_0", "v2_0", "v3_0"]} {
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
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.mlir.constant(2147483647 : i32) : i32
    %27 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<3 x i1>>>>>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<3 x i1>>>>>> to !llvm.ptr<i1>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.mlir.constant(6 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.mlir.constant(6 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(6 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.mlir.constant(3 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.mlir.constant(3 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(4 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %72 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %73 = llvm.bitcast %72 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<3 x i32>>>>>>
    %84 = llvm.bitcast %83 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<3 x i32>>>>>> to !llvm.ptr<i32>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.mlir.constant(6 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.mlir.constant(6 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.mlir.constant(6 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.mlir.constant(3 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.mlir.constant(3 : index) : i64
    %107 = llvm.insertvalue %106, %105[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.insertvalue %108, %107[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<2 x array<1 x array<2 x array<1 x i32>>>>>
    %111 = llvm.bitcast %110 : !llvm.ptr<array<2 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %112 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %113 = llvm.insertvalue %111, %112[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.insertvalue %117, %116[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.insertvalue %119, %118[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.insertvalue %121, %120[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.insertvalue %123, %122[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.insertvalue %129, %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.insertvalue %131, %130[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(3 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(6 : index) : i64
    %139 = llvm.mlir.constant(6 : index) : i64
    %140 = llvm.mlir.constant(6 : index) : i64
    %141 = llvm.mlir.null : !llvm.ptr<i32>
    %142 = llvm.getelementptr %141[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(16 : index) : i64
    %145 = llvm.add %143, %144  : i64
    %146 = llvm.call @malloc(%145) : (i64) -> !llvm.ptr<i8>
    %147 = llvm.bitcast %146 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i32> to i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.sub %144, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.urem %151, %144  : i64
    %153 = llvm.sub %151, %152  : i64
    %154 = llvm.inttoptr %153 : i64 to !llvm.ptr<i32>
    %155 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %156 = llvm.insertvalue %147, %155[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %133, %159[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %134, %160[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %135, %161[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %136, %162[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %139, %163[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %138, %164[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %136, %165[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %137, %166[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%168 : i64)
  ^bb1(%171: i64):  // 2 preds: ^bb0, ^bb11
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%173 : i64)
  ^bb3(%176: i64):  // 2 preds: ^bb2, ^bb10
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(2 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%178 : i64)
  ^bb5(%181: i64):  // 2 preds: ^bb4, ^bb9
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(3 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%183 : i64)
  ^bb7(%186: i64):  // 2 preds: ^bb6, ^bb8
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %188 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(6 : index) : i64
    %190 = llvm.mul %171, %189  : i64
    %191 = llvm.mlir.constant(6 : index) : i64
    %192 = llvm.mul %176, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.mlir.constant(3 : index) : i64
    %195 = llvm.mul %181, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %186  : i64
    %198 = llvm.getelementptr %188[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %26, %198 : !llvm.ptr<i32>
    %199 = llvm.add %186, %185  : i64
    llvm.br ^bb7(%199 : i64)
  ^bb9:  // pred: ^bb7
    %200 = llvm.add %181, %180  : i64
    llvm.br ^bb5(%200 : i64)
  ^bb10:  // pred: ^bb5
    %201 = llvm.add %176, %175  : i64
    llvm.br ^bb3(%201 : i64)
  ^bb11:  // pred: ^bb3
    %202 = llvm.add %171, %170  : i64
    llvm.br ^bb1(%202 : i64)
  ^bb12:  // pred: ^bb1
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%203 : i64)
  ^bb13(%206: i64):  // 2 preds: ^bb12, ^bb26
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%208 : i64)
  ^bb15(%211: i64):  // 2 preds: ^bb14, ^bb25
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%213 : i64)
  ^bb17(%216: i64):  // 2 preds: ^bb16, ^bb24
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%218 : i64)
  ^bb19(%221: i64):  // 2 preds: ^bb18, ^bb23
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(3 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%223 : i64)
  ^bb21(%226: i64):  // 2 preds: ^bb20, ^bb22
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %228 = llvm.extractvalue %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %229 = llvm.mlir.constant(6 : index) : i64
    %230 = llvm.mul %206, %229  : i64
    %231 = llvm.mlir.constant(6 : index) : i64
    %232 = llvm.mul %211, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.mlir.constant(6 : index) : i64
    %235 = llvm.mul %216, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.mlir.constant(3 : index) : i64
    %238 = llvm.mul %221, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.add %239, %226  : i64
    %241 = llvm.getelementptr %228[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.load %241 : !llvm.ptr<i32>
    %243 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.mlir.constant(6 : index) : i64
    %245 = llvm.mul %206, %244  : i64
    %246 = llvm.mlir.constant(6 : index) : i64
    %247 = llvm.mul %211, %246  : i64
    %248 = llvm.add %245, %247  : i64
    %249 = llvm.mlir.constant(3 : index) : i64
    %250 = llvm.mul %221, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.add %251, %226  : i64
    %253 = llvm.getelementptr %243[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.load %253 : !llvm.ptr<i32>
    %255 = llvm.icmp "slt" %254, %242 : i32
    %256 = llvm.select %255, %254, %242 : i1, i32
    %257 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(6 : index) : i64
    %259 = llvm.mul %206, %258  : i64
    %260 = llvm.mlir.constant(6 : index) : i64
    %261 = llvm.mul %211, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.mlir.constant(3 : index) : i64
    %264 = llvm.mul %221, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %226  : i64
    %267 = llvm.getelementptr %257[%266] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %267 : !llvm.ptr<i32>
    %268 = llvm.add %226, %225  : i64
    llvm.br ^bb21(%268 : i64)
  ^bb23:  // pred: ^bb21
    %269 = llvm.add %221, %220  : i64
    llvm.br ^bb19(%269 : i64)
  ^bb24:  // pred: ^bb19
    %270 = llvm.add %216, %215  : i64
    llvm.br ^bb17(%270 : i64)
  ^bb25:  // pred: ^bb17
    %271 = llvm.add %211, %210  : i64
    llvm.br ^bb15(%271 : i64)
  ^bb26:  // pred: ^bb15
    %272 = llvm.add %206, %205  : i64
    llvm.br ^bb13(%272 : i64)
  ^bb27:  // pred: ^bb13
    %273 = llvm.mlir.constant(4 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.null : !llvm.ptr<i64>
    %276 = llvm.getelementptr %275[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.ptrtoint %276 : !llvm.ptr<i64> to i64
    %278 = llvm.mlir.constant(16 : index) : i64
    %279 = llvm.add %277, %278  : i64
    %280 = llvm.call @malloc(%279) : (i64) -> !llvm.ptr<i8>
    %281 = llvm.bitcast %280 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i64> to i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.sub %278, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.urem %285, %278  : i64
    %287 = llvm.sub %285, %286  : i64
    %288 = llvm.inttoptr %287 : i64 to !llvm.ptr<i64>
    %289 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %290 = llvm.insertvalue %281, %289[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %288, %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.insertvalue %292, %291[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.insertvalue %273, %293[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.insertvalue %274, %294[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%296 : i64)
  ^bb28(%299: i64):  // 2 preds: ^bb27, ^bb29
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %301 = llvm.extractvalue %295[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.getelementptr %301[%299] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %302 : !llvm.ptr<i64>
    %303 = llvm.add %299, %298  : i64
    llvm.br ^bb28(%303 : i64)
  ^bb30:  // pred: ^bb28
    %304 = llvm.mlir.constant(4 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.null : !llvm.ptr<i64>
    %307 = llvm.getelementptr %306[%304] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i64> to i64
    %309 = llvm.mlir.constant(16 : index) : i64
    %310 = llvm.add %308, %309  : i64
    %311 = llvm.call @malloc(%310) : (i64) -> !llvm.ptr<i8>
    %312 = llvm.bitcast %311 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i64> to i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.sub %309, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.urem %316, %309  : i64
    %318 = llvm.sub %316, %317  : i64
    %319 = llvm.inttoptr %318 : i64 to !llvm.ptr<i64>
    %320 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %321 = llvm.insertvalue %312, %320[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %304, %324[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.insertvalue %305, %325[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%327 : i64)
  ^bb31(%330: i64):  // 2 preds: ^bb30, ^bb32
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %332 = llvm.extractvalue %295[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%330] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %336 = llvm.load %335 : !llvm.ptr<i64>
    %337 = llvm.mul %334, %336  : i64
    %338 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.getelementptr %338[%330] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %337, %339 : !llvm.ptr<i64>
    %340 = llvm.add %330, %329  : i64
    llvm.br ^bb31(%340 : i64)
  ^bb33:  // pred: ^bb31
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.null : !llvm.ptr<i1>
    %344 = llvm.getelementptr %343[%341] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i1> to i64
    %346 = llvm.mlir.constant(16 : index) : i64
    %347 = llvm.add %345, %346  : i64
    %348 = llvm.call @malloc(%347) : (i64) -> !llvm.ptr<i8>
    %349 = llvm.bitcast %348 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<i1> to i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.sub %346, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.urem %353, %346  : i64
    %355 = llvm.sub %353, %354  : i64
    %356 = llvm.inttoptr %355 : i64 to !llvm.ptr<i1>
    %357 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %358 = llvm.insertvalue %349, %357[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.insertvalue %356, %358[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.insertvalue %360, %359[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.insertvalue %341, %361[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.insertvalue %342, %362[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(4 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%364 : i64)
  ^bb34(%367: i64):  // 2 preds: ^bb33, ^bb35
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %369 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.getelementptr %369[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %371 = llvm.load %370 : !llvm.ptr<i64>
    %372 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.getelementptr %372[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %374 = llvm.load %373 : !llvm.ptr<i64>
    %375 = llvm.icmp "eq" %371, %374 : i64
    %376 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.getelementptr %376[%367] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %375, %377 : !llvm.ptr<i1>
    %378 = llvm.add %367, %366  : i64
    llvm.br ^bb34(%378 : i64)
  ^bb36:  // pred: ^bb34
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.null : !llvm.ptr<i64>
    %382 = llvm.getelementptr %381[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i64> to i64
    %384 = llvm.mlir.constant(16 : index) : i64
    %385 = llvm.add %383, %384  : i64
    %386 = llvm.call @malloc(%385) : (i64) -> !llvm.ptr<i8>
    %387 = llvm.bitcast %386 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %388 = llvm.ptrtoint %387 : !llvm.ptr<i64> to i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.sub %384, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.urem %391, %384  : i64
    %393 = llvm.sub %391, %392  : i64
    %394 = llvm.inttoptr %393 : i64 to !llvm.ptr<i64>
    %395 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %396 = llvm.insertvalue %387, %395[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %394, %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.insertvalue %398, %397[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.insertvalue %379, %399[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.insertvalue %380, %400[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(4 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%402 : i64)
  ^bb37(%405: i64):  // 2 preds: ^bb36, ^bb38
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %407 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.getelementptr %407[%405] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %409 = llvm.load %408 : !llvm.ptr<i1>
    %410 = llvm.extractvalue %295[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.getelementptr %410[%405] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.load %411 : !llvm.ptr<i64>
    %413 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.getelementptr %413[%405] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %415 = llvm.load %414 : !llvm.ptr<i64>
    %416 = llvm.select %409, %412, %415 : i1, i64
    %417 = llvm.extractvalue %401[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.getelementptr %417[%405] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %416, %418 : !llvm.ptr<i64>
    %419 = llvm.add %405, %404  : i64
    llvm.br ^bb37(%419 : i64)
  ^bb39:  // pred: ^bb37
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(4 : index) : i64
    %427 = llvm.mlir.null : !llvm.ptr<i32>
    %428 = llvm.getelementptr %427[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i32> to i64
    %430 = llvm.mlir.constant(16 : index) : i64
    %431 = llvm.add %429, %430  : i64
    %432 = llvm.call @malloc(%431) : (i64) -> !llvm.ptr<i8>
    %433 = llvm.bitcast %432 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<i32> to i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.sub %430, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.urem %437, %430  : i64
    %439 = llvm.sub %437, %438  : i64
    %440 = llvm.inttoptr %439 : i64 to !llvm.ptr<i32>
    %441 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %442 = llvm.insertvalue %433, %441[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %440, %442[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.insertvalue %444, %443[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %420, %445[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %421, %446[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %422, %447[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %423, %448[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %425, %449[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %422, %450[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %423, %451[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %424, %452[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%454 : i64)
  ^bb40(%457: i64):  // 2 preds: ^bb39, ^bb50
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%459 : i64)
  ^bb42(%462: i64):  // 2 preds: ^bb41, ^bb49
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%464 : i64)
  ^bb44(%467: i64):  // 2 preds: ^bb43, ^bb48
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%469 : i64)
  ^bb46(%472: i64):  // 2 preds: ^bb45, ^bb47
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %474 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %457, %475  : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mul %24, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.add %479, %467  : i64
    %481 = llvm.add %480, %24  : i64
    %482 = llvm.getelementptr %474[%481] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %483 = llvm.load %482 : !llvm.ptr<i32>
    %484 = llvm.extractvalue %453[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %457, %485  : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mul %462, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.add %489, %467  : i64
    %491 = llvm.add %490, %472  : i64
    %492 = llvm.getelementptr %484[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %483, %492 : !llvm.ptr<i32>
    %493 = llvm.add %472, %471  : i64
    llvm.br ^bb46(%493 : i64)
  ^bb48:  // pred: ^bb46
    %494 = llvm.add %467, %466  : i64
    llvm.br ^bb44(%494 : i64)
  ^bb49:  // pred: ^bb44
    %495 = llvm.add %462, %461  : i64
    llvm.br ^bb42(%495 : i64)
  ^bb50:  // pred: ^bb42
    %496 = llvm.add %457, %456  : i64
    llvm.br ^bb40(%496 : i64)
  ^bb51:  // pred: ^bb40
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mlir.constant(3 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(6 : index) : i64
    %503 = llvm.mlir.constant(6 : index) : i64
    %504 = llvm.mlir.constant(12 : index) : i64
    %505 = llvm.mlir.null : !llvm.ptr<i32>
    %506 = llvm.getelementptr %505[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %507 = llvm.ptrtoint %506 : !llvm.ptr<i32> to i64
    %508 = llvm.mlir.constant(16 : index) : i64
    %509 = llvm.add %507, %508  : i64
    %510 = llvm.call @malloc(%509) : (i64) -> !llvm.ptr<i8>
    %511 = llvm.bitcast %510 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %512 = llvm.ptrtoint %511 : !llvm.ptr<i32> to i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.sub %508, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.urem %515, %508  : i64
    %517 = llvm.sub %515, %516  : i64
    %518 = llvm.inttoptr %517 : i64 to !llvm.ptr<i32>
    %519 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %520 = llvm.insertvalue %511, %519[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %518, %520[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.insertvalue %522, %521[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %497, %523[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %498, %524[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %499, %525[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %500, %526[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.insertvalue %503, %527[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.insertvalue %502, %528[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.insertvalue %500, %529[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.insertvalue %501, %530[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%532 : i64)
  ^bb52(%535: i64):  // 2 preds: ^bb51, ^bb62
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%537 : i64)
  ^bb54(%540: i64):  // 2 preds: ^bb53, ^bb61
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%542 : i64)
  ^bb56(%545: i64):  // 2 preds: ^bb55, ^bb60
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%547 : i64)
  ^bb58(%550: i64):  // 2 preds: ^bb57, ^bb59
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %552 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.mlir.constant(2 : index) : i64
    %554 = llvm.mul %535, %553  : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mul %540, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.add %557, %545  : i64
    %559 = llvm.add %558, %550  : i64
    %560 = llvm.getelementptr %552[%559] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %561 = llvm.load %560 : !llvm.ptr<i32>
    %562 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.mlir.constant(6 : index) : i64
    %564 = llvm.mul %535, %563  : i64
    %565 = llvm.mlir.constant(6 : index) : i64
    %566 = llvm.mul %540, %565  : i64
    %567 = llvm.add %564, %566  : i64
    %568 = llvm.mlir.constant(3 : index) : i64
    %569 = llvm.mul %545, %568  : i64
    %570 = llvm.add %567, %569  : i64
    %571 = llvm.add %570, %550  : i64
    %572 = llvm.getelementptr %562[%571] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %561, %572 : !llvm.ptr<i32>
    %573 = llvm.add %550, %549  : i64
    llvm.br ^bb58(%573 : i64)
  ^bb60:  // pred: ^bb58
    %574 = llvm.add %545, %544  : i64
    llvm.br ^bb56(%574 : i64)
  ^bb61:  // pred: ^bb56
    %575 = llvm.add %540, %539  : i64
    llvm.br ^bb54(%575 : i64)
  ^bb62:  // pred: ^bb54
    %576 = llvm.add %535, %534  : i64
    llvm.br ^bb52(%576 : i64)
  ^bb63:  // pred: ^bb52
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(2 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%577 : i64)
  ^bb64(%580: i64):  // 2 preds: ^bb63, ^bb74
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%582 : i64)
  ^bb66(%585: i64):  // 2 preds: ^bb65, ^bb73
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%587 : i64)
  ^bb68(%590: i64):  // 2 preds: ^bb67, ^bb72
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%592 : i64)
  ^bb70(%595: i64):  // 2 preds: ^bb69, ^bb71
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.add %595, %597  : i64
    %599 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.mlir.constant(2 : index) : i64
    %601 = llvm.mul %580, %600  : i64
    %602 = llvm.mlir.constant(2 : index) : i64
    %603 = llvm.mul %585, %602  : i64
    %604 = llvm.add %601, %603  : i64
    %605 = llvm.add %604, %590  : i64
    %606 = llvm.add %605, %595  : i64
    %607 = llvm.getelementptr %599[%606] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %608 = llvm.load %607 : !llvm.ptr<i32>
    %609 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.mlir.constant(6 : index) : i64
    %611 = llvm.mul %580, %610  : i64
    %612 = llvm.mlir.constant(6 : index) : i64
    %613 = llvm.mul %585, %612  : i64
    %614 = llvm.add %611, %613  : i64
    %615 = llvm.mlir.constant(3 : index) : i64
    %616 = llvm.mul %590, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.add %617, %598  : i64
    %619 = llvm.getelementptr %609[%618] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %608, %619 : !llvm.ptr<i32>
    %620 = llvm.add %595, %594  : i64
    llvm.br ^bb70(%620 : i64)
  ^bb72:  // pred: ^bb70
    %621 = llvm.add %590, %589  : i64
    llvm.br ^bb68(%621 : i64)
  ^bb73:  // pred: ^bb68
    %622 = llvm.add %585, %584  : i64
    llvm.br ^bb66(%622 : i64)
  ^bb74:  // pred: ^bb66
    %623 = llvm.add %580, %579  : i64
    llvm.br ^bb64(%623 : i64)
  ^bb75:  // pred: ^bb64
    %624 = llvm.mlir.constant(0 : index) : i64
    %625 = llvm.mlir.constant(2 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%624 : i64)
  ^bb76(%627: i64):  // 2 preds: ^bb75, ^bb86
    %628 = llvm.icmp "slt" %627, %625 : i64
    llvm.cond_br %628, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %629 = llvm.mlir.constant(0 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%629 : i64)
  ^bb78(%632: i64):  // 2 preds: ^bb77, ^bb85
    %633 = llvm.icmp "slt" %632, %630 : i64
    llvm.cond_br %633, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %634 = llvm.mlir.constant(0 : index) : i64
    %635 = llvm.mlir.constant(2 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%634 : i64)
  ^bb80(%637: i64):  // 2 preds: ^bb79, ^bb84
    %638 = llvm.icmp "slt" %637, %635 : i64
    llvm.cond_br %638, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %639 = llvm.mlir.constant(0 : index) : i64
    %640 = llvm.mlir.constant(1 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%639 : i64)
  ^bb82(%642: i64):  // 2 preds: ^bb81, ^bb83
    %643 = llvm.icmp "slt" %642, %640 : i64
    llvm.cond_br %643, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %644 = llvm.mlir.constant(2 : index) : i64
    %645 = llvm.add %642, %644  : i64
    %646 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mul %627, %647  : i64
    %649 = llvm.mlir.constant(2 : index) : i64
    %650 = llvm.mul %632, %649  : i64
    %651 = llvm.add %648, %650  : i64
    %652 = llvm.add %651, %637  : i64
    %653 = llvm.add %652, %642  : i64
    %654 = llvm.getelementptr %646[%653] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %655 = llvm.load %654 : !llvm.ptr<i32>
    %656 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %657 = llvm.mlir.constant(6 : index) : i64
    %658 = llvm.mul %627, %657  : i64
    %659 = llvm.mlir.constant(6 : index) : i64
    %660 = llvm.mul %632, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.mlir.constant(3 : index) : i64
    %663 = llvm.mul %637, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.add %664, %645  : i64
    %666 = llvm.getelementptr %656[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %655, %666 : !llvm.ptr<i32>
    %667 = llvm.add %642, %641  : i64
    llvm.br ^bb82(%667 : i64)
  ^bb84:  // pred: ^bb82
    %668 = llvm.add %637, %636  : i64
    llvm.br ^bb80(%668 : i64)
  ^bb85:  // pred: ^bb80
    %669 = llvm.add %632, %631  : i64
    llvm.br ^bb78(%669 : i64)
  ^bb86:  // pred: ^bb78
    %670 = llvm.add %627, %626  : i64
    llvm.br ^bb76(%670 : i64)
  ^bb87:  // pred: ^bb76
    %671 = llvm.mlir.constant(2 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    %673 = llvm.mlir.constant(2 : index) : i64
    %674 = llvm.mlir.constant(3 : index) : i64
    %675 = llvm.mlir.constant(1 : index) : i64
    %676 = llvm.mlir.constant(6 : index) : i64
    %677 = llvm.mlir.constant(6 : index) : i64
    %678 = llvm.mlir.constant(12 : index) : i64
    %679 = llvm.mlir.null : !llvm.ptr<i32>
    %680 = llvm.getelementptr %679[%678] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %681 = llvm.ptrtoint %680 : !llvm.ptr<i32> to i64
    %682 = llvm.mlir.constant(16 : index) : i64
    %683 = llvm.add %681, %682  : i64
    %684 = llvm.call @malloc(%683) : (i64) -> !llvm.ptr<i8>
    %685 = llvm.bitcast %684 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %686 = llvm.ptrtoint %685 : !llvm.ptr<i32> to i64
    %687 = llvm.mlir.constant(1 : index) : i64
    %688 = llvm.sub %682, %687  : i64
    %689 = llvm.add %686, %688  : i64
    %690 = llvm.urem %689, %682  : i64
    %691 = llvm.sub %689, %690  : i64
    %692 = llvm.inttoptr %691 : i64 to !llvm.ptr<i32>
    %693 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %694 = llvm.insertvalue %685, %693[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.insertvalue %692, %694[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.mlir.constant(0 : index) : i64
    %697 = llvm.insertvalue %696, %695[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.insertvalue %671, %697[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.insertvalue %672, %698[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %673, %699[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.insertvalue %674, %700[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.insertvalue %677, %701[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.insertvalue %676, %702[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.insertvalue %674, %703[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.insertvalue %675, %704[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.mlir.constant(0 : index) : i64
    %707 = llvm.mlir.constant(2 : index) : i64
    %708 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%706 : i64)
  ^bb88(%709: i64):  // 2 preds: ^bb87, ^bb98
    %710 = llvm.icmp "slt" %709, %707 : i64
    llvm.cond_br %710, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %711 = llvm.mlir.constant(0 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%711 : i64)
  ^bb90(%714: i64):  // 2 preds: ^bb89, ^bb97
    %715 = llvm.icmp "slt" %714, %712 : i64
    llvm.cond_br %715, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %716 = llvm.mlir.constant(0 : index) : i64
    %717 = llvm.mlir.constant(2 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%716 : i64)
  ^bb92(%719: i64):  // 2 preds: ^bb91, ^bb96
    %720 = llvm.icmp "slt" %719, %717 : i64
    llvm.cond_br %720, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %721 = llvm.mlir.constant(0 : index) : i64
    %722 = llvm.mlir.constant(3 : index) : i64
    %723 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%721 : i64)
  ^bb94(%724: i64):  // 2 preds: ^bb93, ^bb95
    %725 = llvm.icmp "slt" %724, %722 : i64
    llvm.cond_br %725, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %726 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %727 = llvm.mlir.constant(6 : index) : i64
    %728 = llvm.mul %709, %727  : i64
    %729 = llvm.mlir.constant(6 : index) : i64
    %730 = llvm.mul %714, %729  : i64
    %731 = llvm.add %728, %730  : i64
    %732 = llvm.mlir.constant(3 : index) : i64
    %733 = llvm.mul %719, %732  : i64
    %734 = llvm.add %731, %733  : i64
    %735 = llvm.add %734, %724  : i64
    %736 = llvm.getelementptr %726[%735] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %737 = llvm.load %736 : !llvm.ptr<i32>
    %738 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.mlir.constant(6 : index) : i64
    %740 = llvm.mul %24, %739  : i64
    %741 = llvm.mlir.constant(6 : index) : i64
    %742 = llvm.mul %714, %741  : i64
    %743 = llvm.add %740, %742  : i64
    %744 = llvm.mlir.constant(3 : index) : i64
    %745 = llvm.mul %719, %744  : i64
    %746 = llvm.add %743, %745  : i64
    %747 = llvm.add %746, %724  : i64
    %748 = llvm.getelementptr %738[%747] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %749 = llvm.load %748 : !llvm.ptr<i32>
    %750 = llvm.add %737, %749  : i32
    %751 = llvm.extractvalue %705[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %752 = llvm.mlir.constant(6 : index) : i64
    %753 = llvm.mul %709, %752  : i64
    %754 = llvm.mlir.constant(6 : index) : i64
    %755 = llvm.mul %714, %754  : i64
    %756 = llvm.add %753, %755  : i64
    %757 = llvm.mlir.constant(3 : index) : i64
    %758 = llvm.mul %719, %757  : i64
    %759 = llvm.add %756, %758  : i64
    %760 = llvm.add %759, %724  : i64
    %761 = llvm.getelementptr %751[%760] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %750, %761 : !llvm.ptr<i32>
    %762 = llvm.add %724, %723  : i64
    llvm.br ^bb94(%762 : i64)
  ^bb96:  // pred: ^bb94
    %763 = llvm.add %719, %718  : i64
    llvm.br ^bb92(%763 : i64)
  ^bb97:  // pred: ^bb92
    %764 = llvm.add %714, %713  : i64
    llvm.br ^bb90(%764 : i64)
  ^bb98:  // pred: ^bb90
    %765 = llvm.add %709, %708  : i64
    llvm.br ^bb88(%765 : i64)
  ^bb99:  // pred: ^bb88
    %766 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %767 = llvm.insertvalue %53, %766[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %768 = llvm.insertvalue %453, %767[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %769 = llvm.insertvalue %705, %768[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %769 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v0_0"], llvm.emit_c_interface, output_names = ["v8_0", "v2_0", "v3_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(5 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.getelementptr %101[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %122 = llvm.getelementptr %102[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(4 : i64) : i64
    %124 = llvm.extractvalue %86[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %125 = llvm.getelementptr %101[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.extractvalue %86[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %127 = llvm.getelementptr %102[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.mlir.constant(0 : i64) : i64
    %129 = llvm.getelementptr %92[%128] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %129 : !llvm.ptr<ptr<i8>>
    %130 = llvm.mlir.constant(4 : i64) : i64
    %131 = llvm.call @omTensorCreateUntyped(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.bitcast %133 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %135 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.bitcast %135 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%131, %132, %134, %136) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %137 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%131, %137) : (!llvm.ptr<i8>, i64) -> ()
    %138 = llvm.call @omTensorGetShape(%131) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %139 = llvm.call @omTensorGetStrides(%131) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %140 = llvm.mlir.constant(0 : i64) : i64
    %141 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %138[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %139[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(1 : i64) : i64
    %146 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %138[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %139[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(2 : i64) : i64
    %151 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %138[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.getelementptr %139[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %154 : !llvm.ptr<i64>
    %155 = llvm.mlir.constant(3 : i64) : i64
    %156 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %138[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.getelementptr %139[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.mlir.constant(1 : i64) : i64
    %161 = llvm.getelementptr %92[%160] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %131, %161 : !llvm.ptr<ptr<i8>>
    %162 = llvm.mlir.constant(4 : i64) : i64
    %163 = llvm.call @omTensorCreateUntyped(%162) : (i64) -> !llvm.ptr<i8>
    %164 = llvm.mlir.constant(1 : i64) : i64
    %165 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.bitcast %165 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %167 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.bitcast %167 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%163, %164, %166, %168) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %169 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%163, %169) : (!llvm.ptr<i8>, i64) -> ()
    %170 = llvm.call @omTensorGetShape(%163) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %171 = llvm.call @omTensorGetStrides(%163) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %172 = llvm.mlir.constant(0 : i64) : i64
    %173 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %170[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %171[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(1 : i64) : i64
    %178 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %170[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %171[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(2 : i64) : i64
    %183 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %170[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.getelementptr %171[%182] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.mlir.constant(3 : i64) : i64
    %188 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %170[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %171[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.mlir.constant(2 : i64) : i64
    %193 = llvm.getelementptr %92[%192] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %163, %193 : !llvm.ptr<ptr<i8>>
    %194 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %194 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<214 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<214 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


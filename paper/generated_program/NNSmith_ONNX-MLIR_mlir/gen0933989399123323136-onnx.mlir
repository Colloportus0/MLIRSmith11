module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 4 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<[[[[7, 3]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_6(dense<[[[[4, 5]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<[1, 1, 4, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 4, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v7_0", "v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg28, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %arg29, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.insertvalue %arg30, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.mlir.constant(1 : i64) : i64
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %44 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %51 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %69 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
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
    %80 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %81 = llvm.bitcast %80 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.insertvalue %81, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %104 = llvm.bitcast %103 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %105 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %106 = llvm.insertvalue %104, %105[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %104, %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.insertvalue %110, %109[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.insertvalue %112, %111[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.insertvalue %114, %113[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.insertvalue %116, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.insertvalue %120, %119[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.insertvalue %122, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.insertvalue %124, %123[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(8 : index) : i64
    %132 = llvm.mlir.constant(8 : index) : i64
    %133 = llvm.mlir.constant(8 : index) : i64
    %134 = llvm.mlir.null : !llvm.ptr<i32>
    %135 = llvm.getelementptr %134[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i32> to i64
    %137 = llvm.mlir.constant(16 : index) : i64
    %138 = llvm.add %136, %137  : i64
    %139 = llvm.call @malloc(%138) : (i64) -> !llvm.ptr<i8>
    %140 = llvm.bitcast %139 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<i32> to i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.sub %137, %142  : i64
    %144 = llvm.add %141, %143  : i64
    %145 = llvm.urem %144, %137  : i64
    %146 = llvm.sub %144, %145  : i64
    %147 = llvm.inttoptr %146 : i64 to !llvm.ptr<i32>
    %148 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %149 = llvm.insertvalue %140, %148[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %147, %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.insertvalue %151, %150[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %132, %156[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %129, %158[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %130, %159[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%161 : i64)
  ^bb1(%164: i64):  // 2 preds: ^bb0, ^bb11
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%166 : i64)
  ^bb3(%169: i64):  // 2 preds: ^bb2, ^bb10
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%171 : i64)
  ^bb5(%174: i64):  // 2 preds: ^bb4, ^bb9
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%176 : i64)
  ^bb7(%179: i64):  // 2 preds: ^bb6, ^bb8
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %181 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %164, %182  : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %169, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %174, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.add %189, %179  : i64
    %191 = llvm.getelementptr %181[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %192 = llvm.load %191 : !llvm.ptr<i32>
    %193 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(8 : index) : i64
    %195 = llvm.mul %164, %194  : i64
    %196 = llvm.mlir.constant(8 : index) : i64
    %197 = llvm.mul %169, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %174, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.add %201, %179  : i64
    %203 = llvm.getelementptr %193[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %192, %203 : !llvm.ptr<i32>
    %204 = llvm.add %179, %178  : i64
    llvm.br ^bb7(%204 : i64)
  ^bb9:  // pred: ^bb7
    %205 = llvm.add %174, %173  : i64
    llvm.br ^bb5(%205 : i64)
  ^bb10:  // pred: ^bb5
    %206 = llvm.add %169, %168  : i64
    llvm.br ^bb3(%206 : i64)
  ^bb11:  // pred: ^bb3
    %207 = llvm.add %164, %163  : i64
    llvm.br ^bb1(%207 : i64)
  ^bb12:  // pred: ^bb1
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%208 : i64)
  ^bb13(%211: i64):  // 2 preds: ^bb12, ^bb23
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%213 : i64)
  ^bb15(%216: i64):  // 2 preds: ^bb14, ^bb22
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%218 : i64)
  ^bb17(%221: i64):  // 2 preds: ^bb16, ^bb21
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%223 : i64)
  ^bb19(%226: i64):  // 2 preds: ^bb18, ^bb20
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.add %221, %228  : i64
    %230 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mul %211, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %216, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %221, %236  : i64
    %238 = llvm.add %235, %237  : i64
    %239 = llvm.add %238, %226  : i64
    %240 = llvm.getelementptr %230[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %241 = llvm.load %240 : !llvm.ptr<i32>
    %242 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.mlir.constant(8 : index) : i64
    %244 = llvm.mul %211, %243  : i64
    %245 = llvm.mlir.constant(8 : index) : i64
    %246 = llvm.mul %216, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %229, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.add %250, %226  : i64
    %252 = llvm.getelementptr %242[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %241, %252 : !llvm.ptr<i32>
    %253 = llvm.add %226, %225  : i64
    llvm.br ^bb19(%253 : i64)
  ^bb21:  // pred: ^bb19
    %254 = llvm.add %221, %220  : i64
    llvm.br ^bb17(%254 : i64)
  ^bb22:  // pred: ^bb17
    %255 = llvm.add %216, %215  : i64
    llvm.br ^bb15(%255 : i64)
  ^bb23:  // pred: ^bb15
    %256 = llvm.add %211, %210  : i64
    llvm.br ^bb13(%256 : i64)
  ^bb24:  // pred: ^bb13
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%257 : i64)
  ^bb25(%260: i64):  // 2 preds: ^bb24, ^bb35
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%262 : i64)
  ^bb27(%265: i64):  // 2 preds: ^bb26, ^bb34
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%267 : i64)
  ^bb29(%270: i64):  // 2 preds: ^bb28, ^bb33
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%272 : i64)
  ^bb31(%275: i64):  // 2 preds: ^bb30, ^bb32
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.add %270, %277  : i64
    %279 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %260, %280  : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mul %265, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %270, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %275  : i64
    %289 = llvm.getelementptr %279[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.load %289 : !llvm.ptr<i32>
    %291 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(8 : index) : i64
    %293 = llvm.mul %260, %292  : i64
    %294 = llvm.mlir.constant(8 : index) : i64
    %295 = llvm.mul %265, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %278, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.add %299, %275  : i64
    %301 = llvm.getelementptr %291[%300] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %290, %301 : !llvm.ptr<i32>
    %302 = llvm.add %275, %274  : i64
    llvm.br ^bb31(%302 : i64)
  ^bb33:  // pred: ^bb31
    %303 = llvm.add %270, %269  : i64
    llvm.br ^bb29(%303 : i64)
  ^bb34:  // pred: ^bb29
    %304 = llvm.add %265, %264  : i64
    llvm.br ^bb27(%304 : i64)
  ^bb35:  // pred: ^bb27
    %305 = llvm.add %260, %259  : i64
    llvm.br ^bb25(%305 : i64)
  ^bb36:  // pred: ^bb25
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%306 : i64)
  ^bb37(%309: i64):  // 2 preds: ^bb36, ^bb47
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%311 : i64)
  ^bb39(%314: i64):  // 2 preds: ^bb38, ^bb46
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%316 : i64)
  ^bb41(%319: i64):  // 2 preds: ^bb40, ^bb45
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%321 : i64)
  ^bb43(%324: i64):  // 2 preds: ^bb42, ^bb44
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %326 = llvm.mlir.constant(3 : index) : i64
    %327 = llvm.add %319, %326  : i64
    %328 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %309, %329  : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mul %314, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mul %319, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.add %336, %324  : i64
    %338 = llvm.getelementptr %328[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.load %338 : !llvm.ptr<i32>
    %340 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(8 : index) : i64
    %342 = llvm.mul %309, %341  : i64
    %343 = llvm.mlir.constant(8 : index) : i64
    %344 = llvm.mul %314, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %327, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.add %348, %324  : i64
    %350 = llvm.getelementptr %340[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %339, %350 : !llvm.ptr<i32>
    %351 = llvm.add %324, %323  : i64
    llvm.br ^bb43(%351 : i64)
  ^bb45:  // pred: ^bb43
    %352 = llvm.add %319, %318  : i64
    llvm.br ^bb41(%352 : i64)
  ^bb46:  // pred: ^bb41
    %353 = llvm.add %314, %313  : i64
    llvm.br ^bb39(%353 : i64)
  ^bb47:  // pred: ^bb39
    %354 = llvm.add %309, %308  : i64
    llvm.br ^bb37(%354 : i64)
  ^bb48:  // pred: ^bb37
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(8 : index) : i64
    %360 = llvm.mlir.constant(8 : index) : i64
    %361 = llvm.mlir.null : !llvm.ptr<i32>
    %362 = llvm.getelementptr %361[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i32> to i64
    %364 = llvm.mlir.constant(16 : index) : i64
    %365 = llvm.add %363, %364  : i64
    %366 = llvm.call @malloc(%365) : (i64) -> !llvm.ptr<i8>
    %367 = llvm.bitcast %366 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i32> to i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.sub %364, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.urem %371, %364  : i64
    %373 = llvm.sub %371, %372  : i64
    %374 = llvm.inttoptr %373 : i64 to !llvm.ptr<i32>
    %375 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %376 = llvm.insertvalue %367, %375[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %377 = llvm.insertvalue %374, %376[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.insertvalue %378, %377[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %380 = llvm.insertvalue %355, %379[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %381 = llvm.insertvalue %356, %380[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %382 = llvm.insertvalue %357, %381[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %383 = llvm.insertvalue %359, %382[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %384 = llvm.insertvalue %357, %383[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.insertvalue %358, %384[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%386 : i64)
  ^bb49(%389: i64):  // 2 preds: ^bb48, ^bb56
    %390 = llvm.icmp "slt" %389, %387 : i64
    llvm.cond_br %390, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%391 : i64)
  ^bb51(%394: i64):  // 2 preds: ^bb50, ^bb55
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%396 : i64)
  ^bb53(%399: i64):  // 2 preds: ^bb52, ^bb54
    %400 = llvm.icmp "slt" %399, %397 : i64
    llvm.cond_br %400, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %401 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.mlir.constant(8 : index) : i64
    %403 = llvm.mul %389, %402  : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mul %394, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.add %406, %399  : i64
    %408 = llvm.getelementptr %401[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %409 = llvm.load %408 : !llvm.ptr<i32>
    %410 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %411 = llvm.load %410 : !llvm.ptr<i32>
    %412 = llvm.icmp "slt" %409, %411 : i32
    %413 = llvm.select %412, %411, %409 : i1, i32
    %414 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %415 = llvm.load %414 : !llvm.ptr<i32>
    %416 = llvm.icmp "slt" %413, %415 : i32
    %417 = llvm.select %416, %413, %415 : i1, i32
    %418 = llvm.extractvalue %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.mlir.constant(8 : index) : i64
    %420 = llvm.mul %389, %419  : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mul %394, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.add %423, %399  : i64
    %425 = llvm.getelementptr %418[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %417, %425 : !llvm.ptr<i32>
    %426 = llvm.add %399, %398  : i64
    llvm.br ^bb53(%426 : i64)
  ^bb55:  // pred: ^bb53
    %427 = llvm.add %394, %393  : i64
    llvm.br ^bb51(%427 : i64)
  ^bb56:  // pred: ^bb51
    %428 = llvm.add %389, %388  : i64
    llvm.br ^bb49(%428 : i64)
  ^bb57:  // pred: ^bb49
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.null : !llvm.ptr<i64>
    %432 = llvm.getelementptr %431[%429] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %433 = llvm.ptrtoint %432 : !llvm.ptr<i64> to i64
    %434 = llvm.mlir.constant(16 : index) : i64
    %435 = llvm.add %433, %434  : i64
    %436 = llvm.call @malloc(%435) : (i64) -> !llvm.ptr<i8>
    %437 = llvm.bitcast %436 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %438 = llvm.ptrtoint %437 : !llvm.ptr<i64> to i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.sub %434, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.urem %441, %434  : i64
    %443 = llvm.sub %441, %442  : i64
    %444 = llvm.inttoptr %443 : i64 to !llvm.ptr<i64>
    %445 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %446 = llvm.insertvalue %437, %445[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.insertvalue %444, %446[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.insertvalue %448, %447[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.insertvalue %429, %449[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.insertvalue %430, %450[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%452 : i64)
  ^bb58(%455: i64):  // 2 preds: ^bb57, ^bb59
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %457 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.getelementptr %457[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %34, %458 : !llvm.ptr<i64>
    %459 = llvm.add %455, %454  : i64
    llvm.br ^bb58(%459 : i64)
  ^bb60:  // pred: ^bb58
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.null : !llvm.ptr<i64>
    %463 = llvm.getelementptr %462[%460] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %464 = llvm.ptrtoint %463 : !llvm.ptr<i64> to i64
    %465 = llvm.mlir.constant(16 : index) : i64
    %466 = llvm.add %464, %465  : i64
    %467 = llvm.call @malloc(%466) : (i64) -> !llvm.ptr<i8>
    %468 = llvm.bitcast %467 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %469 = llvm.ptrtoint %468 : !llvm.ptr<i64> to i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.sub %465, %470  : i64
    %472 = llvm.add %469, %471  : i64
    %473 = llvm.urem %472, %465  : i64
    %474 = llvm.sub %472, %473  : i64
    %475 = llvm.inttoptr %474 : i64 to !llvm.ptr<i64>
    %476 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %477 = llvm.insertvalue %468, %476[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.insertvalue %475, %477[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.insertvalue %479, %478[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.insertvalue %460, %480[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.insertvalue %461, %481[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%483 : i64)
  ^bb61(%486: i64):  // 2 preds: ^bb60, ^bb62
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %488 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.getelementptr %488[%486] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %490 = llvm.load %489 : !llvm.ptr<i64>
    %491 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %492 = llvm.load %491 : !llvm.ptr<i64>
    %493 = llvm.mul %490, %492  : i64
    %494 = llvm.extractvalue %482[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.getelementptr %494[%486] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %493, %495 : !llvm.ptr<i64>
    %496 = llvm.add %486, %485  : i64
    llvm.br ^bb61(%496 : i64)
  ^bb63:  // pred: ^bb61
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.null : !llvm.ptr<i1>
    %500 = llvm.getelementptr %499[%497] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %501 = llvm.ptrtoint %500 : !llvm.ptr<i1> to i64
    %502 = llvm.mlir.constant(16 : index) : i64
    %503 = llvm.add %501, %502  : i64
    %504 = llvm.call @malloc(%503) : (i64) -> !llvm.ptr<i8>
    %505 = llvm.bitcast %504 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %506 = llvm.ptrtoint %505 : !llvm.ptr<i1> to i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.sub %502, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.urem %509, %502  : i64
    %511 = llvm.sub %509, %510  : i64
    %512 = llvm.inttoptr %511 : i64 to !llvm.ptr<i1>
    %513 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %514 = llvm.insertvalue %505, %513[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %512, %514[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.insertvalue %516, %515[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.insertvalue %497, %517[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.insertvalue %498, %518[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(4 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%520 : i64)
  ^bb64(%523: i64):  // 2 preds: ^bb63, ^bb65
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %525 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.getelementptr %525[%523] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %527 = llvm.load %526 : !llvm.ptr<i64>
    %528 = llvm.extractvalue %482[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.getelementptr %528[%523] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %530 = llvm.load %529 : !llvm.ptr<i64>
    %531 = llvm.icmp "eq" %527, %530 : i64
    %532 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.getelementptr %532[%523] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %531, %533 : !llvm.ptr<i1>
    %534 = llvm.add %523, %522  : i64
    llvm.br ^bb64(%534 : i64)
  ^bb66:  // pred: ^bb64
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.null : !llvm.ptr<i64>
    %538 = llvm.getelementptr %537[%535] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %539 = llvm.ptrtoint %538 : !llvm.ptr<i64> to i64
    %540 = llvm.mlir.constant(16 : index) : i64
    %541 = llvm.add %539, %540  : i64
    %542 = llvm.call @malloc(%541) : (i64) -> !llvm.ptr<i8>
    %543 = llvm.bitcast %542 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %544 = llvm.ptrtoint %543 : !llvm.ptr<i64> to i64
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.sub %540, %545  : i64
    %547 = llvm.add %544, %546  : i64
    %548 = llvm.urem %547, %540  : i64
    %549 = llvm.sub %547, %548  : i64
    %550 = llvm.inttoptr %549 : i64 to !llvm.ptr<i64>
    %551 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %552 = llvm.insertvalue %543, %551[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.insertvalue %550, %552[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.insertvalue %554, %553[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %556 = llvm.insertvalue %535, %555[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %557 = llvm.insertvalue %536, %556[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(4 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%558 : i64)
  ^bb67(%561: i64):  // 2 preds: ^bb66, ^bb68
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %563 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.getelementptr %563[%561] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %565 = llvm.load %564 : !llvm.ptr<i1>
    %566 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.getelementptr %566[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %568 = llvm.load %567 : !llvm.ptr<i64>
    %569 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %570 = llvm.getelementptr %569[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %571 = llvm.load %570 : !llvm.ptr<i64>
    %572 = llvm.select %565, %568, %571 : i1, i64
    %573 = llvm.extractvalue %557[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %574 = llvm.getelementptr %573[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %572, %574 : !llvm.ptr<i64>
    %575 = llvm.add %561, %560  : i64
    llvm.br ^bb67(%575 : i64)
  ^bb69:  // pred: ^bb67
    %576 = llvm.extractvalue %557[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.getelementptr %576[%35] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %578 = llvm.load %577 : !llvm.ptr<i64>
    %579 = llvm.extractvalue %557[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.getelementptr %579[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %581 = llvm.load %580 : !llvm.ptr<i64>
    %582 = llvm.mlir.constant(4 : index) : i64
    %583 = llvm.mlir.constant(2 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.constant(8 : index) : i64
    %586 = llvm.mul %585, %581  : i64
    %587 = llvm.mul %586, %578  : i64
    %588 = llvm.mlir.null : !llvm.ptr<i32>
    %589 = llvm.getelementptr %588[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %590 = llvm.ptrtoint %589 : !llvm.ptr<i32> to i64
    %591 = llvm.mlir.constant(16 : index) : i64
    %592 = llvm.add %590, %591  : i64
    %593 = llvm.call @malloc(%592) : (i64) -> !llvm.ptr<i8>
    %594 = llvm.bitcast %593 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %595 = llvm.ptrtoint %594 : !llvm.ptr<i32> to i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.sub %591, %596  : i64
    %598 = llvm.add %595, %597  : i64
    %599 = llvm.urem %598, %591  : i64
    %600 = llvm.sub %598, %599  : i64
    %601 = llvm.inttoptr %600 : i64 to !llvm.ptr<i32>
    %602 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %603 = llvm.insertvalue %594, %602[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %604 = llvm.insertvalue %601, %603[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.insertvalue %605, %604[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.insertvalue %578, %606[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %581, %607[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %582, %608[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %583, %609[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %586, %610[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %585, %611[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %583, %612[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %584, %613[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%615 : i64)
  ^bb70(%617: i64):  // 2 preds: ^bb69, ^bb80
    %618 = llvm.icmp "slt" %617, %578 : i64
    llvm.cond_br %618, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %619 = llvm.mlir.constant(0 : index) : i64
    %620 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%619 : i64)
  ^bb72(%621: i64):  // 2 preds: ^bb71, ^bb79
    %622 = llvm.icmp "slt" %621, %581 : i64
    llvm.cond_br %622, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %623 = llvm.mlir.constant(0 : index) : i64
    %624 = llvm.mlir.constant(4 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%623 : i64)
  ^bb74(%626: i64):  // 2 preds: ^bb73, ^bb78
    %627 = llvm.icmp "slt" %626, %624 : i64
    llvm.cond_br %627, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %628 = llvm.mlir.constant(0 : index) : i64
    %629 = llvm.mlir.constant(2 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%628 : i64)
  ^bb76(%631: i64):  // 2 preds: ^bb75, ^bb77
    %632 = llvm.icmp "slt" %631, %629 : i64
    llvm.cond_br %632, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %633 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.mlir.constant(8 : index) : i64
    %635 = llvm.mul %35, %634  : i64
    %636 = llvm.mlir.constant(8 : index) : i64
    %637 = llvm.mul %35, %636  : i64
    %638 = llvm.add %635, %637  : i64
    %639 = llvm.mlir.constant(2 : index) : i64
    %640 = llvm.mul %626, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.add %641, %631  : i64
    %643 = llvm.getelementptr %633[%642] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %644 = llvm.load %643 : !llvm.ptr<i32>
    %645 = llvm.extractvalue %614[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.extractvalue %614[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.mul %617, %646  : i64
    %648 = llvm.mlir.constant(8 : index) : i64
    %649 = llvm.mul %621, %648  : i64
    %650 = llvm.add %647, %649  : i64
    %651 = llvm.mlir.constant(2 : index) : i64
    %652 = llvm.mul %626, %651  : i64
    %653 = llvm.add %650, %652  : i64
    %654 = llvm.add %653, %631  : i64
    %655 = llvm.getelementptr %645[%654] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %644, %655 : !llvm.ptr<i32>
    %656 = llvm.add %631, %630  : i64
    llvm.br ^bb76(%656 : i64)
  ^bb78:  // pred: ^bb76
    %657 = llvm.add %626, %625  : i64
    llvm.br ^bb74(%657 : i64)
  ^bb79:  // pred: ^bb74
    %658 = llvm.add %621, %620  : i64
    llvm.br ^bb72(%658 : i64)
  ^bb80:  // pred: ^bb72
    %659 = llvm.add %617, %616  : i64
    llvm.br ^bb70(%659 : i64)
  ^bb81:  // pred: ^bb70
    %660 = llvm.mlir.constant(1 : index) : i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.mlir.constant(4 : index) : i64
    %663 = llvm.mlir.constant(2 : index) : i64
    %664 = llvm.mlir.constant(1 : index) : i64
    %665 = llvm.mlir.constant(8 : index) : i64
    %666 = llvm.mlir.constant(8 : index) : i64
    %667 = llvm.mlir.constant(8 : index) : i64
    %668 = llvm.mlir.null : !llvm.ptr<i1>
    %669 = llvm.getelementptr %668[%667] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %670 = llvm.ptrtoint %669 : !llvm.ptr<i1> to i64
    %671 = llvm.mlir.constant(16 : index) : i64
    %672 = llvm.add %670, %671  : i64
    %673 = llvm.call @malloc(%672) : (i64) -> !llvm.ptr<i8>
    %674 = llvm.bitcast %673 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %675 = llvm.ptrtoint %674 : !llvm.ptr<i1> to i64
    %676 = llvm.mlir.constant(1 : index) : i64
    %677 = llvm.sub %671, %676  : i64
    %678 = llvm.add %675, %677  : i64
    %679 = llvm.urem %678, %671  : i64
    %680 = llvm.sub %678, %679  : i64
    %681 = llvm.inttoptr %680 : i64 to !llvm.ptr<i1>
    %682 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %683 = llvm.insertvalue %674, %682[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.insertvalue %681, %683[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %685 = llvm.mlir.constant(0 : index) : i64
    %686 = llvm.insertvalue %685, %684[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %687 = llvm.insertvalue %660, %686[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.insertvalue %661, %687[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.insertvalue %662, %688[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %690 = llvm.insertvalue %663, %689[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.insertvalue %666, %690[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %692 = llvm.insertvalue %665, %691[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %693 = llvm.insertvalue %663, %692[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.insertvalue %664, %693[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.mlir.constant(0 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    %697 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%695 : i64)
  ^bb82(%698: i64):  // 2 preds: ^bb81, ^bb92
    %699 = llvm.icmp "slt" %698, %696 : i64
    llvm.cond_br %699, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %700 = llvm.mlir.constant(0 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    %702 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%700 : i64)
  ^bb84(%703: i64):  // 2 preds: ^bb83, ^bb91
    %704 = llvm.icmp "slt" %703, %701 : i64
    llvm.cond_br %704, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %705 = llvm.mlir.constant(0 : index) : i64
    %706 = llvm.mlir.constant(4 : index) : i64
    %707 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%705 : i64)
  ^bb86(%708: i64):  // 2 preds: ^bb85, ^bb90
    %709 = llvm.icmp "slt" %708, %706 : i64
    llvm.cond_br %709, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %710 = llvm.mlir.constant(0 : index) : i64
    %711 = llvm.mlir.constant(2 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%710 : i64)
  ^bb88(%713: i64):  // 2 preds: ^bb87, ^bb89
    %714 = llvm.icmp "slt" %713, %711 : i64
    llvm.cond_br %714, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %715 = llvm.extractvalue %614[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %716 = llvm.extractvalue %614[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %717 = llvm.mul %698, %716  : i64
    %718 = llvm.mlir.constant(8 : index) : i64
    %719 = llvm.mul %703, %718  : i64
    %720 = llvm.add %717, %719  : i64
    %721 = llvm.mlir.constant(2 : index) : i64
    %722 = llvm.mul %708, %721  : i64
    %723 = llvm.add %720, %722  : i64
    %724 = llvm.add %723, %713  : i64
    %725 = llvm.getelementptr %715[%724] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %726 = llvm.load %725 : !llvm.ptr<i32>
    %727 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %728 = llvm.mlir.constant(8 : index) : i64
    %729 = llvm.mul %35, %728  : i64
    %730 = llvm.mlir.constant(8 : index) : i64
    %731 = llvm.mul %35, %730  : i64
    %732 = llvm.add %729, %731  : i64
    %733 = llvm.mlir.constant(2 : index) : i64
    %734 = llvm.mul %708, %733  : i64
    %735 = llvm.add %732, %734  : i64
    %736 = llvm.add %735, %713  : i64
    %737 = llvm.getelementptr %727[%736] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %738 = llvm.load %737 : !llvm.ptr<i32>
    %739 = llvm.icmp "sgt" %726, %738 : i32
    %740 = llvm.extractvalue %694[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.mlir.constant(8 : index) : i64
    %742 = llvm.mul %698, %741  : i64
    %743 = llvm.mlir.constant(8 : index) : i64
    %744 = llvm.mul %703, %743  : i64
    %745 = llvm.add %742, %744  : i64
    %746 = llvm.mlir.constant(2 : index) : i64
    %747 = llvm.mul %708, %746  : i64
    %748 = llvm.add %745, %747  : i64
    %749 = llvm.add %748, %713  : i64
    %750 = llvm.getelementptr %740[%749] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %739, %750 : !llvm.ptr<i1>
    %751 = llvm.add %713, %712  : i64
    llvm.br ^bb88(%751 : i64)
  ^bb90:  // pred: ^bb88
    %752 = llvm.add %708, %707  : i64
    llvm.br ^bb86(%752 : i64)
  ^bb91:  // pred: ^bb86
    %753 = llvm.add %703, %702  : i64
    llvm.br ^bb84(%753 : i64)
  ^bb92:  // pred: ^bb84
    %754 = llvm.add %698, %697  : i64
    llvm.br ^bb82(%754 : i64)
  ^bb93:  // pred: ^bb82
    %755 = llvm.mlir.constant(1 : index) : i64
    %756 = llvm.mlir.constant(1 : index) : i64
    %757 = llvm.mlir.constant(4 : index) : i64
    %758 = llvm.mlir.constant(2 : index) : i64
    %759 = llvm.mlir.constant(1 : index) : i64
    %760 = llvm.mlir.constant(8 : index) : i64
    %761 = llvm.mlir.constant(8 : index) : i64
    %762 = llvm.mlir.constant(8 : index) : i64
    %763 = llvm.mlir.null : !llvm.ptr<i32>
    %764 = llvm.getelementptr %763[%762] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %765 = llvm.ptrtoint %764 : !llvm.ptr<i32> to i64
    %766 = llvm.mlir.constant(16 : index) : i64
    %767 = llvm.add %765, %766  : i64
    %768 = llvm.call @malloc(%767) : (i64) -> !llvm.ptr<i8>
    %769 = llvm.bitcast %768 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %770 = llvm.ptrtoint %769 : !llvm.ptr<i32> to i64
    %771 = llvm.mlir.constant(1 : index) : i64
    %772 = llvm.sub %766, %771  : i64
    %773 = llvm.add %770, %772  : i64
    %774 = llvm.urem %773, %766  : i64
    %775 = llvm.sub %773, %774  : i64
    %776 = llvm.inttoptr %775 : i64 to !llvm.ptr<i32>
    %777 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %778 = llvm.insertvalue %769, %777[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %779 = llvm.insertvalue %776, %778[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %780 = llvm.mlir.constant(0 : index) : i64
    %781 = llvm.insertvalue %780, %779[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %782 = llvm.insertvalue %755, %781[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %783 = llvm.insertvalue %756, %782[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %784 = llvm.insertvalue %757, %783[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %785 = llvm.insertvalue %758, %784[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %786 = llvm.insertvalue %761, %785[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %787 = llvm.insertvalue %760, %786[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %788 = llvm.insertvalue %758, %787[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %789 = llvm.insertvalue %759, %788[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %790 = llvm.mlir.constant(0 : index) : i64
    %791 = llvm.mlir.constant(1 : index) : i64
    %792 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%790 : i64)
  ^bb94(%793: i64):  // 2 preds: ^bb93, ^bb104
    %794 = llvm.icmp "slt" %793, %791 : i64
    llvm.cond_br %794, ^bb95, ^bb105
  ^bb95:  // pred: ^bb94
    %795 = llvm.mlir.constant(0 : index) : i64
    %796 = llvm.mlir.constant(1 : index) : i64
    %797 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%795 : i64)
  ^bb96(%798: i64):  // 2 preds: ^bb95, ^bb103
    %799 = llvm.icmp "slt" %798, %796 : i64
    llvm.cond_br %799, ^bb97, ^bb104
  ^bb97:  // pred: ^bb96
    %800 = llvm.mlir.constant(0 : index) : i64
    %801 = llvm.mlir.constant(4 : index) : i64
    %802 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%800 : i64)
  ^bb98(%803: i64):  // 2 preds: ^bb97, ^bb102
    %804 = llvm.icmp "slt" %803, %801 : i64
    llvm.cond_br %804, ^bb99, ^bb103
  ^bb99:  // pred: ^bb98
    %805 = llvm.mlir.constant(0 : index) : i64
    %806 = llvm.mlir.constant(2 : index) : i64
    %807 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%805 : i64)
  ^bb100(%808: i64):  // 2 preds: ^bb99, ^bb101
    %809 = llvm.icmp "slt" %808, %806 : i64
    llvm.cond_br %809, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %810 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %811 = llvm.mlir.constant(8 : index) : i64
    %812 = llvm.mul %793, %811  : i64
    %813 = llvm.mlir.constant(8 : index) : i64
    %814 = llvm.mul %798, %813  : i64
    %815 = llvm.add %812, %814  : i64
    %816 = llvm.mlir.constant(2 : index) : i64
    %817 = llvm.mul %803, %816  : i64
    %818 = llvm.add %815, %817  : i64
    %819 = llvm.add %818, %808  : i64
    %820 = llvm.getelementptr %810[%819] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %821 = llvm.load %820 : !llvm.ptr<i32>
    %822 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %823 = llvm.mlir.constant(8 : index) : i64
    %824 = llvm.mul %798, %823  : i64
    %825 = llvm.mlir.constant(2 : index) : i64
    %826 = llvm.mul %803, %825  : i64
    %827 = llvm.add %824, %826  : i64
    %828 = llvm.add %827, %808  : i64
    %829 = llvm.getelementptr %822[%828] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %830 = llvm.load %829 : !llvm.ptr<i32>
    %831 = llvm.mul %821, %830  : i32
    %832 = llvm.extractvalue %789[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %833 = llvm.mlir.constant(8 : index) : i64
    %834 = llvm.mul %793, %833  : i64
    %835 = llvm.mlir.constant(8 : index) : i64
    %836 = llvm.mul %798, %835  : i64
    %837 = llvm.add %834, %836  : i64
    %838 = llvm.mlir.constant(2 : index) : i64
    %839 = llvm.mul %803, %838  : i64
    %840 = llvm.add %837, %839  : i64
    %841 = llvm.add %840, %808  : i64
    %842 = llvm.getelementptr %832[%841] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %831, %842 : !llvm.ptr<i32>
    %843 = llvm.add %808, %807  : i64
    llvm.br ^bb100(%843 : i64)
  ^bb102:  // pred: ^bb100
    %844 = llvm.add %803, %802  : i64
    llvm.br ^bb98(%844 : i64)
  ^bb103:  // pred: ^bb98
    %845 = llvm.add %798, %797  : i64
    llvm.br ^bb96(%845 : i64)
  ^bb104:  // pred: ^bb96
    %846 = llvm.add %793, %792  : i64
    llvm.br ^bb94(%846 : i64)
  ^bb105:  // pred: ^bb94
    %847 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %848 = llvm.insertvalue %385, %847[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %849 = llvm.insertvalue %694, %848[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %850 = llvm.insertvalue %789, %849[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %850 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v9_0", "v7_0", "v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v4_0", "v3_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %34, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %97[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %118, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %119 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %120 = llvm.extractvalue %119[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %121 = llvm.extractvalue %119[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %122 = llvm.extractvalue %119[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %123 = llvm.mlir.constant(3 : i64) : i64
    %124 = llvm.mlir.constant(24 : i64) : i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.bitcast %125 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %127 = llvm.mlir.constant(3 : i64) : i64
    %128 = llvm.call @omTensorCreateUntyped(%127) : (i64) -> !llvm.ptr<i8>
    %129 = llvm.mlir.constant(1 : i64) : i64
    %130 = llvm.extractvalue %120[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.bitcast %130 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %132 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.bitcast %132 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%128, %129, %131, %133) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %134 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%128, %134) : (!llvm.ptr<i8>, i64) -> ()
    %135 = llvm.call @omTensorGetShape(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %136 = llvm.call @omTensorGetStrides(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %137 = llvm.mlir.constant(0 : i64) : i64
    %138 = llvm.extractvalue %120[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.getelementptr %135[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %120[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.getelementptr %136[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.extractvalue %120[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.getelementptr %135[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %120[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.getelementptr %136[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.mlir.constant(2 : i64) : i64
    %148 = llvm.extractvalue %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.getelementptr %135[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.extractvalue %120[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.getelementptr %136[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.mlir.constant(0 : i64) : i64
    %153 = llvm.getelementptr %126[%152] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %128, %153 : !llvm.ptr<ptr<i8>>
    %154 = llvm.mlir.constant(4 : i64) : i64
    %155 = llvm.call @omTensorCreateUntyped(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %121[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %159 = llvm.extractvalue %121[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.bitcast %159 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%155, %156, %158, %160) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %161 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%155, %161) : (!llvm.ptr<i8>, i64) -> ()
    %162 = llvm.call @omTensorGetShape(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.call @omTensorGetStrides(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.extractvalue %121[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %162[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %121[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.getelementptr %163[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.extractvalue %121[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %162[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %121[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %163[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(2 : i64) : i64
    %175 = llvm.extractvalue %121[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %162[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %121[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %163[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(3 : i64) : i64
    %180 = llvm.extractvalue %121[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %162[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.extractvalue %121[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %163[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.mlir.constant(1 : i64) : i64
    %185 = llvm.getelementptr %126[%184] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %155, %185 : !llvm.ptr<ptr<i8>>
    %186 = llvm.mlir.constant(4 : i64) : i64
    %187 = llvm.call @omTensorCreateUntyped(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.mlir.constant(1 : i64) : i64
    %189 = llvm.extractvalue %122[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.bitcast %189 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %191 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.bitcast %191 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%187, %188, %190, %192) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %193 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%187, %193) : (!llvm.ptr<i8>, i64) -> ()
    %194 = llvm.call @omTensorGetShape(%187) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %195 = llvm.call @omTensorGetStrides(%187) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %196 = llvm.mlir.constant(0 : i64) : i64
    %197 = llvm.extractvalue %122[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %194[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %122[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %195[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.mlir.constant(1 : i64) : i64
    %202 = llvm.extractvalue %122[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.getelementptr %194[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %203 : !llvm.ptr<i64>
    %204 = llvm.extractvalue %122[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %195[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %205 : !llvm.ptr<i64>
    %206 = llvm.mlir.constant(2 : i64) : i64
    %207 = llvm.extractvalue %122[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.getelementptr %194[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %207, %208 : !llvm.ptr<i64>
    %209 = llvm.extractvalue %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %195[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.mlir.constant(3 : i64) : i64
    %212 = llvm.extractvalue %122[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.getelementptr %194[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %212, %213 : !llvm.ptr<i64>
    %214 = llvm.extractvalue %122[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %195[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.mlir.constant(2 : i64) : i64
    %217 = llvm.getelementptr %126[%216] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %187, %217 : !llvm.ptr<ptr<i8>>
    %218 = llvm.call @omTensorListCreate(%126, %123, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %218 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<208 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<208 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<206 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<206 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


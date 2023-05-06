module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 4 , 1] , \22name\22 : \22v8_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_11(dense<[[[[6]]], [[[7]]]]> : tensor<2x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_6(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v0_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v9_0", "v2_0", "v8_0"]} {
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
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %arg33, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg34, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg35, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg36, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg40, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg37, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg41, %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg38, %43[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg42, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg39, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg43, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : i64) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(4 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %68 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
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
    %90 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %91 = llvm.bitcast %90 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %93 = llvm.insertvalue %91, %92[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %97 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %98 = llvm.bitcast %97 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %99 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %100 = llvm.insertvalue %98, %99[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.constant(4 : index) : i64
    %105 = llvm.insertvalue %104, %103[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.insertvalue %106, %105[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>>
    %109 = llvm.bitcast %108 : !llvm.ptr<array<2 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %110 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %111 = llvm.insertvalue %109, %110[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.insertvalue %115, %114[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.insertvalue %117, %116[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.insertvalue %119, %118[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.insertvalue %121, %120[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.insertvalue %123, %122[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.insertvalue %125, %124[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.insertvalue %129, %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.null : !llvm.ptr<i32>
    %137 = llvm.getelementptr %136[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i32> to i64
    %139 = llvm.mlir.constant(16 : index) : i64
    %140 = llvm.add %138, %139  : i64
    %141 = llvm.call @malloc(%140) : (i64) -> !llvm.ptr<i8>
    %142 = llvm.bitcast %141 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.sub %139, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.urem %146, %139  : i64
    %148 = llvm.sub %146, %147  : i64
    %149 = llvm.inttoptr %148 : i64 to !llvm.ptr<i32>
    %150 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %151 = llvm.insertvalue %142, %150[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %131, %154[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %132, %155[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %133, %156[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %134, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %132, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %133, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %134, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %135, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%163 : i64)
  ^bb1(%166: i64):  // 2 preds: ^bb0, ^bb11
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%168 : i64)
  ^bb3(%171: i64):  // 2 preds: ^bb2, ^bb10
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%173 : i64)
  ^bb5(%176: i64):  // 2 preds: ^bb4, ^bb9
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%178 : i64)
  ^bb7(%181: i64):  // 2 preds: ^bb6, ^bb8
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %183 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.add %166, %171  : i64
    %185 = llvm.add %184, %176  : i64
    %186 = llvm.add %185, %181  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.add %166, %171  : i64
    %191 = llvm.add %190, %176  : i64
    %192 = llvm.add %191, %181  : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %188, %193 : !llvm.ptr<i32>
    %194 = llvm.add %181, %180  : i64
    llvm.br ^bb7(%194 : i64)
  ^bb9:  // pred: ^bb7
    %195 = llvm.add %176, %175  : i64
    llvm.br ^bb5(%195 : i64)
  ^bb10:  // pred: ^bb5
    %196 = llvm.add %171, %170  : i64
    llvm.br ^bb3(%196 : i64)
  ^bb11:  // pred: ^bb3
    %197 = llvm.add %166, %165  : i64
    llvm.br ^bb1(%197 : i64)
  ^bb12:  // pred: ^bb1
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%198 : i64)
  ^bb13(%201: i64):  // 2 preds: ^bb12, ^bb23
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%203 : i64)
  ^bb15(%206: i64):  // 2 preds: ^bb14, ^bb22
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%208 : i64)
  ^bb17(%211: i64):  // 2 preds: ^bb16, ^bb21
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%213 : i64)
  ^bb19(%216: i64):  // 2 preds: ^bb18, ^bb20
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.add %201, %218  : i64
    %220 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.add %201, %206  : i64
    %222 = llvm.add %221, %211  : i64
    %223 = llvm.add %222, %216  : i64
    %224 = llvm.getelementptr %220[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %225 = llvm.load %224 : !llvm.ptr<i32>
    %226 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.add %219, %206  : i64
    %228 = llvm.add %227, %211  : i64
    %229 = llvm.add %228, %216  : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %225, %230 : !llvm.ptr<i32>
    %231 = llvm.add %216, %215  : i64
    llvm.br ^bb19(%231 : i64)
  ^bb21:  // pred: ^bb19
    %232 = llvm.add %211, %210  : i64
    llvm.br ^bb17(%232 : i64)
  ^bb22:  // pred: ^bb17
    %233 = llvm.add %206, %205  : i64
    llvm.br ^bb15(%233 : i64)
  ^bb23:  // pred: ^bb15
    %234 = llvm.add %201, %200  : i64
    llvm.br ^bb13(%234 : i64)
  ^bb24:  // pred: ^bb13
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.null : !llvm.ptr<i32>
    %241 = llvm.getelementptr %240[%235] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i32> to i64
    %243 = llvm.mlir.constant(16 : index) : i64
    %244 = llvm.add %242, %243  : i64
    %245 = llvm.call @malloc(%244) : (i64) -> !llvm.ptr<i8>
    %246 = llvm.bitcast %245 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %247 = llvm.ptrtoint %246 : !llvm.ptr<i32> to i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.sub %243, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.urem %250, %243  : i64
    %252 = llvm.sub %250, %251  : i64
    %253 = llvm.inttoptr %252 : i64 to !llvm.ptr<i32>
    %254 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %255 = llvm.insertvalue %246, %254[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %253, %255[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.insertvalue %257, %256[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %235, %258[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %236, %259[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %237, %260[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %238, %261[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %236, %262[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %239, %265[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%267 : i64)
  ^bb25(%270: i64):  // 2 preds: ^bb24, ^bb35
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%272 : i64)
  ^bb27(%275: i64):  // 2 preds: ^bb26, ^bb34
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%277 : i64)
  ^bb29(%280: i64):  // 2 preds: ^bb28, ^bb33
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%282 : i64)
  ^bb31(%285: i64):  // 2 preds: ^bb30, ^bb32
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %287 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.add %270, %275  : i64
    %289 = llvm.add %288, %280  : i64
    %290 = llvm.add %289, %285  : i64
    %291 = llvm.getelementptr %287[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %292 = llvm.load %291 : !llvm.ptr<i32>
    %293 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.add %270, %275  : i64
    %295 = llvm.add %294, %280  : i64
    %296 = llvm.add %295, %285  : i64
    %297 = llvm.getelementptr %293[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %292, %297 : !llvm.ptr<i32>
    %298 = llvm.add %285, %284  : i64
    llvm.br ^bb31(%298 : i64)
  ^bb33:  // pred: ^bb31
    %299 = llvm.add %280, %279  : i64
    llvm.br ^bb29(%299 : i64)
  ^bb34:  // pred: ^bb29
    %300 = llvm.add %275, %274  : i64
    llvm.br ^bb27(%300 : i64)
  ^bb35:  // pred: ^bb27
    %301 = llvm.add %270, %269  : i64
    llvm.br ^bb25(%301 : i64)
  ^bb36:  // pred: ^bb25
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
    llvm.br ^bb37(%325 : i64)
  ^bb37(%328: i64):  // 2 preds: ^bb36, ^bb38
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %330 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %331 : !llvm.ptr<i64>
    %332 = llvm.add %328, %327  : i64
    llvm.br ^bb37(%332 : i64)
  ^bb39:  // pred: ^bb37
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.null : !llvm.ptr<i64>
    %336 = llvm.getelementptr %335[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i64> to i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.add %337, %338  : i64
    %340 = llvm.call @malloc(%339) : (i64) -> !llvm.ptr<i8>
    %341 = llvm.bitcast %340 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i64> to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %338, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.urem %345, %338  : i64
    %347 = llvm.sub %345, %346  : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr<i64>
    %349 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %333, %353[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %334, %354[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%356 : i64)
  ^bb40(%359: i64):  // 2 preds: ^bb39, ^bb41
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %361 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.getelementptr %361[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %363 = llvm.load %362 : !llvm.ptr<i64>
    %364 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %365 = llvm.load %364 : !llvm.ptr<i64>
    %366 = llvm.mul %363, %365  : i64
    %367 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %366, %368 : !llvm.ptr<i64>
    %369 = llvm.add %359, %358  : i64
    llvm.br ^bb40(%369 : i64)
  ^bb42:  // pred: ^bb40
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<i1>
    %373 = llvm.getelementptr %372[%370] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<i1> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i1> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<i1>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.insertvalue %370, %390[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %371, %391[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%393 : i64)
  ^bb43(%396: i64):  // 2 preds: ^bb42, ^bb44
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %398 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %400 = llvm.load %399 : !llvm.ptr<i64>
    %401 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.getelementptr %401[%396] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %403 = llvm.load %402 : !llvm.ptr<i64>
    %404 = llvm.icmp "eq" %400, %403 : i64
    %405 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.getelementptr %405[%396] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %404, %406 : !llvm.ptr<i1>
    %407 = llvm.add %396, %395  : i64
    llvm.br ^bb43(%407 : i64)
  ^bb45:  // pred: ^bb43
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.null : !llvm.ptr<i64>
    %411 = llvm.getelementptr %410[%408] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.ptrtoint %411 : !llvm.ptr<i64> to i64
    %413 = llvm.mlir.constant(16 : index) : i64
    %414 = llvm.add %412, %413  : i64
    %415 = llvm.call @malloc(%414) : (i64) -> !llvm.ptr<i8>
    %416 = llvm.bitcast %415 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i64> to i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.sub %413, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.urem %420, %413  : i64
    %422 = llvm.sub %420, %421  : i64
    %423 = llvm.inttoptr %422 : i64 to !llvm.ptr<i64>
    %424 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %425 = llvm.insertvalue %416, %424[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.insertvalue %423, %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.insertvalue %427, %426[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.insertvalue %408, %428[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.insertvalue %409, %429[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%431 : i64)
  ^bb46(%434: i64):  // 2 preds: ^bb45, ^bb47
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %436 = llvm.extractvalue %392[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.getelementptr %436[%434] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %438 = llvm.load %437 : !llvm.ptr<i1>
    %439 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.getelementptr %439[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %441 = llvm.load %440 : !llvm.ptr<i64>
    %442 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.getelementptr %442[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.load %443 : !llvm.ptr<i64>
    %445 = llvm.select %438, %441, %444 : i1, i64
    %446 = llvm.extractvalue %430[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.getelementptr %446[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %445, %447 : !llvm.ptr<i64>
    %448 = llvm.add %434, %433  : i64
    llvm.br ^bb46(%448 : i64)
  ^bb48:  // pred: ^bb46
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.null : !llvm.ptr<i32>
    %455 = llvm.getelementptr %454[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(16 : index) : i64
    %458 = llvm.add %456, %457  : i64
    %459 = llvm.call @malloc(%458) : (i64) -> !llvm.ptr<i8>
    %460 = llvm.bitcast %459 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %461 = llvm.ptrtoint %460 : !llvm.ptr<i32> to i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.sub %457, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.urem %464, %457  : i64
    %466 = llvm.sub %464, %465  : i64
    %467 = llvm.inttoptr %466 : i64 to !llvm.ptr<i32>
    %468 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %469 = llvm.insertvalue %460, %468[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %467, %469[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.insertvalue %471, %470[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %449, %472[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %450, %473[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %451, %474[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %452, %475[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%481 : i64)
  ^bb49(%484: i64):  // 2 preds: ^bb48, ^bb59
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%486 : i64)
  ^bb51(%489: i64):  // 2 preds: ^bb50, ^bb58
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%491 : i64)
  ^bb53(%494: i64):  // 2 preds: ^bb52, ^bb57
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%496 : i64)
  ^bb55(%499: i64):  // 2 preds: ^bb54, ^bb56
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %501 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.add %484, %49  : i64
    %503 = llvm.add %502, %49  : i64
    %504 = llvm.add %503, %49  : i64
    %505 = llvm.getelementptr %501[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %506 = llvm.load %505 : !llvm.ptr<i32>
    %507 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.add %484, %489  : i64
    %509 = llvm.add %508, %494  : i64
    %510 = llvm.add %509, %499  : i64
    %511 = llvm.getelementptr %507[%510] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %506, %511 : !llvm.ptr<i32>
    %512 = llvm.add %499, %498  : i64
    llvm.br ^bb55(%512 : i64)
  ^bb57:  // pred: ^bb55
    %513 = llvm.add %494, %493  : i64
    llvm.br ^bb53(%513 : i64)
  ^bb58:  // pred: ^bb53
    %514 = llvm.add %489, %488  : i64
    llvm.br ^bb51(%514 : i64)
  ^bb59:  // pred: ^bb51
    %515 = llvm.add %484, %483  : i64
    llvm.br ^bb49(%515 : i64)
  ^bb60:  // pred: ^bb49
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(4 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(4 : index) : i64
    %522 = llvm.mlir.constant(8 : index) : i64
    %523 = llvm.mlir.null : !llvm.ptr<i32>
    %524 = llvm.getelementptr %523[%522] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %525 = llvm.ptrtoint %524 : !llvm.ptr<i32> to i64
    %526 = llvm.mlir.constant(16 : index) : i64
    %527 = llvm.add %525, %526  : i64
    %528 = llvm.call @malloc(%527) : (i64) -> !llvm.ptr<i8>
    %529 = llvm.bitcast %528 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %530 = llvm.ptrtoint %529 : !llvm.ptr<i32> to i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.sub %526, %531  : i64
    %533 = llvm.add %530, %532  : i64
    %534 = llvm.urem %533, %526  : i64
    %535 = llvm.sub %533, %534  : i64
    %536 = llvm.inttoptr %535 : i64 to !llvm.ptr<i32>
    %537 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %538 = llvm.insertvalue %529, %537[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.insertvalue %536, %538[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.insertvalue %540, %539[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %516, %541[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %517, %542[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %518, %543[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %519, %544[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %521, %545[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %518, %546[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %519, %547[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.insertvalue %520, %548[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(2 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%550 : i64)
  ^bb61(%553: i64):  // 2 preds: ^bb60, ^bb71
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%555 : i64)
  ^bb63(%558: i64):  // 2 preds: ^bb62, ^bb70
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%560 : i64)
  ^bb65(%563: i64):  // 2 preds: ^bb64, ^bb69
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%565 : i64)
  ^bb67(%568: i64):  // 2 preds: ^bb66, ^bb68
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %570 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.add %553, %558  : i64
    %572 = llvm.add %571, %563  : i64
    %573 = llvm.add %572, %568  : i64
    %574 = llvm.getelementptr %570[%573] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.load %574 : !llvm.ptr<i32>
    %576 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.mlir.constant(4 : index) : i64
    %578 = llvm.mul %553, %577  : i64
    %579 = llvm.mlir.constant(4 : index) : i64
    %580 = llvm.mul %558, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.add %581, %563  : i64
    %583 = llvm.add %582, %568  : i64
    %584 = llvm.getelementptr %576[%583] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %575, %584 : !llvm.ptr<i32>
    %585 = llvm.add %568, %567  : i64
    llvm.br ^bb67(%585 : i64)
  ^bb69:  // pred: ^bb67
    %586 = llvm.add %563, %562  : i64
    llvm.br ^bb65(%586 : i64)
  ^bb70:  // pred: ^bb65
    %587 = llvm.add %558, %557  : i64
    llvm.br ^bb63(%587 : i64)
  ^bb71:  // pred: ^bb63
    %588 = llvm.add %553, %552  : i64
    llvm.br ^bb61(%588 : i64)
  ^bb72:  // pred: ^bb61
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(2 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%589 : i64)
  ^bb73(%592: i64):  // 2 preds: ^bb72, ^bb83
    %593 = llvm.icmp "slt" %592, %590 : i64
    llvm.cond_br %593, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%594 : i64)
  ^bb75(%597: i64):  // 2 preds: ^bb74, ^bb82
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%599 : i64)
  ^bb77(%602: i64):  // 2 preds: ^bb76, ^bb81
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%604 : i64)
  ^bb79(%607: i64):  // 2 preds: ^bb78, ^bb80
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.add %602, %609  : i64
    %611 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.add %592, %597  : i64
    %613 = llvm.add %612, %602  : i64
    %614 = llvm.add %613, %607  : i64
    %615 = llvm.getelementptr %611[%614] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %616 = llvm.load %615 : !llvm.ptr<i32>
    %617 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.mlir.constant(4 : index) : i64
    %619 = llvm.mul %592, %618  : i64
    %620 = llvm.mlir.constant(4 : index) : i64
    %621 = llvm.mul %597, %620  : i64
    %622 = llvm.add %619, %621  : i64
    %623 = llvm.add %622, %610  : i64
    %624 = llvm.add %623, %607  : i64
    %625 = llvm.getelementptr %617[%624] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %616, %625 : !llvm.ptr<i32>
    %626 = llvm.add %607, %606  : i64
    llvm.br ^bb79(%626 : i64)
  ^bb81:  // pred: ^bb79
    %627 = llvm.add %602, %601  : i64
    llvm.br ^bb77(%627 : i64)
  ^bb82:  // pred: ^bb77
    %628 = llvm.add %597, %596  : i64
    llvm.br ^bb75(%628 : i64)
  ^bb83:  // pred: ^bb75
    %629 = llvm.add %592, %591  : i64
    llvm.br ^bb73(%629 : i64)
  ^bb84:  // pred: ^bb73
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(2 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%630 : i64)
  ^bb85(%633: i64):  // 2 preds: ^bb84, ^bb95
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%635 : i64)
  ^bb87(%638: i64):  // 2 preds: ^bb86, ^bb94
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%640 : i64)
  ^bb89(%643: i64):  // 2 preds: ^bb88, ^bb93
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%645 : i64)
  ^bb91(%648: i64):  // 2 preds: ^bb90, ^bb92
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %650 = llvm.mlir.constant(2 : index) : i64
    %651 = llvm.add %643, %650  : i64
    %652 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.add %633, %638  : i64
    %654 = llvm.add %653, %643  : i64
    %655 = llvm.add %654, %648  : i64
    %656 = llvm.getelementptr %652[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %657 = llvm.load %656 : !llvm.ptr<i32>
    %658 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.mlir.constant(4 : index) : i64
    %660 = llvm.mul %633, %659  : i64
    %661 = llvm.mlir.constant(4 : index) : i64
    %662 = llvm.mul %638, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.add %663, %651  : i64
    %665 = llvm.add %664, %648  : i64
    %666 = llvm.getelementptr %658[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %657, %666 : !llvm.ptr<i32>
    %667 = llvm.add %648, %647  : i64
    llvm.br ^bb91(%667 : i64)
  ^bb93:  // pred: ^bb91
    %668 = llvm.add %643, %642  : i64
    llvm.br ^bb89(%668 : i64)
  ^bb94:  // pred: ^bb89
    %669 = llvm.add %638, %637  : i64
    llvm.br ^bb87(%669 : i64)
  ^bb95:  // pred: ^bb87
    %670 = llvm.add %633, %632  : i64
    llvm.br ^bb85(%670 : i64)
  ^bb96:  // pred: ^bb85
    %671 = llvm.mlir.constant(0 : index) : i64
    %672 = llvm.mlir.constant(2 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%671 : i64)
  ^bb97(%674: i64):  // 2 preds: ^bb96, ^bb107
    %675 = llvm.icmp "slt" %674, %672 : i64
    llvm.cond_br %675, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %676 = llvm.mlir.constant(0 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%676 : i64)
  ^bb99(%679: i64):  // 2 preds: ^bb98, ^bb106
    %680 = llvm.icmp "slt" %679, %677 : i64
    llvm.cond_br %680, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %681 = llvm.mlir.constant(0 : index) : i64
    %682 = llvm.mlir.constant(1 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%681 : i64)
  ^bb101(%684: i64):  // 2 preds: ^bb100, ^bb105
    %685 = llvm.icmp "slt" %684, %682 : i64
    llvm.cond_br %685, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(1 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%686 : i64)
  ^bb103(%689: i64):  // 2 preds: ^bb102, ^bb104
    %690 = llvm.icmp "slt" %689, %687 : i64
    llvm.cond_br %690, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %691 = llvm.mlir.constant(3 : index) : i64
    %692 = llvm.add %684, %691  : i64
    %693 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.add %674, %679  : i64
    %695 = llvm.add %694, %684  : i64
    %696 = llvm.add %695, %689  : i64
    %697 = llvm.getelementptr %693[%696] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %698 = llvm.load %697 : !llvm.ptr<i32>
    %699 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.mlir.constant(4 : index) : i64
    %701 = llvm.mul %674, %700  : i64
    %702 = llvm.mlir.constant(4 : index) : i64
    %703 = llvm.mul %679, %702  : i64
    %704 = llvm.add %701, %703  : i64
    %705 = llvm.add %704, %692  : i64
    %706 = llvm.add %705, %689  : i64
    %707 = llvm.getelementptr %699[%706] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %698, %707 : !llvm.ptr<i32>
    %708 = llvm.add %689, %688  : i64
    llvm.br ^bb103(%708 : i64)
  ^bb105:  // pred: ^bb103
    %709 = llvm.add %684, %683  : i64
    llvm.br ^bb101(%709 : i64)
  ^bb106:  // pred: ^bb101
    %710 = llvm.add %679, %678  : i64
    llvm.br ^bb99(%710 : i64)
  ^bb107:  // pred: ^bb99
    %711 = llvm.add %674, %673  : i64
    llvm.br ^bb97(%711 : i64)
  ^bb108:  // pred: ^bb97
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.null : !llvm.ptr<i64>
    %715 = llvm.getelementptr %714[%712] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %716 = llvm.ptrtoint %715 : !llvm.ptr<i64> to i64
    %717 = llvm.mlir.constant(16 : index) : i64
    %718 = llvm.add %716, %717  : i64
    %719 = llvm.call @malloc(%718) : (i64) -> !llvm.ptr<i8>
    %720 = llvm.bitcast %719 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %721 = llvm.ptrtoint %720 : !llvm.ptr<i64> to i64
    %722 = llvm.mlir.constant(1 : index) : i64
    %723 = llvm.sub %717, %722  : i64
    %724 = llvm.add %721, %723  : i64
    %725 = llvm.urem %724, %717  : i64
    %726 = llvm.sub %724, %725  : i64
    %727 = llvm.inttoptr %726 : i64 to !llvm.ptr<i64>
    %728 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %729 = llvm.insertvalue %720, %728[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %730 = llvm.insertvalue %727, %729[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %731 = llvm.mlir.constant(0 : index) : i64
    %732 = llvm.insertvalue %731, %730[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %733 = llvm.insertvalue %712, %732[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %734 = llvm.insertvalue %713, %733[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %735 = llvm.mlir.constant(0 : index) : i64
    %736 = llvm.mlir.constant(4 : index) : i64
    %737 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%735 : i64)
  ^bb109(%738: i64):  // 2 preds: ^bb108, ^bb110
    %739 = llvm.icmp "slt" %738, %736 : i64
    llvm.cond_br %739, ^bb110, ^bb111
  ^bb110:  // pred: ^bb109
    %740 = llvm.extractvalue %734[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %741 = llvm.getelementptr %740[%738] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %741 : !llvm.ptr<i64>
    %742 = llvm.add %738, %737  : i64
    llvm.br ^bb109(%742 : i64)
  ^bb111:  // pred: ^bb109
    %743 = llvm.mlir.constant(4 : index) : i64
    %744 = llvm.mlir.constant(1 : index) : i64
    %745 = llvm.mlir.null : !llvm.ptr<i64>
    %746 = llvm.getelementptr %745[%743] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %747 = llvm.ptrtoint %746 : !llvm.ptr<i64> to i64
    %748 = llvm.mlir.constant(16 : index) : i64
    %749 = llvm.add %747, %748  : i64
    %750 = llvm.call @malloc(%749) : (i64) -> !llvm.ptr<i8>
    %751 = llvm.bitcast %750 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %752 = llvm.ptrtoint %751 : !llvm.ptr<i64> to i64
    %753 = llvm.mlir.constant(1 : index) : i64
    %754 = llvm.sub %748, %753  : i64
    %755 = llvm.add %752, %754  : i64
    %756 = llvm.urem %755, %748  : i64
    %757 = llvm.sub %755, %756  : i64
    %758 = llvm.inttoptr %757 : i64 to !llvm.ptr<i64>
    %759 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %760 = llvm.insertvalue %751, %759[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %761 = llvm.insertvalue %758, %760[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %762 = llvm.mlir.constant(0 : index) : i64
    %763 = llvm.insertvalue %762, %761[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %764 = llvm.insertvalue %743, %763[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %765 = llvm.insertvalue %744, %764[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %766 = llvm.mlir.constant(0 : index) : i64
    %767 = llvm.mlir.constant(4 : index) : i64
    %768 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%766 : i64)
  ^bb112(%769: i64):  // 2 preds: ^bb111, ^bb113
    %770 = llvm.icmp "slt" %769, %767 : i64
    llvm.cond_br %770, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %771 = llvm.extractvalue %734[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %772 = llvm.getelementptr %771[%769] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %773 = llvm.load %772 : !llvm.ptr<i64>
    %774 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %775 = llvm.load %774 : !llvm.ptr<i64>
    %776 = llvm.mul %773, %775  : i64
    %777 = llvm.extractvalue %765[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %778 = llvm.getelementptr %777[%769] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %776, %778 : !llvm.ptr<i64>
    %779 = llvm.add %769, %768  : i64
    llvm.br ^bb112(%779 : i64)
  ^bb114:  // pred: ^bb112
    %780 = llvm.mlir.constant(4 : index) : i64
    %781 = llvm.mlir.constant(1 : index) : i64
    %782 = llvm.mlir.null : !llvm.ptr<i1>
    %783 = llvm.getelementptr %782[%780] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %784 = llvm.ptrtoint %783 : !llvm.ptr<i1> to i64
    %785 = llvm.mlir.constant(16 : index) : i64
    %786 = llvm.add %784, %785  : i64
    %787 = llvm.call @malloc(%786) : (i64) -> !llvm.ptr<i8>
    %788 = llvm.bitcast %787 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %789 = llvm.ptrtoint %788 : !llvm.ptr<i1> to i64
    %790 = llvm.mlir.constant(1 : index) : i64
    %791 = llvm.sub %785, %790  : i64
    %792 = llvm.add %789, %791  : i64
    %793 = llvm.urem %792, %785  : i64
    %794 = llvm.sub %792, %793  : i64
    %795 = llvm.inttoptr %794 : i64 to !llvm.ptr<i1>
    %796 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %797 = llvm.insertvalue %788, %796[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %798 = llvm.insertvalue %795, %797[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %799 = llvm.mlir.constant(0 : index) : i64
    %800 = llvm.insertvalue %799, %798[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %801 = llvm.insertvalue %780, %800[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %802 = llvm.insertvalue %781, %801[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %803 = llvm.mlir.constant(0 : index) : i64
    %804 = llvm.mlir.constant(4 : index) : i64
    %805 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%803 : i64)
  ^bb115(%806: i64):  // 2 preds: ^bb114, ^bb116
    %807 = llvm.icmp "slt" %806, %804 : i64
    llvm.cond_br %807, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %808 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %809 = llvm.getelementptr %808[%806] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %810 = llvm.load %809 : !llvm.ptr<i64>
    %811 = llvm.extractvalue %765[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %812 = llvm.getelementptr %811[%806] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %813 = llvm.load %812 : !llvm.ptr<i64>
    %814 = llvm.icmp "eq" %810, %813 : i64
    %815 = llvm.extractvalue %802[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %816 = llvm.getelementptr %815[%806] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %814, %816 : !llvm.ptr<i1>
    %817 = llvm.add %806, %805  : i64
    llvm.br ^bb115(%817 : i64)
  ^bb117:  // pred: ^bb115
    %818 = llvm.mlir.constant(4 : index) : i64
    %819 = llvm.mlir.constant(1 : index) : i64
    %820 = llvm.mlir.null : !llvm.ptr<i64>
    %821 = llvm.getelementptr %820[%818] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %822 = llvm.ptrtoint %821 : !llvm.ptr<i64> to i64
    %823 = llvm.mlir.constant(16 : index) : i64
    %824 = llvm.add %822, %823  : i64
    %825 = llvm.call @malloc(%824) : (i64) -> !llvm.ptr<i8>
    %826 = llvm.bitcast %825 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %827 = llvm.ptrtoint %826 : !llvm.ptr<i64> to i64
    %828 = llvm.mlir.constant(1 : index) : i64
    %829 = llvm.sub %823, %828  : i64
    %830 = llvm.add %827, %829  : i64
    %831 = llvm.urem %830, %823  : i64
    %832 = llvm.sub %830, %831  : i64
    %833 = llvm.inttoptr %832 : i64 to !llvm.ptr<i64>
    %834 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %835 = llvm.insertvalue %826, %834[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %836 = llvm.insertvalue %833, %835[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %837 = llvm.mlir.constant(0 : index) : i64
    %838 = llvm.insertvalue %837, %836[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %839 = llvm.insertvalue %818, %838[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %840 = llvm.insertvalue %819, %839[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %841 = llvm.mlir.constant(0 : index) : i64
    %842 = llvm.mlir.constant(4 : index) : i64
    %843 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb118(%841 : i64)
  ^bb118(%844: i64):  // 2 preds: ^bb117, ^bb119
    %845 = llvm.icmp "slt" %844, %842 : i64
    llvm.cond_br %845, ^bb119, ^bb120
  ^bb119:  // pred: ^bb118
    %846 = llvm.extractvalue %802[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %847 = llvm.getelementptr %846[%844] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %848 = llvm.load %847 : !llvm.ptr<i1>
    %849 = llvm.extractvalue %734[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %850 = llvm.getelementptr %849[%844] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %851 = llvm.load %850 : !llvm.ptr<i64>
    %852 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %853 = llvm.getelementptr %852[%844] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %854 = llvm.load %853 : !llvm.ptr<i64>
    %855 = llvm.select %848, %851, %854 : i1, i64
    %856 = llvm.extractvalue %840[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %857 = llvm.getelementptr %856[%844] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %855, %857 : !llvm.ptr<i64>
    %858 = llvm.add %844, %843  : i64
    llvm.br ^bb118(%858 : i64)
  ^bb120:  // pred: ^bb118
    %859 = llvm.mlir.constant(2 : index) : i64
    %860 = llvm.mlir.constant(1 : index) : i64
    %861 = llvm.mlir.constant(4 : index) : i64
    %862 = llvm.mlir.constant(1 : index) : i64
    %863 = llvm.mlir.constant(1 : index) : i64
    %864 = llvm.mlir.constant(4 : index) : i64
    %865 = llvm.mlir.constant(8 : index) : i64
    %866 = llvm.mlir.null : !llvm.ptr<i32>
    %867 = llvm.getelementptr %866[%865] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %868 = llvm.ptrtoint %867 : !llvm.ptr<i32> to i64
    %869 = llvm.mlir.constant(16 : index) : i64
    %870 = llvm.add %868, %869  : i64
    %871 = llvm.call @malloc(%870) : (i64) -> !llvm.ptr<i8>
    %872 = llvm.bitcast %871 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %873 = llvm.ptrtoint %872 : !llvm.ptr<i32> to i64
    %874 = llvm.mlir.constant(1 : index) : i64
    %875 = llvm.sub %869, %874  : i64
    %876 = llvm.add %873, %875  : i64
    %877 = llvm.urem %876, %869  : i64
    %878 = llvm.sub %876, %877  : i64
    %879 = llvm.inttoptr %878 : i64 to !llvm.ptr<i32>
    %880 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %881 = llvm.insertvalue %872, %880[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %882 = llvm.insertvalue %879, %881[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %883 = llvm.mlir.constant(0 : index) : i64
    %884 = llvm.insertvalue %883, %882[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %885 = llvm.insertvalue %859, %884[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %886 = llvm.insertvalue %860, %885[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %887 = llvm.insertvalue %861, %886[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %888 = llvm.insertvalue %862, %887[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %889 = llvm.insertvalue %864, %888[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %890 = llvm.insertvalue %861, %889[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %891 = llvm.insertvalue %862, %890[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %892 = llvm.insertvalue %863, %891[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %893 = llvm.mlir.constant(0 : index) : i64
    %894 = llvm.mlir.constant(2 : index) : i64
    %895 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%893 : i64)
  ^bb121(%896: i64):  // 2 preds: ^bb120, ^bb131
    %897 = llvm.icmp "slt" %896, %894 : i64
    llvm.cond_br %897, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %898 = llvm.mlir.constant(0 : index) : i64
    %899 = llvm.mlir.constant(1 : index) : i64
    %900 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%898 : i64)
  ^bb123(%901: i64):  // 2 preds: ^bb122, ^bb130
    %902 = llvm.icmp "slt" %901, %899 : i64
    llvm.cond_br %902, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %903 = llvm.mlir.constant(0 : index) : i64
    %904 = llvm.mlir.constant(4 : index) : i64
    %905 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%903 : i64)
  ^bb125(%906: i64):  // 2 preds: ^bb124, ^bb129
    %907 = llvm.icmp "slt" %906, %904 : i64
    llvm.cond_br %907, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %908 = llvm.mlir.constant(0 : index) : i64
    %909 = llvm.mlir.constant(1 : index) : i64
    %910 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%908 : i64)
  ^bb127(%911: i64):  // 2 preds: ^bb126, ^bb128
    %912 = llvm.icmp "slt" %911, %909 : i64
    llvm.cond_br %912, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %913 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %914 = llvm.mlir.constant(4 : index) : i64
    %915 = llvm.mul %896, %914  : i64
    %916 = llvm.mlir.constant(4 : index) : i64
    %917 = llvm.mul %49, %916  : i64
    %918 = llvm.add %915, %917  : i64
    %919 = llvm.add %918, %906  : i64
    %920 = llvm.add %919, %49  : i64
    %921 = llvm.getelementptr %913[%920] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %922 = llvm.load %921 : !llvm.ptr<i32>
    %923 = llvm.extractvalue %892[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %924 = llvm.mlir.constant(4 : index) : i64
    %925 = llvm.mul %896, %924  : i64
    %926 = llvm.mlir.constant(4 : index) : i64
    %927 = llvm.mul %901, %926  : i64
    %928 = llvm.add %925, %927  : i64
    %929 = llvm.add %928, %906  : i64
    %930 = llvm.add %929, %911  : i64
    %931 = llvm.getelementptr %923[%930] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %922, %931 : !llvm.ptr<i32>
    %932 = llvm.add %911, %910  : i64
    llvm.br ^bb127(%932 : i64)
  ^bb129:  // pred: ^bb127
    %933 = llvm.add %906, %905  : i64
    llvm.br ^bb125(%933 : i64)
  ^bb130:  // pred: ^bb125
    %934 = llvm.add %901, %900  : i64
    llvm.br ^bb123(%934 : i64)
  ^bb131:  // pred: ^bb123
    %935 = llvm.add %896, %895  : i64
    llvm.br ^bb121(%935 : i64)
  ^bb132:  // pred: ^bb121
    %936 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %937 = llvm.insertvalue %266, %936[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %938 = llvm.insertvalue %480, %937[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %939 = llvm.insertvalue %892, %938[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %939 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v0_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v9_0", "v2_0", "v8_0"]} {
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
    %36 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %37 = llvm.extractvalue %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %36[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %36[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.extractvalue %36[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.extractvalue %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.extractvalue %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.extractvalue %36[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.extractvalue %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.extractvalue %36[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.getelementptr %0[%126] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %128 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %129 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %130 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %131 = llvm.call @omTensorGetDataPtr(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %133 = llvm.insertvalue %132, %130[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %132, %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.insertvalue %135, %134[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.call @omTensorGetShape(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.call @omTensorGetStrides(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %139 = llvm.mlir.constant(0 : i64) : i64
    %140 = llvm.getelementptr %137[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %136[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %138[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.getelementptr %137[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %145[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %138[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.getelementptr %137[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.insertvalue %155, %152[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %138[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %158 = llvm.load %157 : !llvm.ptr<i64>
    %159 = llvm.insertvalue %158, %156[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(3 : i64) : i64
    %161 = llvm.getelementptr %137[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %162 = llvm.load %161 : !llvm.ptr<i64>
    %163 = llvm.insertvalue %162, %159[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %138[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %165 = llvm.load %164 : !llvm.ptr<i64>
    %166 = llvm.insertvalue %165, %163[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %166, %129 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %168 = llvm.extractvalue %167[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.extractvalue %167[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %170 = llvm.extractvalue %167[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %171 = llvm.mlir.constant(3 : i64) : i64
    %172 = llvm.mlir.constant(24 : i64) : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr<i8>
    %174 = llvm.bitcast %173 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %175 = llvm.mlir.constant(4 : i64) : i64
    %176 = llvm.call @omTensorCreateUntyped(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.mlir.constant(1 : i64) : i64
    %178 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.bitcast %178 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %180 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.bitcast %180 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%176, %177, %179, %181) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %182 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%176, %182) : (!llvm.ptr<i8>, i64) -> ()
    %183 = llvm.call @omTensorGetShape(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.call @omTensorGetStrides(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %185 = llvm.mlir.constant(0 : i64) : i64
    %186 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %183[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %184[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(1 : i64) : i64
    %191 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %183[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %184[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(2 : i64) : i64
    %196 = llvm.extractvalue %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %183[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.getelementptr %184[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(3 : i64) : i64
    %201 = llvm.extractvalue %168[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %183[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %184[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(0 : i64) : i64
    %206 = llvm.getelementptr %174[%205] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %176, %206 : !llvm.ptr<ptr<i8>>
    %207 = llvm.mlir.constant(4 : i64) : i64
    %208 = llvm.call @omTensorCreateUntyped(%207) : (i64) -> !llvm.ptr<i8>
    %209 = llvm.mlir.constant(1 : i64) : i64
    %210 = llvm.extractvalue %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.bitcast %210 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %212 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.bitcast %212 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%208, %209, %211, %213) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %214 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%208, %214) : (!llvm.ptr<i8>, i64) -> ()
    %215 = llvm.call @omTensorGetShape(%208) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %216 = llvm.call @omTensorGetStrides(%208) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %217 = llvm.mlir.constant(0 : i64) : i64
    %218 = llvm.extractvalue %169[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.getelementptr %215[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %218, %219 : !llvm.ptr<i64>
    %220 = llvm.extractvalue %169[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.getelementptr %216[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %220, %221 : !llvm.ptr<i64>
    %222 = llvm.mlir.constant(1 : i64) : i64
    %223 = llvm.extractvalue %169[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.getelementptr %215[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %223, %224 : !llvm.ptr<i64>
    %225 = llvm.extractvalue %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.getelementptr %216[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %225, %226 : !llvm.ptr<i64>
    %227 = llvm.mlir.constant(2 : i64) : i64
    %228 = llvm.extractvalue %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.getelementptr %215[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.extractvalue %169[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.getelementptr %216[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %230, %231 : !llvm.ptr<i64>
    %232 = llvm.mlir.constant(3 : i64) : i64
    %233 = llvm.extractvalue %169[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %215[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.extractvalue %169[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.getelementptr %216[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %235, %236 : !llvm.ptr<i64>
    %237 = llvm.mlir.constant(1 : i64) : i64
    %238 = llvm.getelementptr %174[%237] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %208, %238 : !llvm.ptr<ptr<i8>>
    %239 = llvm.mlir.constant(4 : i64) : i64
    %240 = llvm.call @omTensorCreateUntyped(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.mlir.constant(1 : i64) : i64
    %242 = llvm.extractvalue %170[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.bitcast %242 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %244 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.bitcast %244 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%240, %241, %243, %245) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %246 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%240, %246) : (!llvm.ptr<i8>, i64) -> ()
    %247 = llvm.call @omTensorGetShape(%240) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %248 = llvm.call @omTensorGetStrides(%240) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %249 = llvm.mlir.constant(0 : i64) : i64
    %250 = llvm.extractvalue %170[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.getelementptr %247[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %250, %251 : !llvm.ptr<i64>
    %252 = llvm.extractvalue %170[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.getelementptr %248[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %252, %253 : !llvm.ptr<i64>
    %254 = llvm.mlir.constant(1 : i64) : i64
    %255 = llvm.extractvalue %170[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.getelementptr %247[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %255, %256 : !llvm.ptr<i64>
    %257 = llvm.extractvalue %170[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.getelementptr %248[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %257, %258 : !llvm.ptr<i64>
    %259 = llvm.mlir.constant(2 : i64) : i64
    %260 = llvm.extractvalue %170[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.getelementptr %247[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %261 : !llvm.ptr<i64>
    %262 = llvm.extractvalue %170[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.getelementptr %248[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %262, %263 : !llvm.ptr<i64>
    %264 = llvm.mlir.constant(3 : i64) : i64
    %265 = llvm.extractvalue %170[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.getelementptr %247[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %265, %266 : !llvm.ptr<i64>
    %267 = llvm.extractvalue %170[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.getelementptr %248[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %267, %268 : !llvm.ptr<i64>
    %269 = llvm.mlir.constant(2 : i64) : i64
    %270 = llvm.getelementptr %174[%269] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %240, %270 : !llvm.ptr<ptr<i8>>
    %271 = llvm.call @omTensorListCreate(%174, %171, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %271 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<282 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<282 x i8>> to !llvm.ptr<i8>
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


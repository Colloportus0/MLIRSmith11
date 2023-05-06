module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 5] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr<i32>, %arg17: !llvm.ptr<i32>, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: !llvm.ptr<i32>, %arg28: !llvm.ptr<i32>, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: !llvm.ptr<i32>, %arg39: !llvm.ptr<i32>, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: i64, %arg45: i64, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: !llvm.ptr<i32>, %arg50: !llvm.ptr<i32>, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64, %arg55: i64, %arg56: i64, %arg57: i64, %arg58: i64, %arg59: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v0_0", "v4_0", "v3_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v9_0", "v10_0", "v6_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %19 = llvm.insertvalue %arg16, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg20, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg21, %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg22, %27[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %31 = llvm.insertvalue %arg27, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg28, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg29, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg30, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg34, %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg31, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg35, %36[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg32, %37[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg36, %38[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg33, %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg37, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %43 = llvm.insertvalue %arg38, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg39, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg40, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg41, %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg45, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %arg42, %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %arg46, %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %arg43, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %arg47, %50[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %arg44, %51[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %arg48, %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %55 = llvm.insertvalue %arg49, %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %arg50, %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %arg51, %56[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %arg52, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %arg56, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %arg53, %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %arg57, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %arg54, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %arg58, %62[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %arg55, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %arg59, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
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
    %79 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %80 = llvm.bitcast %79 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %82 = llvm.insertvalue %80, %81[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %86 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %87 = llvm.bitcast %86 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %89 = llvm.insertvalue %87, %88[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %87, %89[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.insertvalue %91, %90[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.insertvalue %93, %92[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mlir.null : !llvm.ptr<i32>
    %105 = llvm.getelementptr %104[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %123 = llvm.insertvalue %97, %122[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %98, %123[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %99, %124[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %100, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %102, %126[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %99, %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %100, %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %101, %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %142 = llvm.mlir.constant(2 : index) : i64
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
    %151 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.getelementptr %151[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.load %152 : !llvm.ptr<i32>
    %154 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %134, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %139, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %144  : i64
    %161 = llvm.add %160, %149  : i64
    %162 = llvm.getelementptr %154[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.sub %153, %163  : i32
    %165 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %134, %166  : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mul %139, %168  : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.add %170, %144  : i64
    %172 = llvm.add %171, %149  : i64
    %173 = llvm.getelementptr %165[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %173 : !llvm.ptr<i32>
    %174 = llvm.add %149, %148  : i64
    llvm.br ^bb7(%174 : i64)
  ^bb9:  // pred: ^bb7
    %175 = llvm.add %144, %143  : i64
    llvm.br ^bb5(%175 : i64)
  ^bb10:  // pred: ^bb5
    %176 = llvm.add %139, %138  : i64
    llvm.br ^bb3(%176 : i64)
  ^bb11:  // pred: ^bb3
    %177 = llvm.add %134, %133  : i64
    llvm.br ^bb1(%177 : i64)
  ^bb12:  // pred: ^bb1
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.null : !llvm.ptr<i64>
    %181 = llvm.getelementptr %180[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<i64> to i64
    %183 = llvm.mlir.constant(16 : index) : i64
    %184 = llvm.add %182, %183  : i64
    %185 = llvm.call @malloc(%184) : (i64) -> !llvm.ptr<i8>
    %186 = llvm.bitcast %185 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %187 = llvm.ptrtoint %186 : !llvm.ptr<i64> to i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.sub %183, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.urem %190, %183  : i64
    %192 = llvm.sub %190, %191  : i64
    %193 = llvm.inttoptr %192 : i64 to !llvm.ptr<i64>
    %194 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %195 = llvm.insertvalue %186, %194[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.insertvalue %197, %196[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %178, %198[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %179, %199[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(4 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%201 : i64)
  ^bb13(%204: i64):  // 2 preds: ^bb12, ^bb14
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %206 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.getelementptr %206[%204] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %207 : !llvm.ptr<i64>
    %208 = llvm.add %204, %203  : i64
    llvm.br ^bb13(%208 : i64)
  ^bb15:  // pred: ^bb13
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.null : !llvm.ptr<i64>
    %212 = llvm.getelementptr %211[%209] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i64> to i64
    %214 = llvm.mlir.constant(16 : index) : i64
    %215 = llvm.add %213, %214  : i64
    %216 = llvm.call @malloc(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.bitcast %216 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<i64> to i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.sub %214, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.urem %221, %214  : i64
    %223 = llvm.sub %221, %222  : i64
    %224 = llvm.inttoptr %223 : i64 to !llvm.ptr<i64>
    %225 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %226 = llvm.insertvalue %217, %225[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %224, %226[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.insertvalue %228, %227[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %209, %229[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %210, %230[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%232 : i64)
  ^bb16(%235: i64):  // 2 preds: ^bb15, ^bb17
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %237 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.getelementptr %237[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %239 = llvm.load %238 : !llvm.ptr<i64>
    %240 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %241 = llvm.load %240 : !llvm.ptr<i64>
    %242 = llvm.mul %239, %241  : i64
    %243 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.getelementptr %243[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %242, %244 : !llvm.ptr<i64>
    %245 = llvm.add %235, %234  : i64
    llvm.br ^bb16(%245 : i64)
  ^bb18:  // pred: ^bb16
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.null : !llvm.ptr<i1>
    %249 = llvm.getelementptr %248[%246] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i1> to i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.add %250, %251  : i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr<i8>
    %254 = llvm.bitcast %253 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i1> to i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.sub %251, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.urem %258, %251  : i64
    %260 = llvm.sub %258, %259  : i64
    %261 = llvm.inttoptr %260 : i64 to !llvm.ptr<i1>
    %262 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %263 = llvm.insertvalue %254, %262[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.insertvalue %261, %263[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.insertvalue %265, %264[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.insertvalue %246, %266[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.insertvalue %247, %267[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(4 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%269 : i64)
  ^bb19(%272: i64):  // 2 preds: ^bb18, ^bb20
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %274 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.getelementptr %274[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %276 = llvm.load %275 : !llvm.ptr<i64>
    %277 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.getelementptr %277[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.load %278 : !llvm.ptr<i64>
    %280 = llvm.icmp "eq" %276, %279 : i64
    %281 = llvm.extractvalue %268[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.getelementptr %281[%272] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %280, %282 : !llvm.ptr<i1>
    %283 = llvm.add %272, %271  : i64
    llvm.br ^bb19(%283 : i64)
  ^bb21:  // pred: ^bb19
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.null : !llvm.ptr<i64>
    %287 = llvm.getelementptr %286[%284] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i64> to i64
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr<i8>
    %292 = llvm.bitcast %291 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i64> to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %289, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %289  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr<i64>
    %300 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %284, %304[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%307 : i64)
  ^bb22(%310: i64):  // 2 preds: ^bb21, ^bb23
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %312 = llvm.extractvalue %268[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%310] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %314 = llvm.load %313 : !llvm.ptr<i1>
    %315 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.getelementptr %315[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %317 = llvm.load %316 : !llvm.ptr<i64>
    %318 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.getelementptr %318[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %320 = llvm.load %319 : !llvm.ptr<i64>
    %321 = llvm.select %314, %317, %320 : i1, i64
    %322 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.getelementptr %322[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %321, %323 : !llvm.ptr<i64>
    %324 = llvm.add %310, %309  : i64
    llvm.br ^bb22(%324 : i64)
  ^bb24:  // pred: ^bb22
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.null : !llvm.ptr<i32>
    %333 = llvm.getelementptr %332[%331] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<i32> to i64
    %335 = llvm.mlir.constant(16 : index) : i64
    %336 = llvm.add %334, %335  : i64
    %337 = llvm.call @malloc(%336) : (i64) -> !llvm.ptr<i8>
    %338 = llvm.bitcast %337 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.sub %335, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.urem %342, %335  : i64
    %344 = llvm.sub %342, %343  : i64
    %345 = llvm.inttoptr %344 : i64 to !llvm.ptr<i32>
    %346 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %347 = llvm.insertvalue %338, %346[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %345, %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.insertvalue %349, %348[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %325, %350[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %326, %351[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %327, %352[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %328, %353[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %330, %354[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %327, %355[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %328, %356[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %329, %357[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%359 : i64)
  ^bb25(%362: i64):  // 2 preds: ^bb24, ^bb35
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%364 : i64)
  ^bb27(%367: i64):  // 2 preds: ^bb26, ^bb34
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%369 : i64)
  ^bb29(%372: i64):  // 2 preds: ^bb28, ^bb33
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%374 : i64)
  ^bb31(%377: i64):  // 2 preds: ^bb30, ^bb32
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %379 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mul %67, %380  : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %67, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.add %384, %372  : i64
    %386 = llvm.add %385, %67  : i64
    %387 = llvm.getelementptr %379[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %388 = llvm.load %387 : !llvm.ptr<i32>
    %389 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %362, %390  : i64
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mul %367, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.add %394, %372  : i64
    %396 = llvm.add %395, %377  : i64
    %397 = llvm.getelementptr %389[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %388, %397 : !llvm.ptr<i32>
    %398 = llvm.add %377, %376  : i64
    llvm.br ^bb31(%398 : i64)
  ^bb33:  // pred: ^bb31
    %399 = llvm.add %372, %371  : i64
    llvm.br ^bb29(%399 : i64)
  ^bb34:  // pred: ^bb29
    %400 = llvm.add %367, %366  : i64
    llvm.br ^bb27(%400 : i64)
  ^bb35:  // pred: ^bb27
    %401 = llvm.add %362, %361  : i64
    llvm.br ^bb25(%401 : i64)
  ^bb36:  // pred: ^bb25
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(2 : index) : i64
    %408 = llvm.mlir.constant(2 : index) : i64
    %409 = llvm.mlir.null : !llvm.ptr<i32>
    %410 = llvm.getelementptr %409[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %411 = llvm.ptrtoint %410 : !llvm.ptr<i32> to i64
    %412 = llvm.mlir.constant(16 : index) : i64
    %413 = llvm.add %411, %412  : i64
    %414 = llvm.call @malloc(%413) : (i64) -> !llvm.ptr<i8>
    %415 = llvm.bitcast %414 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i32> to i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.sub %412, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.urem %419, %412  : i64
    %421 = llvm.sub %419, %420  : i64
    %422 = llvm.inttoptr %421 : i64 to !llvm.ptr<i32>
    %423 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %424 = llvm.insertvalue %415, %423[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %422, %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.insertvalue %426, %425[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %402, %427[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %403, %428[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %404, %429[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %405, %430[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %407, %431[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %404, %432[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %405, %433[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %406, %434[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%436 : i64)
  ^bb37(%439: i64):  // 2 preds: ^bb36, ^bb47
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%441 : i64)
  ^bb39(%444: i64):  // 2 preds: ^bb38, ^bb46
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(2 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%446 : i64)
  ^bb41(%449: i64):  // 2 preds: ^bb40, ^bb45
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%451 : i64)
  ^bb43(%454: i64):  // 2 preds: ^bb42, ^bb44
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %456 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mul %439, %457  : i64
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mul %444, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.add %461, %449  : i64
    %463 = llvm.add %462, %454  : i64
    %464 = llvm.getelementptr %456[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.load %464 : !llvm.ptr<i32>
    %466 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %439, %467  : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %444, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.add %471, %449  : i64
    %473 = llvm.add %472, %454  : i64
    %474 = llvm.getelementptr %466[%473] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %465, %474 : !llvm.ptr<i32>
    %475 = llvm.add %454, %453  : i64
    llvm.br ^bb43(%475 : i64)
  ^bb45:  // pred: ^bb43
    %476 = llvm.add %449, %448  : i64
    llvm.br ^bb41(%476 : i64)
  ^bb46:  // pred: ^bb41
    %477 = llvm.add %444, %443  : i64
    llvm.br ^bb39(%477 : i64)
  ^bb47:  // pred: ^bb39
    %478 = llvm.add %439, %438  : i64
    llvm.br ^bb37(%478 : i64)
  ^bb48:  // pred: ^bb37
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.null : !llvm.ptr<i64>
    %487 = llvm.getelementptr %486[%485] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i64> to i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.add %488, %489  : i64
    %491 = llvm.call @malloc(%490) : (i64) -> !llvm.ptr<i8>
    %492 = llvm.bitcast %491 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i64> to i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.sub %489, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.urem %496, %489  : i64
    %498 = llvm.sub %496, %497  : i64
    %499 = llvm.inttoptr %498 : i64 to !llvm.ptr<i64>
    %500 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %501 = llvm.insertvalue %492, %500[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %479, %504[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %480, %505[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %481, %506[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %482, %507[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %484, %508[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %481, %509[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %482, %510[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %483, %511[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%513 : i64)
  ^bb49(%516: i64):  // 2 preds: ^bb48, ^bb59
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%518 : i64)
  ^bb51(%521: i64):  // 2 preds: ^bb50, ^bb58
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%523 : i64)
  ^bb53(%526: i64):  // 2 preds: ^bb52, ^bb57
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%528 : i64)
  ^bb55(%531: i64):  // 2 preds: ^bb54, ^bb56
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %533 = llvm.extractvalue %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mul %516, %534  : i64
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mul %521, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.add %538, %526  : i64
    %540 = llvm.add %539, %531  : i64
    %541 = llvm.getelementptr %533[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %542 = llvm.load %541 : !llvm.ptr<i32>
    %543 = llvm.sext %542 : i32 to i64
    %544 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mul %516, %545  : i64
    %547 = llvm.mlir.constant(2 : index) : i64
    %548 = llvm.mul %521, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.add %549, %526  : i64
    %551 = llvm.add %550, %531  : i64
    %552 = llvm.getelementptr %544[%551] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %543, %552 : !llvm.ptr<i64>
    %553 = llvm.add %531, %530  : i64
    llvm.br ^bb55(%553 : i64)
  ^bb57:  // pred: ^bb55
    %554 = llvm.add %526, %525  : i64
    llvm.br ^bb53(%554 : i64)
  ^bb58:  // pred: ^bb53
    %555 = llvm.add %521, %520  : i64
    llvm.br ^bb51(%555 : i64)
  ^bb59:  // pred: ^bb51
    %556 = llvm.add %516, %515  : i64
    llvm.br ^bb49(%556 : i64)
  ^bb60:  // pred: ^bb49
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mlir.constant(5 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(10 : index) : i64
    %563 = llvm.mlir.constant(10 : index) : i64
    %564 = llvm.mlir.constant(10 : index) : i64
    %565 = llvm.mlir.null : !llvm.ptr<i32>
    %566 = llvm.getelementptr %565[%564] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %567 = llvm.ptrtoint %566 : !llvm.ptr<i32> to i64
    %568 = llvm.mlir.constant(16 : index) : i64
    %569 = llvm.add %567, %568  : i64
    %570 = llvm.call @malloc(%569) : (i64) -> !llvm.ptr<i8>
    %571 = llvm.bitcast %570 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %572 = llvm.ptrtoint %571 : !llvm.ptr<i32> to i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.sub %568, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.urem %575, %568  : i64
    %577 = llvm.sub %575, %576  : i64
    %578 = llvm.inttoptr %577 : i64 to !llvm.ptr<i32>
    %579 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %580 = llvm.insertvalue %571, %579[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.insertvalue %578, %580[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.insertvalue %582, %581[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %557, %583[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %558, %584[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %559, %585[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %560, %586[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %563, %587[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %562, %588[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %560, %589[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %561, %590[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%592 : i64)
  ^bb61(%595: i64):  // 2 preds: ^bb60, ^bb71
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %597 = llvm.mlir.constant(0 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%597 : i64)
  ^bb63(%600: i64):  // 2 preds: ^bb62, ^bb70
    %601 = llvm.icmp "slt" %600, %598 : i64
    llvm.cond_br %601, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%602 : i64)
  ^bb65(%605: i64):  // 2 preds: ^bb64, ^bb69
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%607 : i64)
  ^bb67(%610: i64):  // 2 preds: ^bb66, ^bb68
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %612 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mul %595, %613  : i64
    %615 = llvm.mlir.constant(2 : index) : i64
    %616 = llvm.mul %600, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.add %617, %605  : i64
    %619 = llvm.add %618, %610  : i64
    %620 = llvm.getelementptr %612[%619] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %621 = llvm.load %620 : !llvm.ptr<i32>
    %622 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.mlir.constant(10 : index) : i64
    %624 = llvm.mul %595, %623  : i64
    %625 = llvm.mlir.constant(10 : index) : i64
    %626 = llvm.mul %600, %625  : i64
    %627 = llvm.add %624, %626  : i64
    %628 = llvm.mlir.constant(5 : index) : i64
    %629 = llvm.mul %605, %628  : i64
    %630 = llvm.add %627, %629  : i64
    %631 = llvm.add %630, %610  : i64
    %632 = llvm.getelementptr %622[%631] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %621, %632 : !llvm.ptr<i32>
    %633 = llvm.add %610, %609  : i64
    llvm.br ^bb67(%633 : i64)
  ^bb69:  // pred: ^bb67
    %634 = llvm.add %605, %604  : i64
    llvm.br ^bb65(%634 : i64)
  ^bb70:  // pred: ^bb65
    %635 = llvm.add %600, %599  : i64
    llvm.br ^bb63(%635 : i64)
  ^bb71:  // pred: ^bb63
    %636 = llvm.add %595, %594  : i64
    llvm.br ^bb61(%636 : i64)
  ^bb72:  // pred: ^bb61
    %637 = llvm.mlir.constant(0 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%637 : i64)
  ^bb73(%640: i64):  // 2 preds: ^bb72, ^bb83
    %641 = llvm.icmp "slt" %640, %638 : i64
    llvm.cond_br %641, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %642 = llvm.mlir.constant(0 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    %644 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%642 : i64)
  ^bb75(%645: i64):  // 2 preds: ^bb74, ^bb82
    %646 = llvm.icmp "slt" %645, %643 : i64
    llvm.cond_br %646, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %647 = llvm.mlir.constant(0 : index) : i64
    %648 = llvm.mlir.constant(2 : index) : i64
    %649 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%647 : i64)
  ^bb77(%650: i64):  // 2 preds: ^bb76, ^bb81
    %651 = llvm.icmp "slt" %650, %648 : i64
    llvm.cond_br %651, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %652 = llvm.mlir.constant(0 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    %654 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%652 : i64)
  ^bb79(%655: i64):  // 2 preds: ^bb78, ^bb80
    %656 = llvm.icmp "slt" %655, %653 : i64
    llvm.cond_br %656, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.add %655, %657  : i64
    %659 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %660 = llvm.mlir.constant(2 : index) : i64
    %661 = llvm.mul %640, %660  : i64
    %662 = llvm.mlir.constant(2 : index) : i64
    %663 = llvm.mul %645, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.add %664, %650  : i64
    %666 = llvm.add %665, %655  : i64
    %667 = llvm.getelementptr %659[%666] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %668 = llvm.load %667 : !llvm.ptr<i32>
    %669 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.mlir.constant(10 : index) : i64
    %671 = llvm.mul %640, %670  : i64
    %672 = llvm.mlir.constant(10 : index) : i64
    %673 = llvm.mul %645, %672  : i64
    %674 = llvm.add %671, %673  : i64
    %675 = llvm.mlir.constant(5 : index) : i64
    %676 = llvm.mul %650, %675  : i64
    %677 = llvm.add %674, %676  : i64
    %678 = llvm.add %677, %658  : i64
    %679 = llvm.getelementptr %669[%678] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %668, %679 : !llvm.ptr<i32>
    %680 = llvm.add %655, %654  : i64
    llvm.br ^bb79(%680 : i64)
  ^bb81:  // pred: ^bb79
    %681 = llvm.add %650, %649  : i64
    llvm.br ^bb77(%681 : i64)
  ^bb82:  // pred: ^bb77
    %682 = llvm.add %645, %644  : i64
    llvm.br ^bb75(%682 : i64)
  ^bb83:  // pred: ^bb75
    %683 = llvm.add %640, %639  : i64
    llvm.br ^bb73(%683 : i64)
  ^bb84:  // pred: ^bb73
    %684 = llvm.mlir.constant(0 : index) : i64
    %685 = llvm.mlir.constant(1 : index) : i64
    %686 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%684 : i64)
  ^bb85(%687: i64):  // 2 preds: ^bb84, ^bb95
    %688 = llvm.icmp "slt" %687, %685 : i64
    llvm.cond_br %688, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %689 = llvm.mlir.constant(0 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%689 : i64)
  ^bb87(%692: i64):  // 2 preds: ^bb86, ^bb94
    %693 = llvm.icmp "slt" %692, %690 : i64
    llvm.cond_br %693, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %694 = llvm.mlir.constant(0 : index) : i64
    %695 = llvm.mlir.constant(2 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%694 : i64)
  ^bb89(%697: i64):  // 2 preds: ^bb88, ^bb93
    %698 = llvm.icmp "slt" %697, %695 : i64
    llvm.cond_br %698, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %699 = llvm.mlir.constant(0 : index) : i64
    %700 = llvm.mlir.constant(1 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%699 : i64)
  ^bb91(%702: i64):  // 2 preds: ^bb90, ^bb92
    %703 = llvm.icmp "slt" %702, %700 : i64
    llvm.cond_br %703, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %704 = llvm.mlir.constant(2 : index) : i64
    %705 = llvm.add %702, %704  : i64
    %706 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.mlir.constant(2 : index) : i64
    %708 = llvm.mul %687, %707  : i64
    %709 = llvm.mlir.constant(2 : index) : i64
    %710 = llvm.mul %692, %709  : i64
    %711 = llvm.add %708, %710  : i64
    %712 = llvm.add %711, %697  : i64
    %713 = llvm.add %712, %702  : i64
    %714 = llvm.getelementptr %706[%713] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %715 = llvm.load %714 : !llvm.ptr<i32>
    %716 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %717 = llvm.mlir.constant(10 : index) : i64
    %718 = llvm.mul %687, %717  : i64
    %719 = llvm.mlir.constant(10 : index) : i64
    %720 = llvm.mul %692, %719  : i64
    %721 = llvm.add %718, %720  : i64
    %722 = llvm.mlir.constant(5 : index) : i64
    %723 = llvm.mul %697, %722  : i64
    %724 = llvm.add %721, %723  : i64
    %725 = llvm.add %724, %705  : i64
    %726 = llvm.getelementptr %716[%725] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %715, %726 : !llvm.ptr<i32>
    %727 = llvm.add %702, %701  : i64
    llvm.br ^bb91(%727 : i64)
  ^bb93:  // pred: ^bb91
    %728 = llvm.add %697, %696  : i64
    llvm.br ^bb89(%728 : i64)
  ^bb94:  // pred: ^bb89
    %729 = llvm.add %692, %691  : i64
    llvm.br ^bb87(%729 : i64)
  ^bb95:  // pred: ^bb87
    %730 = llvm.add %687, %686  : i64
    llvm.br ^bb85(%730 : i64)
  ^bb96:  // pred: ^bb85
    %731 = llvm.mlir.constant(0 : index) : i64
    %732 = llvm.mlir.constant(1 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%731 : i64)
  ^bb97(%734: i64):  // 2 preds: ^bb96, ^bb107
    %735 = llvm.icmp "slt" %734, %732 : i64
    llvm.cond_br %735, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %736 = llvm.mlir.constant(0 : index) : i64
    %737 = llvm.mlir.constant(1 : index) : i64
    %738 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%736 : i64)
  ^bb99(%739: i64):  // 2 preds: ^bb98, ^bb106
    %740 = llvm.icmp "slt" %739, %737 : i64
    llvm.cond_br %740, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %741 = llvm.mlir.constant(0 : index) : i64
    %742 = llvm.mlir.constant(2 : index) : i64
    %743 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%741 : i64)
  ^bb101(%744: i64):  // 2 preds: ^bb100, ^bb105
    %745 = llvm.icmp "slt" %744, %742 : i64
    llvm.cond_br %745, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %746 = llvm.mlir.constant(0 : index) : i64
    %747 = llvm.mlir.constant(1 : index) : i64
    %748 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%746 : i64)
  ^bb103(%749: i64):  // 2 preds: ^bb102, ^bb104
    %750 = llvm.icmp "slt" %749, %747 : i64
    llvm.cond_br %750, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %751 = llvm.mlir.constant(3 : index) : i64
    %752 = llvm.add %749, %751  : i64
    %753 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %754 = llvm.mlir.constant(2 : index) : i64
    %755 = llvm.mul %734, %754  : i64
    %756 = llvm.mlir.constant(2 : index) : i64
    %757 = llvm.mul %739, %756  : i64
    %758 = llvm.add %755, %757  : i64
    %759 = llvm.add %758, %744  : i64
    %760 = llvm.add %759, %749  : i64
    %761 = llvm.getelementptr %753[%760] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %762 = llvm.load %761 : !llvm.ptr<i32>
    %763 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %764 = llvm.mlir.constant(10 : index) : i64
    %765 = llvm.mul %734, %764  : i64
    %766 = llvm.mlir.constant(10 : index) : i64
    %767 = llvm.mul %739, %766  : i64
    %768 = llvm.add %765, %767  : i64
    %769 = llvm.mlir.constant(5 : index) : i64
    %770 = llvm.mul %744, %769  : i64
    %771 = llvm.add %768, %770  : i64
    %772 = llvm.add %771, %752  : i64
    %773 = llvm.getelementptr %763[%772] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %762, %773 : !llvm.ptr<i32>
    %774 = llvm.add %749, %748  : i64
    llvm.br ^bb103(%774 : i64)
  ^bb105:  // pred: ^bb103
    %775 = llvm.add %744, %743  : i64
    llvm.br ^bb101(%775 : i64)
  ^bb106:  // pred: ^bb101
    %776 = llvm.add %739, %738  : i64
    llvm.br ^bb99(%776 : i64)
  ^bb107:  // pred: ^bb99
    %777 = llvm.add %734, %733  : i64
    llvm.br ^bb97(%777 : i64)
  ^bb108:  // pred: ^bb97
    %778 = llvm.mlir.constant(0 : index) : i64
    %779 = llvm.mlir.constant(1 : index) : i64
    %780 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%778 : i64)
  ^bb109(%781: i64):  // 2 preds: ^bb108, ^bb119
    %782 = llvm.icmp "slt" %781, %779 : i64
    llvm.cond_br %782, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %783 = llvm.mlir.constant(0 : index) : i64
    %784 = llvm.mlir.constant(1 : index) : i64
    %785 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%783 : i64)
  ^bb111(%786: i64):  // 2 preds: ^bb110, ^bb118
    %787 = llvm.icmp "slt" %786, %784 : i64
    llvm.cond_br %787, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %788 = llvm.mlir.constant(0 : index) : i64
    %789 = llvm.mlir.constant(2 : index) : i64
    %790 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%788 : i64)
  ^bb113(%791: i64):  // 2 preds: ^bb112, ^bb117
    %792 = llvm.icmp "slt" %791, %789 : i64
    llvm.cond_br %792, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %793 = llvm.mlir.constant(0 : index) : i64
    %794 = llvm.mlir.constant(1 : index) : i64
    %795 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%793 : i64)
  ^bb115(%796: i64):  // 2 preds: ^bb114, ^bb116
    %797 = llvm.icmp "slt" %796, %794 : i64
    llvm.cond_br %797, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %798 = llvm.mlir.constant(4 : index) : i64
    %799 = llvm.add %796, %798  : i64
    %800 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %801 = llvm.mlir.constant(2 : index) : i64
    %802 = llvm.mul %781, %801  : i64
    %803 = llvm.mlir.constant(2 : index) : i64
    %804 = llvm.mul %786, %803  : i64
    %805 = llvm.add %802, %804  : i64
    %806 = llvm.add %805, %791  : i64
    %807 = llvm.add %806, %796  : i64
    %808 = llvm.getelementptr %800[%807] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %809 = llvm.load %808 : !llvm.ptr<i32>
    %810 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %811 = llvm.mlir.constant(10 : index) : i64
    %812 = llvm.mul %781, %811  : i64
    %813 = llvm.mlir.constant(10 : index) : i64
    %814 = llvm.mul %786, %813  : i64
    %815 = llvm.add %812, %814  : i64
    %816 = llvm.mlir.constant(5 : index) : i64
    %817 = llvm.mul %791, %816  : i64
    %818 = llvm.add %815, %817  : i64
    %819 = llvm.add %818, %799  : i64
    %820 = llvm.getelementptr %810[%819] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %809, %820 : !llvm.ptr<i32>
    %821 = llvm.add %796, %795  : i64
    llvm.br ^bb115(%821 : i64)
  ^bb117:  // pred: ^bb115
    %822 = llvm.add %791, %790  : i64
    llvm.br ^bb113(%822 : i64)
  ^bb118:  // pred: ^bb113
    %823 = llvm.add %786, %785  : i64
    llvm.br ^bb111(%823 : i64)
  ^bb119:  // pred: ^bb111
    %824 = llvm.add %781, %780  : i64
    llvm.br ^bb109(%824 : i64)
  ^bb120:  // pred: ^bb109
    %825 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %826 = llvm.insertvalue %358, %825[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %827 = llvm.insertvalue %512, %826[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %828 = llvm.insertvalue %591, %827[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %828 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg6: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v0_0", "v4_0", "v3_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v9_0", "v10_0", "v6_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %30[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %30[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %30[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %30[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %30[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %43 = llvm.extractvalue %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.extractvalue %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.extractvalue %42[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.extractvalue %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.extractvalue %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.extractvalue %42[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.extractvalue %42[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.extractvalue %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.extractvalue %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.extractvalue %42[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.load %arg6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.extractvalue %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.extractvalue %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.extractvalue %54[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %66, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %63, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %0[%64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %66 = llvm.load %65 : !llvm.ptr<ptr<i8>>
    %67 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %69 = llvm.call @omTensorGetDataPtr(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %71 = llvm.insertvalue %70, %68[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : i64) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %76 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %75[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.load %78 : !llvm.ptr<i64>
    %80 = llvm.insertvalue %79, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %76[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %82 = llvm.load %81 : !llvm.ptr<i64>
    %83 = llvm.insertvalue %82, %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.getelementptr %75[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %83[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %76[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.getelementptr %75[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %76[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.getelementptr %75[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %76[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %104, %67 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %105 = llvm.mlir.constant(3 : i64) : i64
    %106 = llvm.getelementptr %0[%105] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %107 = llvm.load %106 : !llvm.ptr<ptr<i8>>
    %108 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %109 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %110 = llvm.call @omTensorGetDataPtr(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %112 = llvm.insertvalue %111, %109[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %111, %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(0 : i64) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.call @omTensorGetShape(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %117 = llvm.call @omTensorGetStrides(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %118 = llvm.mlir.constant(0 : i64) : i64
    %119 = llvm.getelementptr %116[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %120 = llvm.load %119 : !llvm.ptr<i64>
    %121 = llvm.insertvalue %120, %115[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %117[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %123 = llvm.load %122 : !llvm.ptr<i64>
    %124 = llvm.insertvalue %123, %121[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %116[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.load %126 : !llvm.ptr<i64>
    %128 = llvm.insertvalue %127, %124[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %117[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.load %129 : !llvm.ptr<i64>
    %131 = llvm.insertvalue %130, %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.getelementptr %116[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %134 = llvm.load %133 : !llvm.ptr<i64>
    %135 = llvm.insertvalue %134, %131[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %117[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %137 = llvm.load %136 : !llvm.ptr<i64>
    %138 = llvm.insertvalue %137, %135[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(3 : i64) : i64
    %140 = llvm.getelementptr %116[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %138[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %117[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %145, %108 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %146 = llvm.mlir.constant(4 : i64) : i64
    %147 = llvm.getelementptr %0[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %148 = llvm.load %147 : !llvm.ptr<ptr<i8>>
    %149 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %150 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %151 = llvm.call @omTensorGetDataPtr(%148) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %153 = llvm.insertvalue %152, %150[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %152, %153[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(0 : i64) : i64
    %156 = llvm.insertvalue %155, %154[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.call @omTensorGetShape(%148) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %158 = llvm.call @omTensorGetStrides(%148) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %159 = llvm.mlir.constant(0 : i64) : i64
    %160 = llvm.getelementptr %157[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %161 = llvm.load %160 : !llvm.ptr<i64>
    %162 = llvm.insertvalue %161, %156[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %158[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.load %163 : !llvm.ptr<i64>
    %165 = llvm.insertvalue %164, %162[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(1 : i64) : i64
    %167 = llvm.getelementptr %157[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %168 = llvm.load %167 : !llvm.ptr<i64>
    %169 = llvm.insertvalue %168, %165[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %158[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %171 = llvm.load %170 : !llvm.ptr<i64>
    %172 = llvm.insertvalue %171, %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(2 : i64) : i64
    %174 = llvm.getelementptr %157[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %175 = llvm.load %174 : !llvm.ptr<i64>
    %176 = llvm.insertvalue %175, %172[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %158[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %178 = llvm.load %177 : !llvm.ptr<i64>
    %179 = llvm.insertvalue %178, %176[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.mlir.constant(3 : i64) : i64
    %181 = llvm.getelementptr %157[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.insertvalue %182, %179[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %158[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.insertvalue %185, %183[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %186, %149 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %187 = llvm.mlir.constant(5 : i64) : i64
    %188 = llvm.getelementptr %0[%187] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %189 = llvm.load %188 : !llvm.ptr<ptr<i8>>
    %190 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %191 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %192 = llvm.call @omTensorGetDataPtr(%189) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %193 = llvm.bitcast %192 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %194 = llvm.insertvalue %193, %191[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %193, %194[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(0 : i64) : i64
    %197 = llvm.insertvalue %196, %195[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.call @omTensorGetShape(%189) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %199 = llvm.call @omTensorGetStrides(%189) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %200 = llvm.mlir.constant(0 : i64) : i64
    %201 = llvm.getelementptr %198[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %202 = llvm.load %201 : !llvm.ptr<i64>
    %203 = llvm.insertvalue %202, %197[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %199[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %205 = llvm.load %204 : !llvm.ptr<i64>
    %206 = llvm.insertvalue %205, %203[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.mlir.constant(1 : i64) : i64
    %208 = llvm.getelementptr %198[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %209 = llvm.load %208 : !llvm.ptr<i64>
    %210 = llvm.insertvalue %209, %206[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.getelementptr %199[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %212 = llvm.load %211 : !llvm.ptr<i64>
    %213 = llvm.insertvalue %212, %210[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(2 : i64) : i64
    %215 = llvm.getelementptr %198[%214] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %216 = llvm.load %215 : !llvm.ptr<i64>
    %217 = llvm.insertvalue %216, %213[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.getelementptr %199[%214] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %219 = llvm.load %218 : !llvm.ptr<i64>
    %220 = llvm.insertvalue %219, %217[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(3 : i64) : i64
    %222 = llvm.getelementptr %198[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.insertvalue %223, %220[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %199[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %226 = llvm.load %225 : !llvm.ptr<i64>
    %227 = llvm.insertvalue %226, %224[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %227, %190 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %67, %108, %149, %190) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %228 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %229 = llvm.extractvalue %228[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %230 = llvm.extractvalue %228[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %231 = llvm.extractvalue %228[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %232 = llvm.mlir.constant(3 : i64) : i64
    %233 = llvm.mlir.constant(24 : i64) : i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr<i8>
    %235 = llvm.bitcast %234 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %236 = llvm.mlir.constant(4 : i64) : i64
    %237 = llvm.call @omTensorCreateUntyped(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.mlir.constant(1 : i64) : i64
    %239 = llvm.extractvalue %229[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.bitcast %239 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %241 = llvm.extractvalue %229[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.bitcast %241 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%237, %238, %240, %242) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %243 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%237, %243) : (!llvm.ptr<i8>, i64) -> ()
    %244 = llvm.call @omTensorGetShape(%237) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %245 = llvm.call @omTensorGetStrides(%237) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %246 = llvm.mlir.constant(0 : i64) : i64
    %247 = llvm.extractvalue %229[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.getelementptr %244[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %247, %248 : !llvm.ptr<i64>
    %249 = llvm.extractvalue %229[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.getelementptr %245[%246] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %249, %250 : !llvm.ptr<i64>
    %251 = llvm.mlir.constant(1 : i64) : i64
    %252 = llvm.extractvalue %229[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.getelementptr %244[%251] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %252, %253 : !llvm.ptr<i64>
    %254 = llvm.extractvalue %229[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.getelementptr %245[%251] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %254, %255 : !llvm.ptr<i64>
    %256 = llvm.mlir.constant(2 : i64) : i64
    %257 = llvm.extractvalue %229[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.getelementptr %244[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %257, %258 : !llvm.ptr<i64>
    %259 = llvm.extractvalue %229[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.getelementptr %245[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %259, %260 : !llvm.ptr<i64>
    %261 = llvm.mlir.constant(3 : i64) : i64
    %262 = llvm.extractvalue %229[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.getelementptr %244[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %262, %263 : !llvm.ptr<i64>
    %264 = llvm.extractvalue %229[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.getelementptr %245[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %264, %265 : !llvm.ptr<i64>
    %266 = llvm.mlir.constant(0 : i64) : i64
    %267 = llvm.getelementptr %235[%266] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %237, %267 : !llvm.ptr<ptr<i8>>
    %268 = llvm.mlir.constant(4 : i64) : i64
    %269 = llvm.call @omTensorCreateUntyped(%268) : (i64) -> !llvm.ptr<i8>
    %270 = llvm.mlir.constant(1 : i64) : i64
    %271 = llvm.extractvalue %230[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.bitcast %271 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %273 = llvm.extractvalue %230[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.bitcast %273 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%269, %270, %272, %274) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %275 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%269, %275) : (!llvm.ptr<i8>, i64) -> ()
    %276 = llvm.call @omTensorGetShape(%269) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %277 = llvm.call @omTensorGetStrides(%269) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %278 = llvm.mlir.constant(0 : i64) : i64
    %279 = llvm.extractvalue %230[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.getelementptr %276[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %279, %280 : !llvm.ptr<i64>
    %281 = llvm.extractvalue %230[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.getelementptr %277[%278] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %281, %282 : !llvm.ptr<i64>
    %283 = llvm.mlir.constant(1 : i64) : i64
    %284 = llvm.extractvalue %230[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.getelementptr %276[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %284, %285 : !llvm.ptr<i64>
    %286 = llvm.extractvalue %230[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.getelementptr %277[%283] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %286, %287 : !llvm.ptr<i64>
    %288 = llvm.mlir.constant(2 : i64) : i64
    %289 = llvm.extractvalue %230[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.getelementptr %276[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %289, %290 : !llvm.ptr<i64>
    %291 = llvm.extractvalue %230[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.getelementptr %277[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %291, %292 : !llvm.ptr<i64>
    %293 = llvm.mlir.constant(3 : i64) : i64
    %294 = llvm.extractvalue %230[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.getelementptr %276[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %294, %295 : !llvm.ptr<i64>
    %296 = llvm.extractvalue %230[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.getelementptr %277[%293] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %296, %297 : !llvm.ptr<i64>
    %298 = llvm.mlir.constant(1 : i64) : i64
    %299 = llvm.getelementptr %235[%298] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %269, %299 : !llvm.ptr<ptr<i8>>
    %300 = llvm.mlir.constant(4 : i64) : i64
    %301 = llvm.call @omTensorCreateUntyped(%300) : (i64) -> !llvm.ptr<i8>
    %302 = llvm.mlir.constant(1 : i64) : i64
    %303 = llvm.extractvalue %231[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.bitcast %303 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %305 = llvm.extractvalue %231[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.bitcast %305 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%301, %302, %304, %306) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %307 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%301, %307) : (!llvm.ptr<i8>, i64) -> ()
    %308 = llvm.call @omTensorGetShape(%301) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %309 = llvm.call @omTensorGetStrides(%301) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %310 = llvm.mlir.constant(0 : i64) : i64
    %311 = llvm.extractvalue %231[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.getelementptr %308[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %311, %312 : !llvm.ptr<i64>
    %313 = llvm.extractvalue %231[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.getelementptr %309[%310] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %313, %314 : !llvm.ptr<i64>
    %315 = llvm.mlir.constant(1 : i64) : i64
    %316 = llvm.extractvalue %231[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.getelementptr %308[%315] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %316, %317 : !llvm.ptr<i64>
    %318 = llvm.extractvalue %231[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.getelementptr %309[%315] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %318, %319 : !llvm.ptr<i64>
    %320 = llvm.mlir.constant(2 : i64) : i64
    %321 = llvm.extractvalue %231[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.getelementptr %308[%320] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %321, %322 : !llvm.ptr<i64>
    %323 = llvm.extractvalue %231[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.getelementptr %309[%320] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %323, %324 : !llvm.ptr<i64>
    %325 = llvm.mlir.constant(3 : i64) : i64
    %326 = llvm.extractvalue %231[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.getelementptr %308[%325] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %326, %327 : !llvm.ptr<i64>
    %328 = llvm.extractvalue %231[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.getelementptr %309[%325] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %328, %329 : !llvm.ptr<i64>
    %330 = llvm.mlir.constant(2 : i64) : i64
    %331 = llvm.getelementptr %235[%330] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %301, %331 : !llvm.ptr<ptr<i8>>
    %332 = llvm.call @omTensorListCreate(%235, %232, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %332 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<410 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<410 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


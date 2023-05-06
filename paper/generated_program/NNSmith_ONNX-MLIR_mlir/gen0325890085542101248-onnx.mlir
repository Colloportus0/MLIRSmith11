module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 5] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[[3], [5], [4], [3]]]]> : tensor<1x1x4x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<4 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v11_0", "v10_0", "v8_0", "v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
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
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %arg44, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %arg45, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %arg46, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %arg47, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %arg51, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %arg48, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %arg52, %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %arg49, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %arg53, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %arg50, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %arg54, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %85 = llvm.bitcast %84 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.insertvalue %103, %102[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.insertvalue %105, %104[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<4 x array<1 x i32>>>>>
    %108 = llvm.bitcast %107 : !llvm.ptr<array<1 x array<1 x array<4 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %109 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %110 = llvm.insertvalue %108, %109[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.insertvalue %114, %113[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.insertvalue %116, %115[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.insertvalue %120, %119[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.insertvalue %122, %121[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.insertvalue %124, %123[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.insertvalue %126, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.insertvalue %128, %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(4 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mlir.constant(4 : index) : i64
    %137 = llvm.mlir.null : !llvm.ptr<i32>
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i32> to i64
    %140 = llvm.mlir.constant(16 : index) : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.call @malloc(%141) : (i64) -> !llvm.ptr<i8>
    %143 = llvm.bitcast %142 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %144 = llvm.ptrtoint %143 : !llvm.ptr<i32> to i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.sub %140, %145  : i64
    %147 = llvm.add %144, %146  : i64
    %148 = llvm.urem %147, %140  : i64
    %149 = llvm.sub %147, %148  : i64
    %150 = llvm.inttoptr %149 : i64 to !llvm.ptr<i32>
    %151 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %152 = llvm.insertvalue %143, %151[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %150, %152[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.insertvalue %154, %153[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %130, %155[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %131, %156[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %132, %157[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %133, %158[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %135, %159[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %132, %160[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %133, %161[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %134, %162[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%164 : i64)
  ^bb1(%167: i64):  // 2 preds: ^bb0, ^bb11
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%169 : i64)
  ^bb3(%172: i64):  // 2 preds: ^bb2, ^bb10
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%174 : i64)
  ^bb5(%177: i64):  // 2 preds: ^bb4, ^bb9
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%179 : i64)
  ^bb7(%182: i64):  // 2 preds: ^bb6, ^bb8
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %184 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.add %167, %172  : i64
    %186 = llvm.add %185, %177  : i64
    %187 = llvm.add %186, %182  : i64
    %188 = llvm.getelementptr %184[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %167, %191  : i64
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mul %172, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.add %195, %177  : i64
    %197 = llvm.add %196, %182  : i64
    %198 = llvm.getelementptr %190[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %189, %198 : !llvm.ptr<i32>
    %199 = llvm.add %182, %181  : i64
    llvm.br ^bb7(%199 : i64)
  ^bb9:  // pred: ^bb7
    %200 = llvm.add %177, %176  : i64
    llvm.br ^bb5(%200 : i64)
  ^bb10:  // pred: ^bb5
    %201 = llvm.add %172, %171  : i64
    llvm.br ^bb3(%201 : i64)
  ^bb11:  // pred: ^bb3
    %202 = llvm.add %167, %166  : i64
    llvm.br ^bb1(%202 : i64)
  ^bb12:  // pred: ^bb1
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%203 : i64)
  ^bb13(%206: i64):  // 2 preds: ^bb12, ^bb23
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%208 : i64)
  ^bb15(%211: i64):  // 2 preds: ^bb14, ^bb22
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%213 : i64)
  ^bb17(%216: i64):  // 2 preds: ^bb16, ^bb21
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%218 : i64)
  ^bb19(%221: i64):  // 2 preds: ^bb18, ^bb20
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.add %216, %223  : i64
    %225 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.add %206, %211  : i64
    %227 = llvm.add %226, %216  : i64
    %228 = llvm.add %227, %221  : i64
    %229 = llvm.getelementptr %225[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(4 : index) : i64
    %233 = llvm.mul %206, %232  : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mul %211, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.add %236, %224  : i64
    %238 = llvm.add %237, %221  : i64
    %239 = llvm.getelementptr %231[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %230, %239 : !llvm.ptr<i32>
    %240 = llvm.add %221, %220  : i64
    llvm.br ^bb19(%240 : i64)
  ^bb21:  // pred: ^bb19
    %241 = llvm.add %216, %215  : i64
    llvm.br ^bb17(%241 : i64)
  ^bb22:  // pred: ^bb17
    %242 = llvm.add %211, %210  : i64
    llvm.br ^bb15(%242 : i64)
  ^bb23:  // pred: ^bb15
    %243 = llvm.add %206, %205  : i64
    llvm.br ^bb13(%243 : i64)
  ^bb24:  // pred: ^bb13
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%244 : i64)
  ^bb25(%247: i64):  // 2 preds: ^bb24, ^bb35
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%249 : i64)
  ^bb27(%252: i64):  // 2 preds: ^bb26, ^bb34
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%254 : i64)
  ^bb29(%257: i64):  // 2 preds: ^bb28, ^bb33
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%259 : i64)
  ^bb31(%262: i64):  // 2 preds: ^bb30, ^bb32
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.add %257, %264  : i64
    %266 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.add %247, %252  : i64
    %268 = llvm.add %267, %257  : i64
    %269 = llvm.add %268, %262  : i64
    %270 = llvm.getelementptr %266[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.mlir.constant(4 : index) : i64
    %274 = llvm.mul %247, %273  : i64
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mul %252, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.add %277, %265  : i64
    %279 = llvm.add %278, %262  : i64
    %280 = llvm.getelementptr %272[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %271, %280 : !llvm.ptr<i32>
    %281 = llvm.add %262, %261  : i64
    llvm.br ^bb31(%281 : i64)
  ^bb33:  // pred: ^bb31
    %282 = llvm.add %257, %256  : i64
    llvm.br ^bb29(%282 : i64)
  ^bb34:  // pred: ^bb29
    %283 = llvm.add %252, %251  : i64
    llvm.br ^bb27(%283 : i64)
  ^bb35:  // pred: ^bb27
    %284 = llvm.add %247, %246  : i64
    llvm.br ^bb25(%284 : i64)
  ^bb36:  // pred: ^bb25
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%285 : i64)
  ^bb37(%288: i64):  // 2 preds: ^bb36, ^bb47
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%290 : i64)
  ^bb39(%293: i64):  // 2 preds: ^bb38, ^bb46
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%295 : i64)
  ^bb41(%298: i64):  // 2 preds: ^bb40, ^bb45
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%300 : i64)
  ^bb43(%303: i64):  // 2 preds: ^bb42, ^bb44
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %305 = llvm.mlir.constant(3 : index) : i64
    %306 = llvm.add %298, %305  : i64
    %307 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.add %288, %293  : i64
    %309 = llvm.add %308, %298  : i64
    %310 = llvm.add %309, %303  : i64
    %311 = llvm.getelementptr %307[%310] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %312 = llvm.load %311 : !llvm.ptr<i32>
    %313 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mul %288, %314  : i64
    %316 = llvm.mlir.constant(4 : index) : i64
    %317 = llvm.mul %293, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.add %318, %306  : i64
    %320 = llvm.add %319, %303  : i64
    %321 = llvm.getelementptr %313[%320] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %312, %321 : !llvm.ptr<i32>
    %322 = llvm.add %303, %302  : i64
    llvm.br ^bb43(%322 : i64)
  ^bb45:  // pred: ^bb43
    %323 = llvm.add %298, %297  : i64
    llvm.br ^bb41(%323 : i64)
  ^bb46:  // pred: ^bb41
    %324 = llvm.add %293, %292  : i64
    llvm.br ^bb39(%324 : i64)
  ^bb47:  // pred: ^bb39
    %325 = llvm.add %288, %287  : i64
    llvm.br ^bb37(%325 : i64)
  ^bb48:  // pred: ^bb37
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mlir.null : !llvm.ptr<i32>
    %334 = llvm.getelementptr %333[%332] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i32> to i64
    %336 = llvm.mlir.constant(16 : index) : i64
    %337 = llvm.add %335, %336  : i64
    %338 = llvm.call @malloc(%337) : (i64) -> !llvm.ptr<i8>
    %339 = llvm.bitcast %338 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i32> to i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.sub %336, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.urem %343, %336  : i64
    %345 = llvm.sub %343, %344  : i64
    %346 = llvm.inttoptr %345 : i64 to !llvm.ptr<i32>
    %347 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %348 = llvm.insertvalue %339, %347[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %346, %348[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.insertvalue %350, %349[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %326, %351[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %327, %352[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %328, %353[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %329, %354[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %331, %355[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %328, %356[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %329, %357[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %330, %358[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%360 : i64)
  ^bb49(%363: i64):  // 2 preds: ^bb48, ^bb59
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%365 : i64)
  ^bb51(%368: i64):  // 2 preds: ^bb50, ^bb58
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%370 : i64)
  ^bb53(%373: i64):  // 2 preds: ^bb52, ^bb57
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%375 : i64)
  ^bb55(%378: i64):  // 2 preds: ^bb54, ^bb56
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %380 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mul %363, %381  : i64
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mul %368, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.add %385, %373  : i64
    %387 = llvm.add %386, %378  : i64
    %388 = llvm.getelementptr %380[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %389 = llvm.load %388 : !llvm.ptr<i32>
    %390 = llvm.mlir.constant(false) : i1
    %391 = "llvm.intr.abs"(%389, %390) : (i32, i1) -> i32
    %392 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mul %363, %393  : i64
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mul %368, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %373  : i64
    %399 = llvm.add %398, %378  : i64
    %400 = llvm.getelementptr %392[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %391, %400 : !llvm.ptr<i32>
    %401 = llvm.add %378, %377  : i64
    llvm.br ^bb55(%401 : i64)
  ^bb57:  // pred: ^bb55
    %402 = llvm.add %373, %372  : i64
    llvm.br ^bb53(%402 : i64)
  ^bb58:  // pred: ^bb53
    %403 = llvm.add %368, %367  : i64
    llvm.br ^bb51(%403 : i64)
  ^bb59:  // pred: ^bb51
    %404 = llvm.add %363, %362  : i64
    llvm.br ^bb49(%404 : i64)
  ^bb60:  // pred: ^bb49
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mlir.constant(5 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(20 : index) : i64
    %411 = llvm.mlir.constant(20 : index) : i64
    %412 = llvm.mlir.constant(20 : index) : i64
    %413 = llvm.mlir.null : !llvm.ptr<i32>
    %414 = llvm.getelementptr %413[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i32> to i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.add %415, %416  : i64
    %418 = llvm.call @malloc(%417) : (i64) -> !llvm.ptr<i8>
    %419 = llvm.bitcast %418 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %420 = llvm.ptrtoint %419 : !llvm.ptr<i32> to i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.sub %416, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.urem %423, %416  : i64
    %425 = llvm.sub %423, %424  : i64
    %426 = llvm.inttoptr %425 : i64 to !llvm.ptr<i32>
    %427 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %428 = llvm.insertvalue %419, %427[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %426, %428[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %408, %434[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %411, %435[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %410, %436[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %408, %437[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %409, %438[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%440 : i64)
  ^bb61(%443: i64):  // 2 preds: ^bb60, ^bb71
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%445 : i64)
  ^bb63(%448: i64):  // 2 preds: ^bb62, ^bb70
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(4 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%450 : i64)
  ^bb65(%453: i64):  // 2 preds: ^bb64, ^bb69
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%455 : i64)
  ^bb67(%458: i64):  // 2 preds: ^bb66, ^bb68
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %460 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(4 : index) : i64
    %462 = llvm.mul %443, %461  : i64
    %463 = llvm.mlir.constant(4 : index) : i64
    %464 = llvm.mul %448, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.add %465, %453  : i64
    %467 = llvm.add %466, %458  : i64
    %468 = llvm.getelementptr %460[%467] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %469 = llvm.load %468 : !llvm.ptr<i32>
    %470 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(20 : index) : i64
    %472 = llvm.mul %443, %471  : i64
    %473 = llvm.mlir.constant(20 : index) : i64
    %474 = llvm.mul %448, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.mlir.constant(5 : index) : i64
    %477 = llvm.mul %453, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.add %478, %458  : i64
    %480 = llvm.getelementptr %470[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %469, %480 : !llvm.ptr<i32>
    %481 = llvm.add %458, %457  : i64
    llvm.br ^bb67(%481 : i64)
  ^bb69:  // pred: ^bb67
    %482 = llvm.add %453, %452  : i64
    llvm.br ^bb65(%482 : i64)
  ^bb70:  // pred: ^bb65
    %483 = llvm.add %448, %447  : i64
    llvm.br ^bb63(%483 : i64)
  ^bb71:  // pred: ^bb63
    %484 = llvm.add %443, %442  : i64
    llvm.br ^bb61(%484 : i64)
  ^bb72:  // pred: ^bb61
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%485 : i64)
  ^bb73(%488: i64):  // 2 preds: ^bb72, ^bb83
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%490 : i64)
  ^bb75(%493: i64):  // 2 preds: ^bb74, ^bb82
    %494 = llvm.icmp "slt" %493, %491 : i64
    llvm.cond_br %494, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(4 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%495 : i64)
  ^bb77(%498: i64):  // 2 preds: ^bb76, ^bb81
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%500 : i64)
  ^bb79(%503: i64):  // 2 preds: ^bb78, ^bb80
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.extractvalue %359[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %488, %508  : i64
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mul %493, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.add %512, %498  : i64
    %514 = llvm.add %513, %503  : i64
    %515 = llvm.getelementptr %507[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %516 = llvm.load %515 : !llvm.ptr<i32>
    %517 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(20 : index) : i64
    %519 = llvm.mul %488, %518  : i64
    %520 = llvm.mlir.constant(20 : index) : i64
    %521 = llvm.mul %493, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.mlir.constant(5 : index) : i64
    %524 = llvm.mul %498, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.add %525, %506  : i64
    %527 = llvm.getelementptr %517[%526] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %516, %527 : !llvm.ptr<i32>
    %528 = llvm.add %503, %502  : i64
    llvm.br ^bb79(%528 : i64)
  ^bb81:  // pred: ^bb79
    %529 = llvm.add %498, %497  : i64
    llvm.br ^bb77(%529 : i64)
  ^bb82:  // pred: ^bb77
    %530 = llvm.add %493, %492  : i64
    llvm.br ^bb75(%530 : i64)
  ^bb83:  // pred: ^bb75
    %531 = llvm.add %488, %487  : i64
    llvm.br ^bb73(%531 : i64)
  ^bb84:  // pred: ^bb73
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%532 : i64)
  ^bb85(%535: i64):  // 2 preds: ^bb84, ^bb95
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%537 : i64)
  ^bb87(%540: i64):  // 2 preds: ^bb86, ^bb94
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%542 : i64)
  ^bb89(%545: i64):  // 2 preds: ^bb88, ^bb93
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%547 : i64)
  ^bb91(%550: i64):  // 2 preds: ^bb90, ^bb92
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %552 = llvm.mlir.constant(2 : index) : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.mlir.constant(4 : index) : i64
    %556 = llvm.mul %535, %555  : i64
    %557 = llvm.mlir.constant(4 : index) : i64
    %558 = llvm.mul %540, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.add %559, %545  : i64
    %561 = llvm.add %560, %550  : i64
    %562 = llvm.getelementptr %554[%561] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %563 = llvm.load %562 : !llvm.ptr<i32>
    %564 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.mlir.constant(20 : index) : i64
    %566 = llvm.mul %535, %565  : i64
    %567 = llvm.mlir.constant(20 : index) : i64
    %568 = llvm.mul %540, %567  : i64
    %569 = llvm.add %566, %568  : i64
    %570 = llvm.mlir.constant(5 : index) : i64
    %571 = llvm.mul %545, %570  : i64
    %572 = llvm.add %569, %571  : i64
    %573 = llvm.add %572, %553  : i64
    %574 = llvm.getelementptr %564[%573] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %563, %574 : !llvm.ptr<i32>
    %575 = llvm.add %550, %549  : i64
    llvm.br ^bb91(%575 : i64)
  ^bb93:  // pred: ^bb91
    %576 = llvm.add %545, %544  : i64
    llvm.br ^bb89(%576 : i64)
  ^bb94:  // pred: ^bb89
    %577 = llvm.add %540, %539  : i64
    llvm.br ^bb87(%577 : i64)
  ^bb95:  // pred: ^bb87
    %578 = llvm.add %535, %534  : i64
    llvm.br ^bb85(%578 : i64)
  ^bb96:  // pred: ^bb85
    %579 = llvm.mlir.constant(0 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%579 : i64)
  ^bb97(%582: i64):  // 2 preds: ^bb96, ^bb107
    %583 = llvm.icmp "slt" %582, %580 : i64
    llvm.cond_br %583, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%584 : i64)
  ^bb99(%587: i64):  // 2 preds: ^bb98, ^bb106
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(4 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%589 : i64)
  ^bb101(%592: i64):  // 2 preds: ^bb100, ^bb105
    %593 = llvm.icmp "slt" %592, %590 : i64
    llvm.cond_br %593, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%594 : i64)
  ^bb103(%597: i64):  // 2 preds: ^bb102, ^bb104
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %599 = llvm.mlir.constant(3 : index) : i64
    %600 = llvm.add %597, %599  : i64
    %601 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %602 = llvm.mlir.constant(4 : index) : i64
    %603 = llvm.mul %582, %602  : i64
    %604 = llvm.mlir.constant(4 : index) : i64
    %605 = llvm.mul %587, %604  : i64
    %606 = llvm.add %603, %605  : i64
    %607 = llvm.add %606, %592  : i64
    %608 = llvm.add %607, %597  : i64
    %609 = llvm.getelementptr %601[%608] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %610 = llvm.load %609 : !llvm.ptr<i32>
    %611 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.mlir.constant(20 : index) : i64
    %613 = llvm.mul %582, %612  : i64
    %614 = llvm.mlir.constant(20 : index) : i64
    %615 = llvm.mul %587, %614  : i64
    %616 = llvm.add %613, %615  : i64
    %617 = llvm.mlir.constant(5 : index) : i64
    %618 = llvm.mul %592, %617  : i64
    %619 = llvm.add %616, %618  : i64
    %620 = llvm.add %619, %600  : i64
    %621 = llvm.getelementptr %611[%620] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %610, %621 : !llvm.ptr<i32>
    %622 = llvm.add %597, %596  : i64
    llvm.br ^bb103(%622 : i64)
  ^bb105:  // pred: ^bb103
    %623 = llvm.add %592, %591  : i64
    llvm.br ^bb101(%623 : i64)
  ^bb106:  // pred: ^bb101
    %624 = llvm.add %587, %586  : i64
    llvm.br ^bb99(%624 : i64)
  ^bb107:  // pred: ^bb99
    %625 = llvm.add %582, %581  : i64
    llvm.br ^bb97(%625 : i64)
  ^bb108:  // pred: ^bb97
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%626 : i64)
  ^bb109(%629: i64):  // 2 preds: ^bb108, ^bb119
    %630 = llvm.icmp "slt" %629, %627 : i64
    llvm.cond_br %630, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%631 : i64)
  ^bb111(%634: i64):  // 2 preds: ^bb110, ^bb118
    %635 = llvm.icmp "slt" %634, %632 : i64
    llvm.cond_br %635, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(4 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%636 : i64)
  ^bb113(%639: i64):  // 2 preds: ^bb112, ^bb117
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%641 : i64)
  ^bb115(%644: i64):  // 2 preds: ^bb114, ^bb116
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %646 = llvm.mlir.constant(4 : index) : i64
    %647 = llvm.add %644, %646  : i64
    %648 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.mlir.constant(4 : index) : i64
    %650 = llvm.mul %629, %649  : i64
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mul %634, %651  : i64
    %653 = llvm.add %650, %652  : i64
    %654 = llvm.add %653, %639  : i64
    %655 = llvm.add %654, %644  : i64
    %656 = llvm.getelementptr %648[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %657 = llvm.load %656 : !llvm.ptr<i32>
    %658 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.mlir.constant(20 : index) : i64
    %660 = llvm.mul %629, %659  : i64
    %661 = llvm.mlir.constant(20 : index) : i64
    %662 = llvm.mul %634, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.mlir.constant(5 : index) : i64
    %665 = llvm.mul %639, %664  : i64
    %666 = llvm.add %663, %665  : i64
    %667 = llvm.add %666, %647  : i64
    %668 = llvm.getelementptr %658[%667] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %657, %668 : !llvm.ptr<i32>
    %669 = llvm.add %644, %643  : i64
    llvm.br ^bb115(%669 : i64)
  ^bb117:  // pred: ^bb115
    %670 = llvm.add %639, %638  : i64
    llvm.br ^bb113(%670 : i64)
  ^bb118:  // pred: ^bb113
    %671 = llvm.add %634, %633  : i64
    llvm.br ^bb111(%671 : i64)
  ^bb119:  // pred: ^bb111
    %672 = llvm.add %629, %628  : i64
    llvm.br ^bb109(%672 : i64)
  ^bb120:  // pred: ^bb109
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.mlir.constant(1 : index) : i64
    %675 = llvm.mlir.constant(4 : index) : i64
    %676 = llvm.mlir.constant(5 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(20 : index) : i64
    %679 = llvm.mlir.constant(20 : index) : i64
    %680 = llvm.mlir.constant(20 : index) : i64
    %681 = llvm.mlir.null : !llvm.ptr<i32>
    %682 = llvm.getelementptr %681[%680] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %683 = llvm.ptrtoint %682 : !llvm.ptr<i32> to i64
    %684 = llvm.mlir.constant(16 : index) : i64
    %685 = llvm.add %683, %684  : i64
    %686 = llvm.call @malloc(%685) : (i64) -> !llvm.ptr<i8>
    %687 = llvm.bitcast %686 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %688 = llvm.ptrtoint %687 : !llvm.ptr<i32> to i64
    %689 = llvm.mlir.constant(1 : index) : i64
    %690 = llvm.sub %684, %689  : i64
    %691 = llvm.add %688, %690  : i64
    %692 = llvm.urem %691, %684  : i64
    %693 = llvm.sub %691, %692  : i64
    %694 = llvm.inttoptr %693 : i64 to !llvm.ptr<i32>
    %695 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %696 = llvm.insertvalue %687, %695[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.insertvalue %694, %696[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.mlir.constant(0 : index) : i64
    %699 = llvm.insertvalue %698, %697[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %673, %699[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.insertvalue %674, %700[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.insertvalue %675, %701[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.insertvalue %676, %702[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.insertvalue %679, %703[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.insertvalue %678, %704[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.insertvalue %676, %705[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.insertvalue %677, %706[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.mlir.constant(0 : index) : i64
    %709 = llvm.mlir.constant(1 : index) : i64
    %710 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%708 : i64)
  ^bb121(%711: i64):  // 2 preds: ^bb120, ^bb131
    %712 = llvm.icmp "slt" %711, %709 : i64
    llvm.cond_br %712, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %713 = llvm.mlir.constant(0 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    %715 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%713 : i64)
  ^bb123(%716: i64):  // 2 preds: ^bb122, ^bb130
    %717 = llvm.icmp "slt" %716, %714 : i64
    llvm.cond_br %717, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %718 = llvm.mlir.constant(0 : index) : i64
    %719 = llvm.mlir.constant(4 : index) : i64
    %720 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%718 : i64)
  ^bb125(%721: i64):  // 2 preds: ^bb124, ^bb129
    %722 = llvm.icmp "slt" %721, %719 : i64
    llvm.cond_br %722, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %723 = llvm.mlir.constant(0 : index) : i64
    %724 = llvm.mlir.constant(5 : index) : i64
    %725 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%723 : i64)
  ^bb127(%726: i64):  // 2 preds: ^bb126, ^bb128
    %727 = llvm.icmp "slt" %726, %724 : i64
    llvm.cond_br %727, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %728 = llvm.extractvalue %439[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %729 = llvm.mlir.constant(20 : index) : i64
    %730 = llvm.mul %711, %729  : i64
    %731 = llvm.mlir.constant(20 : index) : i64
    %732 = llvm.mul %716, %731  : i64
    %733 = llvm.add %730, %732  : i64
    %734 = llvm.mlir.constant(5 : index) : i64
    %735 = llvm.mul %721, %734  : i64
    %736 = llvm.add %733, %735  : i64
    %737 = llvm.add %736, %726  : i64
    %738 = llvm.getelementptr %728[%737] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %739 = llvm.load %738 : !llvm.ptr<i32>
    %740 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.mlir.constant(4 : index) : i64
    %742 = llvm.mul %711, %741  : i64
    %743 = llvm.mlir.constant(4 : index) : i64
    %744 = llvm.mul %716, %743  : i64
    %745 = llvm.add %742, %744  : i64
    %746 = llvm.add %745, %721  : i64
    %747 = llvm.add %746, %60  : i64
    %748 = llvm.getelementptr %740[%747] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %749 = llvm.load %748 : !llvm.ptr<i32>
    %750 = llvm.icmp "slt" %739, %749 : i32
    %751 = llvm.select %750, %739, %749 : i1, i32
    %752 = llvm.extractvalue %707[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %753 = llvm.mlir.constant(20 : index) : i64
    %754 = llvm.mul %711, %753  : i64
    %755 = llvm.mlir.constant(20 : index) : i64
    %756 = llvm.mul %716, %755  : i64
    %757 = llvm.add %754, %756  : i64
    %758 = llvm.mlir.constant(5 : index) : i64
    %759 = llvm.mul %721, %758  : i64
    %760 = llvm.add %757, %759  : i64
    %761 = llvm.add %760, %726  : i64
    %762 = llvm.getelementptr %752[%761] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %751, %762 : !llvm.ptr<i32>
    %763 = llvm.add %726, %725  : i64
    llvm.br ^bb127(%763 : i64)
  ^bb129:  // pred: ^bb127
    %764 = llvm.add %721, %720  : i64
    llvm.br ^bb125(%764 : i64)
  ^bb130:  // pred: ^bb125
    %765 = llvm.add %716, %715  : i64
    llvm.br ^bb123(%765 : i64)
  ^bb131:  // pred: ^bb123
    %766 = llvm.add %711, %710  : i64
    llvm.br ^bb121(%766 : i64)
  ^bb132:  // pred: ^bb121
    llvm.return %707 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v11_0", "v10_0", "v8_0", "v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
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
    %48 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %49 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.extractvalue %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.extractvalue %48[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.extractvalue %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %60, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %167 = llvm.mlir.constant(4 : i64) : i64
    %168 = llvm.getelementptr %0[%167] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %169 = llvm.load %168 : !llvm.ptr<ptr<i8>>
    %170 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %172 = llvm.call @omTensorGetDataPtr(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %174 = llvm.insertvalue %173, %171[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %173, %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.call @omTensorGetShape(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %179 = llvm.call @omTensorGetStrides(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %180 = llvm.mlir.constant(0 : i64) : i64
    %181 = llvm.getelementptr %178[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.insertvalue %182, %177[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %179[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.insertvalue %185, %183[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.getelementptr %178[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.insertvalue %189, %186[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %179[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.insertvalue %192, %190[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(2 : i64) : i64
    %195 = llvm.getelementptr %178[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.insertvalue %196, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %179[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.insertvalue %199, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(3 : i64) : i64
    %202 = llvm.getelementptr %178[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.insertvalue %203, %200[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %179[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.load %205 : !llvm.ptr<i64>
    %207 = llvm.insertvalue %206, %204[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %207, %170 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129, %170) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %208 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %209 = llvm.mlir.constant(1 : i64) : i64
    %210 = llvm.mlir.constant(8 : i64) : i64
    %211 = llvm.call @malloc(%210) : (i64) -> !llvm.ptr<i8>
    %212 = llvm.bitcast %211 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %213 = llvm.mlir.constant(4 : i64) : i64
    %214 = llvm.call @omTensorCreateUntyped(%213) : (i64) -> !llvm.ptr<i8>
    %215 = llvm.mlir.constant(1 : i64) : i64
    %216 = llvm.extractvalue %208[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.bitcast %216 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %218 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%214, %215, %217, %219) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %220 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%214, %220) : (!llvm.ptr<i8>, i64) -> ()
    %221 = llvm.call @omTensorGetShape(%214) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %222 = llvm.call @omTensorGetStrides(%214) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %223 = llvm.mlir.constant(0 : i64) : i64
    %224 = llvm.extractvalue %208[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %221[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %208[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %222[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(1 : i64) : i64
    %229 = llvm.extractvalue %208[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.getelementptr %221[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.extractvalue %208[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %222[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.mlir.constant(2 : i64) : i64
    %234 = llvm.extractvalue %208[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.getelementptr %221[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %234, %235 : !llvm.ptr<i64>
    %236 = llvm.extractvalue %208[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.getelementptr %222[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %237 : !llvm.ptr<i64>
    %238 = llvm.mlir.constant(3 : i64) : i64
    %239 = llvm.extractvalue %208[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.getelementptr %221[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %239, %240 : !llvm.ptr<i64>
    %241 = llvm.extractvalue %208[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.getelementptr %222[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %241, %242 : !llvm.ptr<i64>
    %243 = llvm.mlir.constant(0 : i64) : i64
    %244 = llvm.getelementptr %212[%243] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %214, %244 : !llvm.ptr<ptr<i8>>
    %245 = llvm.call @omTensorListCreate(%212, %209, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %245 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<354 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<354 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


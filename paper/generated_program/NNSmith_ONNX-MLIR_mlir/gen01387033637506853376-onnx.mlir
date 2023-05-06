module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 5 , 4 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 8 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[[3]], [[4]], [[5]], [[7]], [[3]]]]> : tensor<1x5x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<5 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v8_0", "v2_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %60 = llvm.mlir.constant(0 : i32) : i32
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
    %107 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<5 x array<1 x array<1 x i32>>>>>
    %108 = llvm.bitcast %107 : !llvm.ptr<array<1 x array<5 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %109 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %110 = llvm.insertvalue %108, %109[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %108, %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.insertvalue %112, %111[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.insertvalue %114, %113[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(5 : index) : i64
    %117 = llvm.insertvalue %116, %115[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(5 : index) : i64
    %119 = llvm.insertvalue %118, %117[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.insertvalue %120, %119[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.insertvalue %122, %121[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.insertvalue %124, %123[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.insertvalue %126, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.insertvalue %128, %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(5 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(5 : index) : i64
    %136 = llvm.mlir.null : !llvm.ptr<i32>
    %137 = llvm.getelementptr %136[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %155 = llvm.insertvalue %130, %154[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %131, %155[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %132, %156[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %133, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %131, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %132, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %133, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %134, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %183 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.add %166, %171  : i64
    %185 = llvm.add %184, %176  : i64
    %186 = llvm.add %185, %181  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(5 : index) : i64
    %191 = llvm.mul %166, %190  : i64
    %192 = llvm.add %191, %171  : i64
    %193 = llvm.add %192, %176  : i64
    %194 = llvm.add %193, %181  : i64
    %195 = llvm.getelementptr %189[%194] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %188, %195 : !llvm.ptr<i32>
    %196 = llvm.add %181, %180  : i64
    llvm.br ^bb7(%196 : i64)
  ^bb9:  // pred: ^bb7
    %197 = llvm.add %176, %175  : i64
    llvm.br ^bb5(%197 : i64)
  ^bb10:  // pred: ^bb5
    %198 = llvm.add %171, %170  : i64
    llvm.br ^bb3(%198 : i64)
  ^bb11:  // pred: ^bb3
    %199 = llvm.add %166, %165  : i64
    llvm.br ^bb1(%199 : i64)
  ^bb12:  // pred: ^bb1
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%200 : i64)
  ^bb13(%203: i64):  // 2 preds: ^bb12, ^bb23
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%205 : i64)
  ^bb15(%208: i64):  // 2 preds: ^bb14, ^bb22
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%210 : i64)
  ^bb17(%213: i64):  // 2 preds: ^bb16, ^bb21
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%215 : i64)
  ^bb19(%218: i64):  // 2 preds: ^bb18, ^bb20
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.add %208, %220  : i64
    %222 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.add %203, %208  : i64
    %224 = llvm.add %223, %213  : i64
    %225 = llvm.add %224, %218  : i64
    %226 = llvm.getelementptr %222[%225] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %227 = llvm.load %226 : !llvm.ptr<i32>
    %228 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(5 : index) : i64
    %230 = llvm.mul %203, %229  : i64
    %231 = llvm.add %230, %221  : i64
    %232 = llvm.add %231, %213  : i64
    %233 = llvm.add %232, %218  : i64
    %234 = llvm.getelementptr %228[%233] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %227, %234 : !llvm.ptr<i32>
    %235 = llvm.add %218, %217  : i64
    llvm.br ^bb19(%235 : i64)
  ^bb21:  // pred: ^bb19
    %236 = llvm.add %213, %212  : i64
    llvm.br ^bb17(%236 : i64)
  ^bb22:  // pred: ^bb17
    %237 = llvm.add %208, %207  : i64
    llvm.br ^bb15(%237 : i64)
  ^bb23:  // pred: ^bb15
    %238 = llvm.add %203, %202  : i64
    llvm.br ^bb13(%238 : i64)
  ^bb24:  // pred: ^bb13
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%239 : i64)
  ^bb25(%242: i64):  // 2 preds: ^bb24, ^bb35
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%244 : i64)
  ^bb27(%247: i64):  // 2 preds: ^bb26, ^bb34
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%249 : i64)
  ^bb29(%252: i64):  // 2 preds: ^bb28, ^bb33
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%254 : i64)
  ^bb31(%257: i64):  // 2 preds: ^bb30, ^bb32
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.add %247, %259  : i64
    %261 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.add %242, %247  : i64
    %263 = llvm.add %262, %252  : i64
    %264 = llvm.add %263, %257  : i64
    %265 = llvm.getelementptr %261[%264] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %266 = llvm.load %265 : !llvm.ptr<i32>
    %267 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(5 : index) : i64
    %269 = llvm.mul %242, %268  : i64
    %270 = llvm.add %269, %260  : i64
    %271 = llvm.add %270, %252  : i64
    %272 = llvm.add %271, %257  : i64
    %273 = llvm.getelementptr %267[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %266, %273 : !llvm.ptr<i32>
    %274 = llvm.add %257, %256  : i64
    llvm.br ^bb31(%274 : i64)
  ^bb33:  // pred: ^bb31
    %275 = llvm.add %252, %251  : i64
    llvm.br ^bb29(%275 : i64)
  ^bb34:  // pred: ^bb29
    %276 = llvm.add %247, %246  : i64
    llvm.br ^bb27(%276 : i64)
  ^bb35:  // pred: ^bb27
    %277 = llvm.add %242, %241  : i64
    llvm.br ^bb25(%277 : i64)
  ^bb36:  // pred: ^bb25
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%278 : i64)
  ^bb37(%281: i64):  // 2 preds: ^bb36, ^bb47
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%283 : i64)
  ^bb39(%286: i64):  // 2 preds: ^bb38, ^bb46
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%288 : i64)
  ^bb41(%291: i64):  // 2 preds: ^bb40, ^bb45
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%293 : i64)
  ^bb43(%296: i64):  // 2 preds: ^bb42, ^bb44
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %298 = llvm.mlir.constant(3 : index) : i64
    %299 = llvm.add %286, %298  : i64
    %300 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.add %281, %286  : i64
    %302 = llvm.add %301, %291  : i64
    %303 = llvm.add %302, %296  : i64
    %304 = llvm.getelementptr %300[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %305 = llvm.load %304 : !llvm.ptr<i32>
    %306 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(5 : index) : i64
    %308 = llvm.mul %281, %307  : i64
    %309 = llvm.add %308, %299  : i64
    %310 = llvm.add %309, %291  : i64
    %311 = llvm.add %310, %296  : i64
    %312 = llvm.getelementptr %306[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %305, %312 : !llvm.ptr<i32>
    %313 = llvm.add %296, %295  : i64
    llvm.br ^bb43(%313 : i64)
  ^bb45:  // pred: ^bb43
    %314 = llvm.add %291, %290  : i64
    llvm.br ^bb41(%314 : i64)
  ^bb46:  // pred: ^bb41
    %315 = llvm.add %286, %285  : i64
    llvm.br ^bb39(%315 : i64)
  ^bb47:  // pred: ^bb39
    %316 = llvm.add %281, %280  : i64
    llvm.br ^bb37(%316 : i64)
  ^bb48:  // pred: ^bb37
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%317 : i64)
  ^bb49(%320: i64):  // 2 preds: ^bb48, ^bb59
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%322 : i64)
  ^bb51(%325: i64):  // 2 preds: ^bb50, ^bb58
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%327 : i64)
  ^bb53(%330: i64):  // 2 preds: ^bb52, ^bb57
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%332 : i64)
  ^bb55(%335: i64):  // 2 preds: ^bb54, ^bb56
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %337 = llvm.mlir.constant(4 : index) : i64
    %338 = llvm.add %325, %337  : i64
    %339 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.add %320, %325  : i64
    %341 = llvm.add %340, %330  : i64
    %342 = llvm.add %341, %335  : i64
    %343 = llvm.getelementptr %339[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %344 = llvm.load %343 : !llvm.ptr<i32>
    %345 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(5 : index) : i64
    %347 = llvm.mul %320, %346  : i64
    %348 = llvm.add %347, %338  : i64
    %349 = llvm.add %348, %330  : i64
    %350 = llvm.add %349, %335  : i64
    %351 = llvm.getelementptr %345[%350] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %344, %351 : !llvm.ptr<i32>
    %352 = llvm.add %335, %334  : i64
    llvm.br ^bb55(%352 : i64)
  ^bb57:  // pred: ^bb55
    %353 = llvm.add %330, %329  : i64
    llvm.br ^bb53(%353 : i64)
  ^bb58:  // pred: ^bb53
    %354 = llvm.add %325, %324  : i64
    llvm.br ^bb51(%354 : i64)
  ^bb59:  // pred: ^bb51
    %355 = llvm.add %320, %319  : i64
    llvm.br ^bb49(%355 : i64)
  ^bb60:  // pred: ^bb49
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(5 : index) : i64
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(20 : index) : i64
    %362 = llvm.mlir.constant(20 : index) : i64
    %363 = llvm.mlir.null : !llvm.ptr<i32>
    %364 = llvm.getelementptr %363[%362] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i32> to i64
    %366 = llvm.mlir.constant(16 : index) : i64
    %367 = llvm.add %365, %366  : i64
    %368 = llvm.call @malloc(%367) : (i64) -> !llvm.ptr<i8>
    %369 = llvm.bitcast %368 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %370 = llvm.ptrtoint %369 : !llvm.ptr<i32> to i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.sub %366, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.urem %373, %366  : i64
    %375 = llvm.sub %373, %374  : i64
    %376 = llvm.inttoptr %375 : i64 to !llvm.ptr<i32>
    %377 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %378 = llvm.insertvalue %369, %377[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %376, %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.insertvalue %380, %379[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %356, %381[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %357, %382[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %358, %383[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %359, %384[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %361, %385[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %358, %386[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %359, %387[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %360, %388[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%390 : i64)
  ^bb61(%393: i64):  // 2 preds: ^bb60, ^bb71
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(5 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%395 : i64)
  ^bb63(%398: i64):  // 2 preds: ^bb62, ^bb70
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%400 : i64)
  ^bb65(%403: i64):  // 2 preds: ^bb64, ^bb69
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%405 : i64)
  ^bb67(%408: i64):  // 2 preds: ^bb66, ^bb68
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %410 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.mlir.constant(5 : index) : i64
    %412 = llvm.mul %393, %411  : i64
    %413 = llvm.add %412, %398  : i64
    %414 = llvm.add %413, %403  : i64
    %415 = llvm.add %414, %408  : i64
    %416 = llvm.getelementptr %410[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.load %416 : !llvm.ptr<i32>
    %418 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(20 : index) : i64
    %420 = llvm.mul %393, %419  : i64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mul %398, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.add %423, %403  : i64
    %425 = llvm.add %424, %408  : i64
    %426 = llvm.getelementptr %418[%425] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %417, %426 : !llvm.ptr<i32>
    %427 = llvm.add %408, %407  : i64
    llvm.br ^bb67(%427 : i64)
  ^bb69:  // pred: ^bb67
    %428 = llvm.add %403, %402  : i64
    llvm.br ^bb65(%428 : i64)
  ^bb70:  // pred: ^bb65
    %429 = llvm.add %398, %397  : i64
    llvm.br ^bb63(%429 : i64)
  ^bb71:  // pred: ^bb63
    %430 = llvm.add %393, %392  : i64
    llvm.br ^bb61(%430 : i64)
  ^bb72:  // pred: ^bb61
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%431 : i64)
  ^bb73(%434: i64):  // 2 preds: ^bb72, ^bb83
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(5 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%436 : i64)
  ^bb75(%439: i64):  // 2 preds: ^bb74, ^bb82
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%441 : i64)
  ^bb77(%444: i64):  // 2 preds: ^bb76, ^bb81
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%446 : i64)
  ^bb79(%449: i64):  // 2 preds: ^bb78, ^bb80
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.add %444, %451  : i64
    %453 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mlir.constant(5 : index) : i64
    %455 = llvm.mul %434, %454  : i64
    %456 = llvm.add %455, %439  : i64
    %457 = llvm.add %456, %444  : i64
    %458 = llvm.add %457, %449  : i64
    %459 = llvm.getelementptr %453[%458] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %460 = llvm.load %459 : !llvm.ptr<i32>
    %461 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(20 : index) : i64
    %463 = llvm.mul %434, %462  : i64
    %464 = llvm.mlir.constant(4 : index) : i64
    %465 = llvm.mul %439, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.add %466, %452  : i64
    %468 = llvm.add %467, %449  : i64
    %469 = llvm.getelementptr %461[%468] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %460, %469 : !llvm.ptr<i32>
    %470 = llvm.add %449, %448  : i64
    llvm.br ^bb79(%470 : i64)
  ^bb81:  // pred: ^bb79
    %471 = llvm.add %444, %443  : i64
    llvm.br ^bb77(%471 : i64)
  ^bb82:  // pred: ^bb77
    %472 = llvm.add %439, %438  : i64
    llvm.br ^bb75(%472 : i64)
  ^bb83:  // pred: ^bb75
    %473 = llvm.add %434, %433  : i64
    llvm.br ^bb73(%473 : i64)
  ^bb84:  // pred: ^bb73
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%474 : i64)
  ^bb85(%477: i64):  // 2 preds: ^bb84, ^bb95
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(5 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%479 : i64)
  ^bb87(%482: i64):  // 2 preds: ^bb86, ^bb94
    %483 = llvm.icmp "slt" %482, %480 : i64
    llvm.cond_br %483, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%484 : i64)
  ^bb89(%487: i64):  // 2 preds: ^bb88, ^bb93
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%489 : i64)
  ^bb91(%492: i64):  // 2 preds: ^bb90, ^bb92
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.add %487, %494  : i64
    %496 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(5 : index) : i64
    %498 = llvm.mul %477, %497  : i64
    %499 = llvm.add %498, %482  : i64
    %500 = llvm.add %499, %487  : i64
    %501 = llvm.add %500, %492  : i64
    %502 = llvm.getelementptr %496[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %503 = llvm.load %502 : !llvm.ptr<i32>
    %504 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(20 : index) : i64
    %506 = llvm.mul %477, %505  : i64
    %507 = llvm.mlir.constant(4 : index) : i64
    %508 = llvm.mul %482, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.add %509, %495  : i64
    %511 = llvm.add %510, %492  : i64
    %512 = llvm.getelementptr %504[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %503, %512 : !llvm.ptr<i32>
    %513 = llvm.add %492, %491  : i64
    llvm.br ^bb91(%513 : i64)
  ^bb93:  // pred: ^bb91
    %514 = llvm.add %487, %486  : i64
    llvm.br ^bb89(%514 : i64)
  ^bb94:  // pred: ^bb89
    %515 = llvm.add %482, %481  : i64
    llvm.br ^bb87(%515 : i64)
  ^bb95:  // pred: ^bb87
    %516 = llvm.add %477, %476  : i64
    llvm.br ^bb85(%516 : i64)
  ^bb96:  // pred: ^bb85
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%517 : i64)
  ^bb97(%520: i64):  // 2 preds: ^bb96, ^bb107
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(5 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%522 : i64)
  ^bb99(%525: i64):  // 2 preds: ^bb98, ^bb106
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%527 : i64)
  ^bb101(%530: i64):  // 2 preds: ^bb100, ^bb105
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%532 : i64)
  ^bb103(%535: i64):  // 2 preds: ^bb102, ^bb104
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %537 = llvm.mlir.constant(3 : index) : i64
    %538 = llvm.add %530, %537  : i64
    %539 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.mlir.constant(5 : index) : i64
    %541 = llvm.mul %520, %540  : i64
    %542 = llvm.add %541, %525  : i64
    %543 = llvm.add %542, %530  : i64
    %544 = llvm.add %543, %535  : i64
    %545 = llvm.getelementptr %539[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %546 = llvm.load %545 : !llvm.ptr<i32>
    %547 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mlir.constant(20 : index) : i64
    %549 = llvm.mul %520, %548  : i64
    %550 = llvm.mlir.constant(4 : index) : i64
    %551 = llvm.mul %525, %550  : i64
    %552 = llvm.add %549, %551  : i64
    %553 = llvm.add %552, %538  : i64
    %554 = llvm.add %553, %535  : i64
    %555 = llvm.getelementptr %547[%554] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %546, %555 : !llvm.ptr<i32>
    %556 = llvm.add %535, %534  : i64
    llvm.br ^bb103(%556 : i64)
  ^bb105:  // pred: ^bb103
    %557 = llvm.add %530, %529  : i64
    llvm.br ^bb101(%557 : i64)
  ^bb106:  // pred: ^bb101
    %558 = llvm.add %525, %524  : i64
    llvm.br ^bb99(%558 : i64)
  ^bb107:  // pred: ^bb99
    %559 = llvm.add %520, %519  : i64
    llvm.br ^bb97(%559 : i64)
  ^bb108:  // pred: ^bb97
    %560 = llvm.mlir.constant(1 : index) : i64
    %561 = llvm.mlir.constant(5 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(20 : index) : i64
    %566 = llvm.mlir.constant(20 : index) : i64
    %567 = llvm.mlir.null : !llvm.ptr<i32>
    %568 = llvm.getelementptr %567[%566] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %569 = llvm.ptrtoint %568 : !llvm.ptr<i32> to i64
    %570 = llvm.mlir.constant(16 : index) : i64
    %571 = llvm.add %569, %570  : i64
    %572 = llvm.call @malloc(%571) : (i64) -> !llvm.ptr<i8>
    %573 = llvm.bitcast %572 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %574 = llvm.ptrtoint %573 : !llvm.ptr<i32> to i64
    %575 = llvm.mlir.constant(1 : index) : i64
    %576 = llvm.sub %570, %575  : i64
    %577 = llvm.add %574, %576  : i64
    %578 = llvm.urem %577, %570  : i64
    %579 = llvm.sub %577, %578  : i64
    %580 = llvm.inttoptr %579 : i64 to !llvm.ptr<i32>
    %581 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %582 = llvm.insertvalue %573, %581[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.insertvalue %580, %582[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.insertvalue %584, %583[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %560, %585[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %561, %586[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %562, %587[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %563, %588[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %565, %589[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %562, %590[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %563, %591[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %564, %592[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%594 : i64)
  ^bb109(%597: i64):  // 2 preds: ^bb108, ^bb119
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(5 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%599 : i64)
  ^bb111(%602: i64):  // 2 preds: ^bb110, ^bb118
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.mlir.constant(4 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%604 : i64)
  ^bb113(%607: i64):  // 2 preds: ^bb112, ^bb117
    %608 = llvm.icmp "slt" %607, %605 : i64
    llvm.cond_br %608, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%609 : i64)
  ^bb115(%612: i64):  // 2 preds: ^bb114, ^bb116
    %613 = llvm.icmp "slt" %612, %610 : i64
    llvm.cond_br %613, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %614 = llvm.extractvalue %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.mlir.constant(20 : index) : i64
    %616 = llvm.mul %597, %615  : i64
    %617 = llvm.mlir.constant(4 : index) : i64
    %618 = llvm.mul %602, %617  : i64
    %619 = llvm.add %616, %618  : i64
    %620 = llvm.add %619, %607  : i64
    %621 = llvm.add %620, %612  : i64
    %622 = llvm.getelementptr %614[%621] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %623 = llvm.load %622 : !llvm.ptr<i32>
    %624 = llvm.sub %60, %623  : i32
    %625 = llvm.extractvalue %593[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.mlir.constant(20 : index) : i64
    %627 = llvm.mul %597, %626  : i64
    %628 = llvm.mlir.constant(4 : index) : i64
    %629 = llvm.mul %602, %628  : i64
    %630 = llvm.add %627, %629  : i64
    %631 = llvm.add %630, %607  : i64
    %632 = llvm.add %631, %612  : i64
    %633 = llvm.getelementptr %625[%632] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %624, %633 : !llvm.ptr<i32>
    %634 = llvm.add %612, %611  : i64
    llvm.br ^bb115(%634 : i64)
  ^bb117:  // pred: ^bb115
    %635 = llvm.add %607, %606  : i64
    llvm.br ^bb113(%635 : i64)
  ^bb118:  // pred: ^bb113
    %636 = llvm.add %602, %601  : i64
    llvm.br ^bb111(%636 : i64)
  ^bb119:  // pred: ^bb111
    %637 = llvm.add %597, %596  : i64
    llvm.br ^bb109(%637 : i64)
  ^bb120:  // pred: ^bb109
    %638 = llvm.mlir.constant(1 : index) : i64
    %639 = llvm.mlir.constant(5 : index) : i64
    %640 = llvm.mlir.constant(4 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(20 : index) : i64
    %644 = llvm.mlir.constant(20 : index) : i64
    %645 = llvm.mlir.null : !llvm.ptr<f64>
    %646 = llvm.getelementptr %645[%644] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %647 = llvm.ptrtoint %646 : !llvm.ptr<f64> to i64
    %648 = llvm.mlir.constant(16 : index) : i64
    %649 = llvm.add %647, %648  : i64
    %650 = llvm.call @malloc(%649) : (i64) -> !llvm.ptr<i8>
    %651 = llvm.bitcast %650 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %652 = llvm.ptrtoint %651 : !llvm.ptr<f64> to i64
    %653 = llvm.mlir.constant(1 : index) : i64
    %654 = llvm.sub %648, %653  : i64
    %655 = llvm.add %652, %654  : i64
    %656 = llvm.urem %655, %648  : i64
    %657 = llvm.sub %655, %656  : i64
    %658 = llvm.inttoptr %657 : i64 to !llvm.ptr<f64>
    %659 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %660 = llvm.insertvalue %651, %659[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %661 = llvm.insertvalue %658, %660[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.mlir.constant(0 : index) : i64
    %663 = llvm.insertvalue %662, %661[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %664 = llvm.insertvalue %638, %663[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %665 = llvm.insertvalue %639, %664[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.insertvalue %640, %665[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.insertvalue %641, %666[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.insertvalue %643, %667[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.insertvalue %640, %668[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.insertvalue %641, %669[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.insertvalue %642, %670[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.mlir.constant(0 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%672 : i64)
  ^bb121(%675: i64):  // 2 preds: ^bb120, ^bb131
    %676 = llvm.icmp "slt" %675, %673 : i64
    llvm.cond_br %676, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %677 = llvm.mlir.constant(0 : index) : i64
    %678 = llvm.mlir.constant(5 : index) : i64
    %679 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%677 : i64)
  ^bb123(%680: i64):  // 2 preds: ^bb122, ^bb130
    %681 = llvm.icmp "slt" %680, %678 : i64
    llvm.cond_br %681, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %682 = llvm.mlir.constant(0 : index) : i64
    %683 = llvm.mlir.constant(4 : index) : i64
    %684 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%682 : i64)
  ^bb125(%685: i64):  // 2 preds: ^bb124, ^bb129
    %686 = llvm.icmp "slt" %685, %683 : i64
    llvm.cond_br %686, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %687 = llvm.mlir.constant(0 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    %689 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%687 : i64)
  ^bb127(%690: i64):  // 2 preds: ^bb126, ^bb128
    %691 = llvm.icmp "slt" %690, %688 : i64
    llvm.cond_br %691, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %692 = llvm.extractvalue %593[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %693 = llvm.mlir.constant(20 : index) : i64
    %694 = llvm.mul %675, %693  : i64
    %695 = llvm.mlir.constant(4 : index) : i64
    %696 = llvm.mul %680, %695  : i64
    %697 = llvm.add %694, %696  : i64
    %698 = llvm.add %697, %685  : i64
    %699 = llvm.add %698, %690  : i64
    %700 = llvm.getelementptr %692[%699] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %701 = llvm.load %700 : !llvm.ptr<i32>
    %702 = llvm.sitofp %701 : i32 to f64
    %703 = llvm.extractvalue %671[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.mlir.constant(20 : index) : i64
    %705 = llvm.mul %675, %704  : i64
    %706 = llvm.mlir.constant(4 : index) : i64
    %707 = llvm.mul %680, %706  : i64
    %708 = llvm.add %705, %707  : i64
    %709 = llvm.add %708, %685  : i64
    %710 = llvm.add %709, %690  : i64
    %711 = llvm.getelementptr %703[%710] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %702, %711 : !llvm.ptr<f64>
    %712 = llvm.add %690, %689  : i64
    llvm.br ^bb127(%712 : i64)
  ^bb129:  // pred: ^bb127
    %713 = llvm.add %685, %684  : i64
    llvm.br ^bb125(%713 : i64)
  ^bb130:  // pred: ^bb125
    %714 = llvm.add %680, %679  : i64
    llvm.br ^bb123(%714 : i64)
  ^bb131:  // pred: ^bb123
    %715 = llvm.add %675, %674  : i64
    llvm.br ^bb121(%715 : i64)
  ^bb132:  // pred: ^bb121
    %716 = llvm.mlir.constant(1 : index) : i64
    %717 = llvm.mlir.constant(5 : index) : i64
    %718 = llvm.mlir.constant(8 : index) : i64
    %719 = llvm.mlir.constant(1 : index) : i64
    %720 = llvm.mlir.constant(1 : index) : i64
    %721 = llvm.mlir.constant(40 : index) : i64
    %722 = llvm.mlir.constant(40 : index) : i64
    %723 = llvm.mlir.null : !llvm.ptr<i32>
    %724 = llvm.getelementptr %723[%722] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %725 = llvm.ptrtoint %724 : !llvm.ptr<i32> to i64
    %726 = llvm.mlir.constant(16 : index) : i64
    %727 = llvm.add %725, %726  : i64
    %728 = llvm.call @malloc(%727) : (i64) -> !llvm.ptr<i8>
    %729 = llvm.bitcast %728 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %730 = llvm.ptrtoint %729 : !llvm.ptr<i32> to i64
    %731 = llvm.mlir.constant(1 : index) : i64
    %732 = llvm.sub %726, %731  : i64
    %733 = llvm.add %730, %732  : i64
    %734 = llvm.urem %733, %726  : i64
    %735 = llvm.sub %733, %734  : i64
    %736 = llvm.inttoptr %735 : i64 to !llvm.ptr<i32>
    %737 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %738 = llvm.insertvalue %729, %737[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.insertvalue %736, %738[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.mlir.constant(0 : index) : i64
    %741 = llvm.insertvalue %740, %739[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %742 = llvm.insertvalue %716, %741[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %743 = llvm.insertvalue %717, %742[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %744 = llvm.insertvalue %718, %743[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %745 = llvm.insertvalue %719, %744[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %746 = llvm.insertvalue %721, %745[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %747 = llvm.insertvalue %718, %746[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %748 = llvm.insertvalue %719, %747[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %749 = llvm.insertvalue %720, %748[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %750 = llvm.mlir.constant(0 : index) : i64
    %751 = llvm.mlir.constant(1 : index) : i64
    %752 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb133(%750 : i64)
  ^bb133(%753: i64):  // 2 preds: ^bb132, ^bb143
    %754 = llvm.icmp "slt" %753, %751 : i64
    llvm.cond_br %754, ^bb134, ^bb144
  ^bb134:  // pred: ^bb133
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.mlir.constant(5 : index) : i64
    %757 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb135(%755 : i64)
  ^bb135(%758: i64):  // 2 preds: ^bb134, ^bb142
    %759 = llvm.icmp "slt" %758, %756 : i64
    llvm.cond_br %759, ^bb136, ^bb143
  ^bb136:  // pred: ^bb135
    %760 = llvm.mlir.constant(0 : index) : i64
    %761 = llvm.mlir.constant(4 : index) : i64
    %762 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb137(%760 : i64)
  ^bb137(%763: i64):  // 2 preds: ^bb136, ^bb141
    %764 = llvm.icmp "slt" %763, %761 : i64
    llvm.cond_br %764, ^bb138, ^bb142
  ^bb138:  // pred: ^bb137
    %765 = llvm.mlir.constant(0 : index) : i64
    %766 = llvm.mlir.constant(1 : index) : i64
    %767 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb139(%765 : i64)
  ^bb139(%768: i64):  // 2 preds: ^bb138, ^bb140
    %769 = llvm.icmp "slt" %768, %766 : i64
    llvm.cond_br %769, ^bb140, ^bb141
  ^bb140:  // pred: ^bb139
    %770 = llvm.extractvalue %593[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %771 = llvm.mlir.constant(20 : index) : i64
    %772 = llvm.mul %753, %771  : i64
    %773 = llvm.mlir.constant(4 : index) : i64
    %774 = llvm.mul %758, %773  : i64
    %775 = llvm.add %772, %774  : i64
    %776 = llvm.add %775, %763  : i64
    %777 = llvm.add %776, %768  : i64
    %778 = llvm.getelementptr %770[%777] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %779 = llvm.load %778 : !llvm.ptr<i32>
    %780 = llvm.extractvalue %749[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %781 = llvm.mlir.constant(40 : index) : i64
    %782 = llvm.mul %753, %781  : i64
    %783 = llvm.mlir.constant(8 : index) : i64
    %784 = llvm.mul %758, %783  : i64
    %785 = llvm.add %782, %784  : i64
    %786 = llvm.add %785, %763  : i64
    %787 = llvm.add %786, %768  : i64
    %788 = llvm.getelementptr %780[%787] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %779, %788 : !llvm.ptr<i32>
    %789 = llvm.add %768, %767  : i64
    llvm.br ^bb139(%789 : i64)
  ^bb141:  // pred: ^bb139
    %790 = llvm.add %763, %762  : i64
    llvm.br ^bb137(%790 : i64)
  ^bb142:  // pred: ^bb137
    %791 = llvm.add %758, %757  : i64
    llvm.br ^bb135(%791 : i64)
  ^bb143:  // pred: ^bb135
    %792 = llvm.add %753, %752  : i64
    llvm.br ^bb133(%792 : i64)
  ^bb144:  // pred: ^bb133
    %793 = llvm.mlir.constant(0 : index) : i64
    %794 = llvm.mlir.constant(1 : index) : i64
    %795 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb145(%793 : i64)
  ^bb145(%796: i64):  // 2 preds: ^bb144, ^bb155
    %797 = llvm.icmp "slt" %796, %794 : i64
    llvm.cond_br %797, ^bb146, ^bb156
  ^bb146:  // pred: ^bb145
    %798 = llvm.mlir.constant(0 : index) : i64
    %799 = llvm.mlir.constant(5 : index) : i64
    %800 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb147(%798 : i64)
  ^bb147(%801: i64):  // 2 preds: ^bb146, ^bb154
    %802 = llvm.icmp "slt" %801, %799 : i64
    llvm.cond_br %802, ^bb148, ^bb155
  ^bb148:  // pred: ^bb147
    %803 = llvm.mlir.constant(0 : index) : i64
    %804 = llvm.mlir.constant(4 : index) : i64
    %805 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb149(%803 : i64)
  ^bb149(%806: i64):  // 2 preds: ^bb148, ^bb153
    %807 = llvm.icmp "slt" %806, %804 : i64
    llvm.cond_br %807, ^bb150, ^bb154
  ^bb150:  // pred: ^bb149
    %808 = llvm.mlir.constant(0 : index) : i64
    %809 = llvm.mlir.constant(1 : index) : i64
    %810 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb151(%808 : i64)
  ^bb151(%811: i64):  // 2 preds: ^bb150, ^bb152
    %812 = llvm.icmp "slt" %811, %809 : i64
    llvm.cond_br %812, ^bb152, ^bb153
  ^bb152:  // pred: ^bb151
    %813 = llvm.mlir.constant(4 : index) : i64
    %814 = llvm.add %806, %813  : i64
    %815 = llvm.extractvalue %593[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %816 = llvm.mlir.constant(20 : index) : i64
    %817 = llvm.mul %796, %816  : i64
    %818 = llvm.mlir.constant(4 : index) : i64
    %819 = llvm.mul %801, %818  : i64
    %820 = llvm.add %817, %819  : i64
    %821 = llvm.add %820, %806  : i64
    %822 = llvm.add %821, %811  : i64
    %823 = llvm.getelementptr %815[%822] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %824 = llvm.load %823 : !llvm.ptr<i32>
    %825 = llvm.extractvalue %749[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %826 = llvm.mlir.constant(40 : index) : i64
    %827 = llvm.mul %796, %826  : i64
    %828 = llvm.mlir.constant(8 : index) : i64
    %829 = llvm.mul %801, %828  : i64
    %830 = llvm.add %827, %829  : i64
    %831 = llvm.add %830, %814  : i64
    %832 = llvm.add %831, %811  : i64
    %833 = llvm.getelementptr %825[%832] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %824, %833 : !llvm.ptr<i32>
    %834 = llvm.add %811, %810  : i64
    llvm.br ^bb151(%834 : i64)
  ^bb153:  // pred: ^bb151
    %835 = llvm.add %806, %805  : i64
    llvm.br ^bb149(%835 : i64)
  ^bb154:  // pred: ^bb149
    %836 = llvm.add %801, %800  : i64
    llvm.br ^bb147(%836 : i64)
  ^bb155:  // pred: ^bb147
    %837 = llvm.add %796, %795  : i64
    llvm.br ^bb145(%837 : i64)
  ^bb156:  // pred: ^bb145
    %838 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %839 = llvm.insertvalue %671, %838[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %840 = llvm.insertvalue %749, %839[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %840 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v8_0", "v2_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %60 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %60, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129, %170) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %208 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %209 = llvm.extractvalue %208[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %210 = llvm.extractvalue %208[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %211 = llvm.mlir.constant(2 : i64) : i64
    %212 = llvm.mlir.constant(16 : i64) : i64
    %213 = llvm.call @malloc(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %215 = llvm.mlir.constant(4 : i64) : i64
    %216 = llvm.call @omTensorCreateUntyped(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.mlir.constant(1 : i64) : i64
    %218 = llvm.extractvalue %209[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %220 = llvm.extractvalue %209[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.bitcast %220 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%216, %217, %219, %221) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %222 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%216, %222) : (!llvm.ptr<i8>, i64) -> ()
    %223 = llvm.call @omTensorGetShape(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %224 = llvm.call @omTensorGetStrides(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %225 = llvm.mlir.constant(0 : i64) : i64
    %226 = llvm.extractvalue %209[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %223[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %209[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.getelementptr %224[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.mlir.constant(1 : i64) : i64
    %231 = llvm.extractvalue %209[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %223[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.extractvalue %209[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %224[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.mlir.constant(2 : i64) : i64
    %236 = llvm.extractvalue %209[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.getelementptr %223[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %237 : !llvm.ptr<i64>
    %238 = llvm.extractvalue %209[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.getelementptr %224[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %239 : !llvm.ptr<i64>
    %240 = llvm.mlir.constant(3 : i64) : i64
    %241 = llvm.extractvalue %209[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.getelementptr %223[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %241, %242 : !llvm.ptr<i64>
    %243 = llvm.extractvalue %209[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.getelementptr %224[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %244 : !llvm.ptr<i64>
    %245 = llvm.mlir.constant(0 : i64) : i64
    %246 = llvm.getelementptr %214[%245] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %216, %246 : !llvm.ptr<ptr<i8>>
    %247 = llvm.mlir.constant(4 : i64) : i64
    %248 = llvm.call @omTensorCreateUntyped(%247) : (i64) -> !llvm.ptr<i8>
    %249 = llvm.mlir.constant(1 : i64) : i64
    %250 = llvm.extractvalue %210[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.bitcast %250 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %252 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.bitcast %252 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%248, %249, %251, %253) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %254 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%248, %254) : (!llvm.ptr<i8>, i64) -> ()
    %255 = llvm.call @omTensorGetShape(%248) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %256 = llvm.call @omTensorGetStrides(%248) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %257 = llvm.mlir.constant(0 : i64) : i64
    %258 = llvm.extractvalue %210[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.getelementptr %255[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %258, %259 : !llvm.ptr<i64>
    %260 = llvm.extractvalue %210[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.getelementptr %256[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %261 : !llvm.ptr<i64>
    %262 = llvm.mlir.constant(1 : i64) : i64
    %263 = llvm.extractvalue %210[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.getelementptr %255[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %263, %264 : !llvm.ptr<i64>
    %265 = llvm.extractvalue %210[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.getelementptr %256[%262] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %265, %266 : !llvm.ptr<i64>
    %267 = llvm.mlir.constant(2 : i64) : i64
    %268 = llvm.extractvalue %210[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.getelementptr %255[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %268, %269 : !llvm.ptr<i64>
    %270 = llvm.extractvalue %210[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.getelementptr %256[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %270, %271 : !llvm.ptr<i64>
    %272 = llvm.mlir.constant(3 : i64) : i64
    %273 = llvm.extractvalue %210[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.getelementptr %255[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %273, %274 : !llvm.ptr<i64>
    %275 = llvm.extractvalue %210[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.getelementptr %256[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %275, %276 : !llvm.ptr<i64>
    %277 = llvm.mlir.constant(1 : i64) : i64
    %278 = llvm.getelementptr %214[%277] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %248, %278 : !llvm.ptr<ptr<i8>>
    %279 = llvm.call @omTensorListCreate(%214, %211, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %279 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<352 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<352 x i8>> to !llvm.ptr<i8>
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


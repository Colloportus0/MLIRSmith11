module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v14_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v13_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [4 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [4 , 2 , 4 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [4 , 2 , 4 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[[[[7]]], [[[3]]], [[[5]]], [[[6]]]]> : tensor<4x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[[[[3]]], [[[4]]], [[[7]]], [[[5]]]]> : tensor<4x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<[[[5], [3], [3], [6]]]> : tensor<1x4x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<4 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_1(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: !llvm.ptr<i32>, %arg32: !llvm.ptr<i32>, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: !llvm.ptr<i1>, %arg43: !llvm.ptr<i1>, %arg44: i64, %arg45: i64, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v14_0", "v13_0", "v3_0", "v7_0", "v2_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.insertvalue %arg31, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg32, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg33, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg34, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg38, %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg35, %39[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg39, %40[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg36, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg40, %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg37, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg41, %44[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %arg42, %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %arg43, %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %arg44, %48[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %arg45, %49[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %arg49, %50[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %arg46, %51[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %arg50, %52[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %arg47, %53[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %arg51, %54[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %arg48, %55[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %arg52, %56[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %83 = llvm.bitcast %82 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %84 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %85 = llvm.insertvalue %83, %84[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.insertvalue %103, %102[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<4 x array<1 x i32>>>>
    %106 = llvm.bitcast %105 : !llvm.ptr<array<1 x array<4 x array<1 x i32>>>> to !llvm.ptr<i32>
    %107 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %108 = llvm.insertvalue %106, %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.insertvalue %106, %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.insertvalue %110, %109[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.insertvalue %112, %111[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.mlir.constant(4 : index) : i64
    %115 = llvm.insertvalue %114, %113[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.insertvalue %116, %115[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.insertvalue %120, %119[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.insertvalue %122, %121[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x array<1 x array<1 x array<1 x i32>>>>>
    %125 = llvm.bitcast %124 : !llvm.ptr<array<4 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %126 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %127 = llvm.insertvalue %125, %126[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(4 : index) : i64
    %132 = llvm.insertvalue %131, %130[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.insertvalue %133, %132[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.insertvalue %135, %134[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.insertvalue %137, %136[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.insertvalue %139, %138[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.insertvalue %141, %140[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.insertvalue %143, %142[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.insertvalue %145, %144[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x array<1 x array<1 x array<1 x i32>>>>>
    %148 = llvm.bitcast %147 : !llvm.ptr<array<4 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %150 = llvm.insertvalue %148, %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(4 : index) : i64
    %155 = llvm.insertvalue %154, %153[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.insertvalue %156, %155[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.insertvalue %158, %157[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.insertvalue %160, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.insertvalue %162, %161[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.insertvalue %164, %163[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.insertvalue %166, %165[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.insertvalue %168, %167[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.null : !llvm.ptr<i32>
    %176 = llvm.getelementptr %175[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i32> to i64
    %178 = llvm.mlir.constant(16 : index) : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.call @malloc(%179) : (i64) -> !llvm.ptr<i8>
    %181 = llvm.bitcast %180 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<i32> to i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.sub %178, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.urem %185, %178  : i64
    %187 = llvm.sub %185, %186  : i64
    %188 = llvm.inttoptr %187 : i64 to !llvm.ptr<i32>
    %189 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %190 = llvm.insertvalue %181, %189[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %170, %193[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %171, %194[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %172, %195[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %173, %196[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %171, %197[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %172, %198[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %173, %199[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %174, %200[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%202 : i64)
  ^bb1(%205: i64):  // 2 preds: ^bb0, ^bb11
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%207 : i64)
  ^bb3(%210: i64):  // 2 preds: ^bb2, ^bb10
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%212 : i64)
  ^bb5(%215: i64):  // 2 preds: ^bb4, ^bb9
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%217 : i64)
  ^bb7(%220: i64):  // 2 preds: ^bb6, ^bb8
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %222 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.add %205, %210  : i64
    %224 = llvm.add %223, %215  : i64
    %225 = llvm.add %224, %220  : i64
    %226 = llvm.getelementptr %222[%225] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %227 = llvm.load %226 : !llvm.ptr<i32>
    %228 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.add %205, %210  : i64
    %230 = llvm.add %229, %215  : i64
    %231 = llvm.add %230, %220  : i64
    %232 = llvm.getelementptr %228[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %227, %232 : !llvm.ptr<i32>
    %233 = llvm.add %220, %219  : i64
    llvm.br ^bb7(%233 : i64)
  ^bb9:  // pred: ^bb7
    %234 = llvm.add %215, %214  : i64
    llvm.br ^bb5(%234 : i64)
  ^bb10:  // pred: ^bb5
    %235 = llvm.add %210, %209  : i64
    llvm.br ^bb3(%235 : i64)
  ^bb11:  // pred: ^bb3
    %236 = llvm.add %205, %204  : i64
    llvm.br ^bb1(%236 : i64)
  ^bb12:  // pred: ^bb1
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%237 : i64)
  ^bb13(%240: i64):  // 2 preds: ^bb12, ^bb23
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%242 : i64)
  ^bb15(%245: i64):  // 2 preds: ^bb14, ^bb22
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%247 : i64)
  ^bb17(%250: i64):  // 2 preds: ^bb16, ^bb21
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%252 : i64)
  ^bb19(%255: i64):  // 2 preds: ^bb18, ^bb20
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.add %240, %257  : i64
    %259 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.add %240, %245  : i64
    %261 = llvm.add %260, %250  : i64
    %262 = llvm.add %261, %255  : i64
    %263 = llvm.getelementptr %259[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.load %263 : !llvm.ptr<i32>
    %265 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.add %258, %245  : i64
    %267 = llvm.add %266, %250  : i64
    %268 = llvm.add %267, %255  : i64
    %269 = llvm.getelementptr %265[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %264, %269 : !llvm.ptr<i32>
    %270 = llvm.add %255, %254  : i64
    llvm.br ^bb19(%270 : i64)
  ^bb21:  // pred: ^bb19
    %271 = llvm.add %250, %249  : i64
    llvm.br ^bb17(%271 : i64)
  ^bb22:  // pred: ^bb17
    %272 = llvm.add %245, %244  : i64
    llvm.br ^bb15(%272 : i64)
  ^bb23:  // pred: ^bb15
    %273 = llvm.add %240, %239  : i64
    llvm.br ^bb13(%273 : i64)
  ^bb24:  // pred: ^bb13
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%274 : i64)
  ^bb25(%277: i64):  // 2 preds: ^bb24, ^bb35
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%279 : i64)
  ^bb27(%282: i64):  // 2 preds: ^bb26, ^bb34
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%284 : i64)
  ^bb29(%287: i64):  // 2 preds: ^bb28, ^bb33
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%289 : i64)
  ^bb31(%292: i64):  // 2 preds: ^bb30, ^bb32
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.add %277, %294  : i64
    %296 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.add %277, %282  : i64
    %298 = llvm.add %297, %287  : i64
    %299 = llvm.add %298, %292  : i64
    %300 = llvm.getelementptr %296[%299] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %301 = llvm.load %300 : !llvm.ptr<i32>
    %302 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.add %295, %282  : i64
    %304 = llvm.add %303, %287  : i64
    %305 = llvm.add %304, %292  : i64
    %306 = llvm.getelementptr %302[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %301, %306 : !llvm.ptr<i32>
    %307 = llvm.add %292, %291  : i64
    llvm.br ^bb31(%307 : i64)
  ^bb33:  // pred: ^bb31
    %308 = llvm.add %287, %286  : i64
    llvm.br ^bb29(%308 : i64)
  ^bb34:  // pred: ^bb29
    %309 = llvm.add %282, %281  : i64
    llvm.br ^bb27(%309 : i64)
  ^bb35:  // pred: ^bb27
    %310 = llvm.add %277, %276  : i64
    llvm.br ^bb25(%310 : i64)
  ^bb36:  // pred: ^bb25
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%311 : i64)
  ^bb37(%314: i64):  // 2 preds: ^bb36, ^bb47
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%316 : i64)
  ^bb39(%319: i64):  // 2 preds: ^bb38, ^bb46
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%321 : i64)
  ^bb41(%324: i64):  // 2 preds: ^bb40, ^bb45
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%326 : i64)
  ^bb43(%329: i64):  // 2 preds: ^bb42, ^bb44
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %331 = llvm.mlir.constant(3 : index) : i64
    %332 = llvm.add %314, %331  : i64
    %333 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.add %314, %319  : i64
    %335 = llvm.add %334, %324  : i64
    %336 = llvm.add %335, %329  : i64
    %337 = llvm.getelementptr %333[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %338 = llvm.load %337 : !llvm.ptr<i32>
    %339 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.add %332, %319  : i64
    %341 = llvm.add %340, %324  : i64
    %342 = llvm.add %341, %329  : i64
    %343 = llvm.getelementptr %339[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %338, %343 : !llvm.ptr<i32>
    %344 = llvm.add %329, %328  : i64
    llvm.br ^bb43(%344 : i64)
  ^bb45:  // pred: ^bb43
    %345 = llvm.add %324, %323  : i64
    llvm.br ^bb41(%345 : i64)
  ^bb46:  // pred: ^bb41
    %346 = llvm.add %319, %318  : i64
    llvm.br ^bb39(%346 : i64)
  ^bb47:  // pred: ^bb39
    %347 = llvm.add %314, %313  : i64
    llvm.br ^bb37(%347 : i64)
  ^bb48:  // pred: ^bb37
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(8 : index) : i64
    %353 = llvm.mlir.constant(8 : index) : i64
    %354 = llvm.mlir.null : !llvm.ptr<i32>
    %355 = llvm.getelementptr %354[%353] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %356 = llvm.ptrtoint %355 : !llvm.ptr<i32> to i64
    %357 = llvm.mlir.constant(16 : index) : i64
    %358 = llvm.add %356, %357  : i64
    %359 = llvm.call @malloc(%358) : (i64) -> !llvm.ptr<i8>
    %360 = llvm.bitcast %359 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %361 = llvm.ptrtoint %360 : !llvm.ptr<i32> to i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.sub %357, %362  : i64
    %364 = llvm.add %361, %363  : i64
    %365 = llvm.urem %364, %357  : i64
    %366 = llvm.sub %364, %365  : i64
    %367 = llvm.inttoptr %366 : i64 to !llvm.ptr<i32>
    %368 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %369 = llvm.insertvalue %360, %368[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %370 = llvm.insertvalue %367, %369[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.insertvalue %371, %370[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %373 = llvm.insertvalue %348, %372[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %374 = llvm.insertvalue %349, %373[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.insertvalue %350, %374[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.insertvalue %352, %375[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %377 = llvm.insertvalue %350, %376[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %378 = llvm.insertvalue %351, %377[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%379 : i64)
  ^bb49(%382: i64):  // 2 preds: ^bb48, ^bb56
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%384 : i64)
  ^bb51(%387: i64):  // 2 preds: ^bb50, ^bb55
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%389 : i64)
  ^bb53(%392: i64):  // 2 preds: ^bb52, ^bb54
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %394 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %395 = llvm.mlir.constant(4 : index) : i64
    %396 = llvm.mul %382, %395  : i64
    %397 = llvm.add %396, %387  : i64
    %398 = llvm.add %397, %392  : i64
    %399 = llvm.getelementptr %394[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %400 = llvm.load %399 : !llvm.ptr<i32>
    %401 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.mlir.constant(8 : index) : i64
    %403 = llvm.mul %382, %402  : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mul %387, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.add %406, %392  : i64
    %408 = llvm.getelementptr %401[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %400, %408 : !llvm.ptr<i32>
    %409 = llvm.add %392, %391  : i64
    llvm.br ^bb53(%409 : i64)
  ^bb55:  // pred: ^bb53
    %410 = llvm.add %387, %386  : i64
    llvm.br ^bb51(%410 : i64)
  ^bb56:  // pred: ^bb51
    %411 = llvm.add %382, %381  : i64
    llvm.br ^bb49(%411 : i64)
  ^bb57:  // pred: ^bb49
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%412 : i64)
  ^bb58(%415: i64):  // 2 preds: ^bb57, ^bb65
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%417 : i64)
  ^bb60(%420: i64):  // 2 preds: ^bb59, ^bb64
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%422 : i64)
  ^bb62(%425: i64):  // 2 preds: ^bb61, ^bb63
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.extractvalue %123[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mul %415, %430  : i64
    %432 = llvm.add %431, %420  : i64
    %433 = llvm.add %432, %425  : i64
    %434 = llvm.getelementptr %429[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.load %434 : !llvm.ptr<i32>
    %436 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %437 = llvm.mlir.constant(8 : index) : i64
    %438 = llvm.mul %415, %437  : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %420, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.add %441, %428  : i64
    %443 = llvm.getelementptr %436[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %435, %443 : !llvm.ptr<i32>
    %444 = llvm.add %425, %424  : i64
    llvm.br ^bb62(%444 : i64)
  ^bb64:  // pred: ^bb62
    %445 = llvm.add %420, %419  : i64
    llvm.br ^bb60(%445 : i64)
  ^bb65:  // pred: ^bb60
    %446 = llvm.add %415, %414  : i64
    llvm.br ^bb58(%446 : i64)
  ^bb66:  // pred: ^bb58
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(4 : index) : i64
    %453 = llvm.mlir.constant(16 : index) : i64
    %454 = llvm.mlir.null : !llvm.ptr<i32>
    %455 = llvm.getelementptr %454[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %473 = llvm.insertvalue %447, %472[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %448, %473[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %449, %474[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %450, %475[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %452, %476[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %449, %477[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %450, %478[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %451, %479[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%481 : i64)
  ^bb67(%484: i64):  // 2 preds: ^bb66, ^bb77
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%486 : i64)
  ^bb69(%489: i64):  // 2 preds: ^bb68, ^bb76
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%491 : i64)
  ^bb71(%494: i64):  // 2 preds: ^bb70, ^bb75
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%496 : i64)
  ^bb73(%499: i64):  // 2 preds: ^bb72, ^bb74
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %501 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.add %484, %489  : i64
    %503 = llvm.add %502, %494  : i64
    %504 = llvm.add %503, %499  : i64
    %505 = llvm.getelementptr %501[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %506 = llvm.load %505 : !llvm.ptr<i32>
    %507 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %484, %508  : i64
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mul %489, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.add %512, %494  : i64
    %514 = llvm.add %513, %499  : i64
    %515 = llvm.getelementptr %507[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %506, %515 : !llvm.ptr<i32>
    %516 = llvm.add %499, %498  : i64
    llvm.br ^bb73(%516 : i64)
  ^bb75:  // pred: ^bb73
    %517 = llvm.add %494, %493  : i64
    llvm.br ^bb71(%517 : i64)
  ^bb76:  // pred: ^bb71
    %518 = llvm.add %489, %488  : i64
    llvm.br ^bb69(%518 : i64)
  ^bb77:  // pred: ^bb69
    %519 = llvm.add %484, %483  : i64
    llvm.br ^bb67(%519 : i64)
  ^bb78:  // pred: ^bb67
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(4 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%520 : i64)
  ^bb79(%523: i64):  // 2 preds: ^bb78, ^bb89
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%525 : i64)
  ^bb81(%528: i64):  // 2 preds: ^bb80, ^bb88
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%530 : i64)
  ^bb83(%533: i64):  // 2 preds: ^bb82, ^bb87
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%535 : i64)
  ^bb85(%538: i64):  // 2 preds: ^bb84, ^bb86
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.add %533, %540  : i64
    %542 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.add %523, %528  : i64
    %544 = llvm.add %543, %533  : i64
    %545 = llvm.add %544, %538  : i64
    %546 = llvm.getelementptr %542[%545] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %547 = llvm.load %546 : !llvm.ptr<i32>
    %548 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %523, %549  : i64
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mul %528, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.add %553, %541  : i64
    %555 = llvm.add %554, %538  : i64
    %556 = llvm.getelementptr %548[%555] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %547, %556 : !llvm.ptr<i32>
    %557 = llvm.add %538, %537  : i64
    llvm.br ^bb85(%557 : i64)
  ^bb87:  // pred: ^bb85
    %558 = llvm.add %533, %532  : i64
    llvm.br ^bb83(%558 : i64)
  ^bb88:  // pred: ^bb83
    %559 = llvm.add %528, %527  : i64
    llvm.br ^bb81(%559 : i64)
  ^bb89:  // pred: ^bb81
    %560 = llvm.add %523, %522  : i64
    llvm.br ^bb79(%560 : i64)
  ^bb90:  // pred: ^bb79
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%561 : i64)
  ^bb91(%564: i64):  // 2 preds: ^bb90, ^bb101
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb92, ^bb102
  ^bb92:  // pred: ^bb91
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%566 : i64)
  ^bb93(%569: i64):  // 2 preds: ^bb92, ^bb100
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb94, ^bb101
  ^bb94:  // pred: ^bb93
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%571 : i64)
  ^bb95(%574: i64):  // 2 preds: ^bb94, ^bb99
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb96, ^bb100
  ^bb96:  // pred: ^bb95
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%576 : i64)
  ^bb97(%579: i64):  // 2 preds: ^bb96, ^bb98
    %580 = llvm.icmp "slt" %579, %577 : i64
    llvm.cond_br %580, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %581 = llvm.mlir.constant(2 : index) : i64
    %582 = llvm.add %574, %581  : i64
    %583 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.add %564, %569  : i64
    %585 = llvm.add %584, %574  : i64
    %586 = llvm.add %585, %579  : i64
    %587 = llvm.getelementptr %583[%586] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %588 = llvm.load %587 : !llvm.ptr<i32>
    %589 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.mlir.constant(4 : index) : i64
    %591 = llvm.mul %564, %590  : i64
    %592 = llvm.mlir.constant(4 : index) : i64
    %593 = llvm.mul %569, %592  : i64
    %594 = llvm.add %591, %593  : i64
    %595 = llvm.add %594, %582  : i64
    %596 = llvm.add %595, %579  : i64
    %597 = llvm.getelementptr %589[%596] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %588, %597 : !llvm.ptr<i32>
    %598 = llvm.add %579, %578  : i64
    llvm.br ^bb97(%598 : i64)
  ^bb99:  // pred: ^bb97
    %599 = llvm.add %574, %573  : i64
    llvm.br ^bb95(%599 : i64)
  ^bb100:  // pred: ^bb95
    %600 = llvm.add %569, %568  : i64
    llvm.br ^bb93(%600 : i64)
  ^bb101:  // pred: ^bb93
    %601 = llvm.add %564, %563  : i64
    llvm.br ^bb91(%601 : i64)
  ^bb102:  // pred: ^bb91
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(4 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%602 : i64)
  ^bb103(%605: i64):  // 2 preds: ^bb102, ^bb113
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb104, ^bb114
  ^bb104:  // pred: ^bb103
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb105(%607 : i64)
  ^bb105(%610: i64):  // 2 preds: ^bb104, ^bb112
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb106, ^bb113
  ^bb106:  // pred: ^bb105
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb107(%612 : i64)
  ^bb107(%615: i64):  // 2 preds: ^bb106, ^bb111
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb108, ^bb112
  ^bb108:  // pred: ^bb107
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%617 : i64)
  ^bb109(%620: i64):  // 2 preds: ^bb108, ^bb110
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb110, ^bb111
  ^bb110:  // pred: ^bb109
    %622 = llvm.mlir.constant(3 : index) : i64
    %623 = llvm.add %615, %622  : i64
    %624 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.add %605, %610  : i64
    %626 = llvm.add %625, %615  : i64
    %627 = llvm.add %626, %620  : i64
    %628 = llvm.getelementptr %624[%627] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %629 = llvm.load %628 : !llvm.ptr<i32>
    %630 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.mlir.constant(4 : index) : i64
    %632 = llvm.mul %605, %631  : i64
    %633 = llvm.mlir.constant(4 : index) : i64
    %634 = llvm.mul %610, %633  : i64
    %635 = llvm.add %632, %634  : i64
    %636 = llvm.add %635, %623  : i64
    %637 = llvm.add %636, %620  : i64
    %638 = llvm.getelementptr %630[%637] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %629, %638 : !llvm.ptr<i32>
    %639 = llvm.add %620, %619  : i64
    llvm.br ^bb109(%639 : i64)
  ^bb111:  // pred: ^bb109
    %640 = llvm.add %615, %614  : i64
    llvm.br ^bb107(%640 : i64)
  ^bb112:  // pred: ^bb107
    %641 = llvm.add %610, %609  : i64
    llvm.br ^bb105(%641 : i64)
  ^bb113:  // pred: ^bb105
    %642 = llvm.add %605, %604  : i64
    llvm.br ^bb103(%642 : i64)
  ^bb114:  // pred: ^bb103
    %643 = llvm.mlir.constant(4 : index) : i64
    %644 = llvm.mlir.constant(2 : index) : i64
    %645 = llvm.mlir.constant(4 : index) : i64
    %646 = llvm.mlir.constant(2 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mlir.constant(8 : index) : i64
    %649 = llvm.mlir.constant(16 : index) : i64
    %650 = llvm.mlir.constant(64 : index) : i64
    %651 = llvm.mlir.null : !llvm.ptr<i32>
    %652 = llvm.getelementptr %651[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %653 = llvm.ptrtoint %652 : !llvm.ptr<i32> to i64
    %654 = llvm.mlir.constant(16 : index) : i64
    %655 = llvm.add %653, %654  : i64
    %656 = llvm.call @malloc(%655) : (i64) -> !llvm.ptr<i8>
    %657 = llvm.bitcast %656 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %658 = llvm.ptrtoint %657 : !llvm.ptr<i32> to i64
    %659 = llvm.mlir.constant(1 : index) : i64
    %660 = llvm.sub %654, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.urem %661, %654  : i64
    %663 = llvm.sub %661, %662  : i64
    %664 = llvm.inttoptr %663 : i64 to !llvm.ptr<i32>
    %665 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %666 = llvm.insertvalue %657, %665[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.insertvalue %664, %666[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.mlir.constant(0 : index) : i64
    %669 = llvm.insertvalue %668, %667[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.insertvalue %643, %669[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.insertvalue %644, %670[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %645, %671[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %646, %672[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %649, %673[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %648, %674[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %646, %675[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %647, %676[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.mlir.constant(0 : index) : i64
    %679 = llvm.mlir.constant(4 : index) : i64
    %680 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%678 : i64)
  ^bb115(%681: i64):  // 2 preds: ^bb114, ^bb125
    %682 = llvm.icmp "slt" %681, %679 : i64
    llvm.cond_br %682, ^bb116, ^bb126
  ^bb116:  // pred: ^bb115
    %683 = llvm.mlir.constant(0 : index) : i64
    %684 = llvm.mlir.constant(2 : index) : i64
    %685 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb117(%683 : i64)
  ^bb117(%686: i64):  // 2 preds: ^bb116, ^bb124
    %687 = llvm.icmp "slt" %686, %684 : i64
    llvm.cond_br %687, ^bb118, ^bb125
  ^bb118:  // pred: ^bb117
    %688 = llvm.mlir.constant(0 : index) : i64
    %689 = llvm.mlir.constant(4 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb119(%688 : i64)
  ^bb119(%691: i64):  // 2 preds: ^bb118, ^bb123
    %692 = llvm.icmp "slt" %691, %689 : i64
    llvm.cond_br %692, ^bb120, ^bb124
  ^bb120:  // pred: ^bb119
    %693 = llvm.mlir.constant(0 : index) : i64
    %694 = llvm.mlir.constant(2 : index) : i64
    %695 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%693 : i64)
  ^bb121(%696: i64):  // 2 preds: ^bb120, ^bb122
    %697 = llvm.icmp "slt" %696, %694 : i64
    llvm.cond_br %697, ^bb122, ^bb123
  ^bb122:  // pred: ^bb121
    %698 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.mlir.constant(16 : index) : i64
    %700 = llvm.mul %681, %699  : i64
    %701 = llvm.mlir.constant(8 : index) : i64
    %702 = llvm.mul %686, %701  : i64
    %703 = llvm.add %700, %702  : i64
    %704 = llvm.mlir.constant(2 : index) : i64
    %705 = llvm.mul %691, %704  : i64
    %706 = llvm.add %703, %705  : i64
    %707 = llvm.add %706, %696  : i64
    %708 = llvm.getelementptr %698[%707] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %709 = llvm.load %708 : !llvm.ptr<i1>
    %710 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.mlir.constant(4 : index) : i64
    %712 = llvm.mul %681, %711  : i64
    %713 = llvm.mlir.constant(4 : index) : i64
    %714 = llvm.mul %58, %713  : i64
    %715 = llvm.add %712, %714  : i64
    %716 = llvm.add %715, %691  : i64
    %717 = llvm.add %716, %58  : i64
    %718 = llvm.getelementptr %710[%717] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %719 = llvm.load %718 : !llvm.ptr<i32>
    %720 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %721 = llvm.mlir.constant(8 : index) : i64
    %722 = llvm.mul %58, %721  : i64
    %723 = llvm.mlir.constant(2 : index) : i64
    %724 = llvm.mul %691, %723  : i64
    %725 = llvm.add %722, %724  : i64
    %726 = llvm.add %725, %696  : i64
    %727 = llvm.getelementptr %720[%726] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %728 = llvm.load %727 : !llvm.ptr<i32>
    %729 = llvm.select %709, %719, %728 : i1, i32
    %730 = llvm.extractvalue %677[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %731 = llvm.mlir.constant(16 : index) : i64
    %732 = llvm.mul %681, %731  : i64
    %733 = llvm.mlir.constant(8 : index) : i64
    %734 = llvm.mul %686, %733  : i64
    %735 = llvm.add %732, %734  : i64
    %736 = llvm.mlir.constant(2 : index) : i64
    %737 = llvm.mul %691, %736  : i64
    %738 = llvm.add %735, %737  : i64
    %739 = llvm.add %738, %696  : i64
    %740 = llvm.getelementptr %730[%739] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %729, %740 : !llvm.ptr<i32>
    %741 = llvm.add %696, %695  : i64
    llvm.br ^bb121(%741 : i64)
  ^bb123:  // pred: ^bb121
    %742 = llvm.add %691, %690  : i64
    llvm.br ^bb119(%742 : i64)
  ^bb124:  // pred: ^bb119
    %743 = llvm.add %686, %685  : i64
    llvm.br ^bb117(%743 : i64)
  ^bb125:  // pred: ^bb117
    %744 = llvm.add %681, %680  : i64
    llvm.br ^bb115(%744 : i64)
  ^bb126:  // pred: ^bb115
    %745 = llvm.mlir.constant(4 : index) : i64
    %746 = llvm.mlir.constant(2 : index) : i64
    %747 = llvm.mlir.constant(4 : index) : i64
    %748 = llvm.mlir.constant(2 : index) : i64
    %749 = llvm.mlir.constant(1 : index) : i64
    %750 = llvm.mlir.constant(8 : index) : i64
    %751 = llvm.mlir.constant(16 : index) : i64
    %752 = llvm.mlir.constant(64 : index) : i64
    %753 = llvm.mlir.null : !llvm.ptr<i64>
    %754 = llvm.getelementptr %753[%752] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %755 = llvm.ptrtoint %754 : !llvm.ptr<i64> to i64
    %756 = llvm.mlir.constant(16 : index) : i64
    %757 = llvm.add %755, %756  : i64
    %758 = llvm.call @malloc(%757) : (i64) -> !llvm.ptr<i8>
    %759 = llvm.bitcast %758 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %760 = llvm.ptrtoint %759 : !llvm.ptr<i64> to i64
    %761 = llvm.mlir.constant(1 : index) : i64
    %762 = llvm.sub %756, %761  : i64
    %763 = llvm.add %760, %762  : i64
    %764 = llvm.urem %763, %756  : i64
    %765 = llvm.sub %763, %764  : i64
    %766 = llvm.inttoptr %765 : i64 to !llvm.ptr<i64>
    %767 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %768 = llvm.insertvalue %759, %767[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %769 = llvm.insertvalue %766, %768[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %770 = llvm.mlir.constant(0 : index) : i64
    %771 = llvm.insertvalue %770, %769[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %772 = llvm.insertvalue %745, %771[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %773 = llvm.insertvalue %746, %772[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %774 = llvm.insertvalue %747, %773[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %775 = llvm.insertvalue %748, %774[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %776 = llvm.insertvalue %751, %775[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %777 = llvm.insertvalue %750, %776[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %778 = llvm.insertvalue %748, %777[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %779 = llvm.insertvalue %749, %778[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %780 = llvm.mlir.constant(0 : index) : i64
    %781 = llvm.mlir.constant(4 : index) : i64
    %782 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%780 : i64)
  ^bb127(%783: i64):  // 2 preds: ^bb126, ^bb137
    %784 = llvm.icmp "slt" %783, %781 : i64
    llvm.cond_br %784, ^bb128, ^bb138
  ^bb128:  // pred: ^bb127
    %785 = llvm.mlir.constant(0 : index) : i64
    %786 = llvm.mlir.constant(2 : index) : i64
    %787 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb129(%785 : i64)
  ^bb129(%788: i64):  // 2 preds: ^bb128, ^bb136
    %789 = llvm.icmp "slt" %788, %786 : i64
    llvm.cond_br %789, ^bb130, ^bb137
  ^bb130:  // pred: ^bb129
    %790 = llvm.mlir.constant(0 : index) : i64
    %791 = llvm.mlir.constant(4 : index) : i64
    %792 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb131(%790 : i64)
  ^bb131(%793: i64):  // 2 preds: ^bb130, ^bb135
    %794 = llvm.icmp "slt" %793, %791 : i64
    llvm.cond_br %794, ^bb132, ^bb136
  ^bb132:  // pred: ^bb131
    %795 = llvm.mlir.constant(0 : index) : i64
    %796 = llvm.mlir.constant(2 : index) : i64
    %797 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb133(%795 : i64)
  ^bb133(%798: i64):  // 2 preds: ^bb132, ^bb134
    %799 = llvm.icmp "slt" %798, %796 : i64
    llvm.cond_br %799, ^bb134, ^bb135
  ^bb134:  // pred: ^bb133
    %800 = llvm.extractvalue %677[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %801 = llvm.mlir.constant(16 : index) : i64
    %802 = llvm.mul %783, %801  : i64
    %803 = llvm.mlir.constant(8 : index) : i64
    %804 = llvm.mul %788, %803  : i64
    %805 = llvm.add %802, %804  : i64
    %806 = llvm.mlir.constant(2 : index) : i64
    %807 = llvm.mul %793, %806  : i64
    %808 = llvm.add %805, %807  : i64
    %809 = llvm.add %808, %798  : i64
    %810 = llvm.getelementptr %800[%809] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %811 = llvm.load %810 : !llvm.ptr<i32>
    %812 = llvm.sext %811 : i32 to i64
    %813 = llvm.extractvalue %779[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %814 = llvm.mlir.constant(16 : index) : i64
    %815 = llvm.mul %783, %814  : i64
    %816 = llvm.mlir.constant(8 : index) : i64
    %817 = llvm.mul %788, %816  : i64
    %818 = llvm.add %815, %817  : i64
    %819 = llvm.mlir.constant(2 : index) : i64
    %820 = llvm.mul %793, %819  : i64
    %821 = llvm.add %818, %820  : i64
    %822 = llvm.add %821, %798  : i64
    %823 = llvm.getelementptr %813[%822] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %812, %823 : !llvm.ptr<i64>
    %824 = llvm.add %798, %797  : i64
    llvm.br ^bb133(%824 : i64)
  ^bb135:  // pred: ^bb133
    %825 = llvm.add %793, %792  : i64
    llvm.br ^bb131(%825 : i64)
  ^bb136:  // pred: ^bb131
    %826 = llvm.add %788, %787  : i64
    llvm.br ^bb129(%826 : i64)
  ^bb137:  // pred: ^bb129
    %827 = llvm.add %783, %782  : i64
    llvm.br ^bb127(%827 : i64)
  ^bb138:  // pred: ^bb127
    llvm.return %779 : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v14_0", "v13_0", "v3_0", "v7_0", "v2_0"], llvm.emit_c_interface, output_names = ["v1_0"]} {
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
    %34 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %35 = llvm.extractvalue %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %34[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %34[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %34[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.extractvalue %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.extractvalue %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.extractvalue %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.extractvalue %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %47 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.extractvalue %46[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %58, %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.getelementptr %0[%119] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %121 = llvm.load %120 : !llvm.ptr<ptr<i8>>
    %122 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %123 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %124 = llvm.call @omTensorGetDataPtr(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %125 = llvm.bitcast %124 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %126 = llvm.insertvalue %125, %123[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %125, %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(0 : i64) : i64
    %129 = llvm.insertvalue %128, %127[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.call @omTensorGetShape(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %131 = llvm.call @omTensorGetStrides(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.mlir.constant(0 : i64) : i64
    %133 = llvm.getelementptr %130[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %134 = llvm.load %133 : !llvm.ptr<i64>
    %135 = llvm.insertvalue %134, %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %131[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %137 = llvm.load %136 : !llvm.ptr<i64>
    %138 = llvm.insertvalue %137, %135[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.getelementptr %130[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %138[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %131[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %130[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %145[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %131[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(3 : i64) : i64
    %154 = llvm.getelementptr %130[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.insertvalue %155, %152[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %131[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %158 = llvm.load %157 : !llvm.ptr<i64>
    %159 = llvm.insertvalue %158, %156[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %159, %122 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %160 = llvm.mlir.constant(4 : i64) : i64
    %161 = llvm.getelementptr %0[%160] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %162 = llvm.load %161 : !llvm.ptr<ptr<i8>>
    %163 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %164 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %165 = llvm.call @omTensorGetDataPtr(%162) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %166 = llvm.bitcast %165 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %167 = llvm.insertvalue %166, %164[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %166, %167[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.mlir.constant(0 : i64) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.call @omTensorGetShape(%162) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %172 = llvm.call @omTensorGetStrides(%162) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %173 = llvm.mlir.constant(0 : i64) : i64
    %174 = llvm.getelementptr %171[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %175 = llvm.load %174 : !llvm.ptr<i64>
    %176 = llvm.insertvalue %175, %170[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %172[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %178 = llvm.load %177 : !llvm.ptr<i64>
    %179 = llvm.insertvalue %178, %176[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.mlir.constant(1 : i64) : i64
    %181 = llvm.getelementptr %171[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.insertvalue %182, %179[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %172[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.insertvalue %185, %183[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(2 : i64) : i64
    %188 = llvm.getelementptr %171[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.insertvalue %189, %186[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %172[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.insertvalue %192, %190[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(3 : i64) : i64
    %195 = llvm.getelementptr %171[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.insertvalue %196, %193[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %172[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.insertvalue %199, %197[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %200, %163 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %122, %163) : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %201 = llvm.load %2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    %202 = llvm.mlir.constant(1 : i64) : i64
    %203 = llvm.mlir.constant(8 : i64) : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %206 = llvm.mlir.constant(4 : i64) : i64
    %207 = llvm.call @omTensorCreateUntyped(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.mlir.constant(1 : i64) : i64
    %209 = llvm.extractvalue %201[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.bitcast %209 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %211 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.bitcast %211 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%207, %208, %210, %212) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %213 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%207, %213) : (!llvm.ptr<i8>, i64) -> ()
    %214 = llvm.call @omTensorGetShape(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %215 = llvm.call @omTensorGetStrides(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %216 = llvm.mlir.constant(0 : i64) : i64
    %217 = llvm.extractvalue %201[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.getelementptr %214[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %217, %218 : !llvm.ptr<i64>
    %219 = llvm.extractvalue %201[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %215[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.mlir.constant(1 : i64) : i64
    %222 = llvm.extractvalue %201[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.getelementptr %214[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %223 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %201[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %215[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.mlir.constant(2 : i64) : i64
    %227 = llvm.extractvalue %201[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.getelementptr %214[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %228 : !llvm.ptr<i64>
    %229 = llvm.extractvalue %201[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.getelementptr %215[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.mlir.constant(3 : i64) : i64
    %232 = llvm.extractvalue %201[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.getelementptr %214[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %232, %233 : !llvm.ptr<i64>
    %234 = llvm.extractvalue %201[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.getelementptr %215[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %234, %235 : !llvm.ptr<i64>
    %236 = llvm.mlir.constant(0 : i64) : i64
    %237 = llvm.getelementptr %205[%236] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %207, %237 : !llvm.ptr<ptr<i8>>
    %238 = llvm.call @omTensorListCreate(%205, %202, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %238 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<349 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<349 x i8>> to !llvm.ptr<i8>
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


module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 2] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 7 , 1 , 3] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[[[[5]], [[5]], [[6]]]]> : tensor<1x3x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<3 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<[[[[6, 7]], [[4, 4]], [[5, 6]]]]> : tensor<1x3x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<3 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<[[[[3, 7]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[18, 49]], [[12, 28]], [[15, 42]]]]> : tensor<1x3x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<3 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v0_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v11_0", "v1_0"]} {
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
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<3 x array<1 x array<2 x i32>>>>>
    %50 = llvm.bitcast %49 : !llvm.ptr<array<1 x array<3 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(6 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(3 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(2 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %73 = llvm.bitcast %72 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<3 x array<1 x array<2 x i32>>>>>
    %96 = llvm.bitcast %95 : !llvm.ptr<array<1 x array<3 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(6 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(3 : index) : i64
    %107 = llvm.insertvalue %106, %105[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.insertvalue %108, %107[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.insertvalue %110, %109[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.insertvalue %112, %111[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.insertvalue %114, %113[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.insertvalue %116, %115[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<3 x array<1 x array<1 x i32>>>>>
    %119 = llvm.bitcast %118 : !llvm.ptr<array<1 x array<3 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %120 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %121 = llvm.insertvalue %119, %120[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(3 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(3 : index) : i64
    %130 = llvm.insertvalue %129, %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.insertvalue %131, %130[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.insertvalue %133, %132[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.insertvalue %135, %134[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.insertvalue %137, %136[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(3 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(6 : index) : i64
    %148 = llvm.mlir.constant(6 : index) : i64
    %149 = llvm.mlir.null : !llvm.ptr<i32>
    %150 = llvm.getelementptr %149[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i32> to i64
    %152 = llvm.mlir.constant(16 : index) : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.bitcast %154 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i32> to i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.sub %152, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.urem %159, %152  : i64
    %161 = llvm.sub %159, %160  : i64
    %162 = llvm.inttoptr %161 : i64 to !llvm.ptr<i32>
    %163 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %164 = llvm.insertvalue %155, %163[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %141, %167[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.insertvalue %142, %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.insertvalue %143, %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %144, %170[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %147, %171[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %146, %172[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %144, %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %145, %174[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%176 : i64)
  ^bb1(%179: i64):  // 2 preds: ^bb0, ^bb11
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%181 : i64)
  ^bb3(%184: i64):  // 2 preds: ^bb2, ^bb10
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%186 : i64)
  ^bb5(%189: i64):  // 2 preds: ^bb4, ^bb9
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%191 : i64)
  ^bb7(%194: i64):  // 2 preds: ^bb6, ^bb8
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %196 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mul %179, %197  : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %184, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mul %189, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %194  : i64
    %206 = llvm.getelementptr %196[%205] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %207 = llvm.load %206 : !llvm.ptr<i32>
    %208 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(6 : index) : i64
    %210 = llvm.mul %179, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %184, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mul %189, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.add %216, %194  : i64
    %218 = llvm.getelementptr %208[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %207, %218 : !llvm.ptr<i32>
    %219 = llvm.add %194, %193  : i64
    llvm.br ^bb7(%219 : i64)
  ^bb9:  // pred: ^bb7
    %220 = llvm.add %189, %188  : i64
    llvm.br ^bb5(%220 : i64)
  ^bb10:  // pred: ^bb5
    %221 = llvm.add %184, %183  : i64
    llvm.br ^bb3(%221 : i64)
  ^bb11:  // pred: ^bb3
    %222 = llvm.add %179, %178  : i64
    llvm.br ^bb1(%222 : i64)
  ^bb12:  // pred: ^bb1
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%223 : i64)
  ^bb13(%226: i64):  // 2 preds: ^bb12, ^bb23
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%228 : i64)
  ^bb15(%231: i64):  // 2 preds: ^bb14, ^bb22
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%233 : i64)
  ^bb17(%236: i64):  // 2 preds: ^bb16, ^bb21
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%238 : i64)
  ^bb19(%241: i64):  // 2 preds: ^bb18, ^bb20
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.add %231, %243  : i64
    %245 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mul %226, %246  : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mul %231, %248  : i64
    %250 = llvm.add %247, %249  : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mul %236, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.add %253, %241  : i64
    %255 = llvm.getelementptr %245[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(6 : index) : i64
    %259 = llvm.mul %226, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %244, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %236, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %241  : i64
    %267 = llvm.getelementptr %257[%266] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %267 : !llvm.ptr<i32>
    %268 = llvm.add %241, %240  : i64
    llvm.br ^bb19(%268 : i64)
  ^bb21:  // pred: ^bb19
    %269 = llvm.add %236, %235  : i64
    llvm.br ^bb17(%269 : i64)
  ^bb22:  // pred: ^bb17
    %270 = llvm.add %231, %230  : i64
    llvm.br ^bb15(%270 : i64)
  ^bb23:  // pred: ^bb15
    %271 = llvm.add %226, %225  : i64
    llvm.br ^bb13(%271 : i64)
  ^bb24:  // pred: ^bb13
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%272 : i64)
  ^bb25(%275: i64):  // 2 preds: ^bb24, ^bb35
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%277 : i64)
  ^bb27(%280: i64):  // 2 preds: ^bb26, ^bb34
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%282 : i64)
  ^bb29(%285: i64):  // 2 preds: ^bb28, ^bb33
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%287 : i64)
  ^bb31(%290: i64):  // 2 preds: ^bb30, ^bb32
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.add %280, %292  : i64
    %294 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mul %275, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %280, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %285, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %290  : i64
    %304 = llvm.getelementptr %294[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %305 = llvm.load %304 : !llvm.ptr<i32>
    %306 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(6 : index) : i64
    %308 = llvm.mul %275, %307  : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mul %293, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %285, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.add %314, %290  : i64
    %316 = llvm.getelementptr %306[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %305, %316 : !llvm.ptr<i32>
    %317 = llvm.add %290, %289  : i64
    llvm.br ^bb31(%317 : i64)
  ^bb33:  // pred: ^bb31
    %318 = llvm.add %285, %284  : i64
    llvm.br ^bb29(%318 : i64)
  ^bb34:  // pred: ^bb29
    %319 = llvm.add %280, %279  : i64
    llvm.br ^bb27(%319 : i64)
  ^bb35:  // pred: ^bb27
    %320 = llvm.add %275, %274  : i64
    llvm.br ^bb25(%320 : i64)
  ^bb36:  // pred: ^bb25
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(3 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(6 : index) : i64
    %328 = llvm.mlir.constant(6 : index) : i64
    %329 = llvm.mlir.null : !llvm.ptr<i32>
    %330 = llvm.getelementptr %329[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i32> to i64
    %332 = llvm.mlir.constant(16 : index) : i64
    %333 = llvm.add %331, %332  : i64
    %334 = llvm.call @malloc(%333) : (i64) -> !llvm.ptr<i8>
    %335 = llvm.bitcast %334 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %336 = llvm.ptrtoint %335 : !llvm.ptr<i32> to i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.sub %332, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.urem %339, %332  : i64
    %341 = llvm.sub %339, %340  : i64
    %342 = llvm.inttoptr %341 : i64 to !llvm.ptr<i32>
    %343 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %344 = llvm.insertvalue %335, %343[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %342, %344[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.insertvalue %346, %345[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %321, %347[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %323, %349[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %324, %350[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %327, %351[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %326, %352[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %324, %353[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %325, %354[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%356 : i64)
  ^bb37(%359: i64):  // 2 preds: ^bb36, ^bb47
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(3 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%361 : i64)
  ^bb39(%364: i64):  // 2 preds: ^bb38, ^bb46
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%366 : i64)
  ^bb41(%369: i64):  // 2 preds: ^bb40, ^bb45
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%371 : i64)
  ^bb43(%374: i64):  // 2 preds: ^bb42, ^bb44
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %376 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %359, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %48, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %369, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.add %384, %374  : i64
    %386 = llvm.getelementptr %376[%385] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %387 = llvm.load %386 : !llvm.ptr<i32>
    %388 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(3 : index) : i64
    %390 = llvm.mul %359, %389  : i64
    %391 = llvm.add %390, %364  : i64
    %392 = llvm.add %391, %369  : i64
    %393 = llvm.add %392, %48  : i64
    %394 = llvm.getelementptr %388[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %395 = llvm.load %394 : !llvm.ptr<i32>
    %396 = llvm.mul %387, %395  : i32
    %397 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.mlir.constant(6 : index) : i64
    %399 = llvm.mul %359, %398  : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mul %364, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mul %369, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.add %405, %374  : i64
    %407 = llvm.getelementptr %397[%406] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %396, %407 : !llvm.ptr<i32>
    %408 = llvm.add %374, %373  : i64
    llvm.br ^bb43(%408 : i64)
  ^bb45:  // pred: ^bb43
    %409 = llvm.add %369, %368  : i64
    llvm.br ^bb41(%409 : i64)
  ^bb46:  // pred: ^bb41
    %410 = llvm.add %364, %363  : i64
    llvm.br ^bb39(%410 : i64)
  ^bb47:  // pred: ^bb39
    %411 = llvm.add %359, %358  : i64
    llvm.br ^bb37(%411 : i64)
  ^bb48:  // pred: ^bb37
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(3 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(7 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(7 : index) : i64
    %418 = llvm.mlir.constant(21 : index) : i64
    %419 = llvm.mlir.constant(21 : index) : i64
    %420 = llvm.mlir.null : !llvm.ptr<i32>
    %421 = llvm.getelementptr %420[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %422 = llvm.ptrtoint %421 : !llvm.ptr<i32> to i64
    %423 = llvm.mlir.constant(16 : index) : i64
    %424 = llvm.add %422, %423  : i64
    %425 = llvm.call @malloc(%424) : (i64) -> !llvm.ptr<i8>
    %426 = llvm.bitcast %425 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<i32> to i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.sub %423, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.urem %430, %423  : i64
    %432 = llvm.sub %430, %431  : i64
    %433 = llvm.inttoptr %432 : i64 to !llvm.ptr<i32>
    %434 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %435 = llvm.insertvalue %426, %434[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.insertvalue %433, %435[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.insertvalue %437, %436[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %415, %441[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %418, %442[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %415, %444[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %416, %445[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%447 : i64)
  ^bb49(%450: i64):  // 2 preds: ^bb48, ^bb59
    %451 = llvm.icmp "slt" %450, %448 : i64
    llvm.cond_br %451, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(3 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%452 : i64)
  ^bb51(%455: i64):  // 2 preds: ^bb50, ^bb58
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%457 : i64)
  ^bb53(%460: i64):  // 2 preds: ^bb52, ^bb57
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%462 : i64)
  ^bb55(%465: i64):  // 2 preds: ^bb54, ^bb56
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %467 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(6 : index) : i64
    %469 = llvm.mul %450, %468  : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mul %455, %470  : i64
    %472 = llvm.add %469, %471  : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mul %460, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.add %475, %465  : i64
    %477 = llvm.getelementptr %467[%476] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %478 = llvm.load %477 : !llvm.ptr<i32>
    %479 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.mlir.constant(21 : index) : i64
    %481 = llvm.mul %450, %480  : i64
    %482 = llvm.mlir.constant(7 : index) : i64
    %483 = llvm.mul %455, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.mlir.constant(7 : index) : i64
    %486 = llvm.mul %460, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.add %487, %465  : i64
    %489 = llvm.getelementptr %479[%488] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %478, %489 : !llvm.ptr<i32>
    %490 = llvm.add %465, %464  : i64
    llvm.br ^bb55(%490 : i64)
  ^bb57:  // pred: ^bb55
    %491 = llvm.add %460, %459  : i64
    llvm.br ^bb53(%491 : i64)
  ^bb58:  // pred: ^bb53
    %492 = llvm.add %455, %454  : i64
    llvm.br ^bb51(%492 : i64)
  ^bb59:  // pred: ^bb51
    %493 = llvm.add %450, %449  : i64
    llvm.br ^bb49(%493 : i64)
  ^bb60:  // pred: ^bb49
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%494 : i64)
  ^bb61(%497: i64):  // 2 preds: ^bb60, ^bb71
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(3 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%499 : i64)
  ^bb63(%502: i64):  // 2 preds: ^bb62, ^bb70
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%504 : i64)
  ^bb65(%507: i64):  // 2 preds: ^bb64, ^bb69
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%509 : i64)
  ^bb67(%512: i64):  // 2 preds: ^bb66, ^bb68
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %514 = llvm.mlir.constant(2 : index) : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.mlir.constant(3 : index) : i64
    %518 = llvm.mul %497, %517  : i64
    %519 = llvm.add %518, %502  : i64
    %520 = llvm.add %519, %507  : i64
    %521 = llvm.add %520, %512  : i64
    %522 = llvm.getelementptr %516[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %523 = llvm.load %522 : !llvm.ptr<i32>
    %524 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(21 : index) : i64
    %526 = llvm.mul %497, %525  : i64
    %527 = llvm.mlir.constant(7 : index) : i64
    %528 = llvm.mul %502, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.mlir.constant(7 : index) : i64
    %531 = llvm.mul %507, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.add %532, %515  : i64
    %534 = llvm.getelementptr %524[%533] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %523, %534 : !llvm.ptr<i32>
    %535 = llvm.add %512, %511  : i64
    llvm.br ^bb67(%535 : i64)
  ^bb69:  // pred: ^bb67
    %536 = llvm.add %507, %506  : i64
    llvm.br ^bb65(%536 : i64)
  ^bb70:  // pred: ^bb65
    %537 = llvm.add %502, %501  : i64
    llvm.br ^bb63(%537 : i64)
  ^bb71:  // pred: ^bb63
    %538 = llvm.add %497, %496  : i64
    llvm.br ^bb61(%538 : i64)
  ^bb72:  // pred: ^bb61
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%539 : i64)
  ^bb73(%542: i64):  // 2 preds: ^bb72, ^bb83
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(3 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%544 : i64)
  ^bb75(%547: i64):  // 2 preds: ^bb74, ^bb82
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%549 : i64)
  ^bb77(%552: i64):  // 2 preds: ^bb76, ^bb81
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%554 : i64)
  ^bb79(%557: i64):  // 2 preds: ^bb78, ^bb80
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %559 = llvm.mlir.constant(3 : index) : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.mlir.constant(3 : index) : i64
    %563 = llvm.mul %542, %562  : i64
    %564 = llvm.add %563, %547  : i64
    %565 = llvm.add %564, %552  : i64
    %566 = llvm.add %565, %557  : i64
    %567 = llvm.getelementptr %561[%566] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %568 = llvm.load %567 : !llvm.ptr<i32>
    %569 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.mlir.constant(21 : index) : i64
    %571 = llvm.mul %542, %570  : i64
    %572 = llvm.mlir.constant(7 : index) : i64
    %573 = llvm.mul %547, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.mlir.constant(7 : index) : i64
    %576 = llvm.mul %552, %575  : i64
    %577 = llvm.add %574, %576  : i64
    %578 = llvm.add %577, %560  : i64
    %579 = llvm.getelementptr %569[%578] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %568, %579 : !llvm.ptr<i32>
    %580 = llvm.add %557, %556  : i64
    llvm.br ^bb79(%580 : i64)
  ^bb81:  // pred: ^bb79
    %581 = llvm.add %552, %551  : i64
    llvm.br ^bb77(%581 : i64)
  ^bb82:  // pred: ^bb77
    %582 = llvm.add %547, %546  : i64
    llvm.br ^bb75(%582 : i64)
  ^bb83:  // pred: ^bb75
    %583 = llvm.add %542, %541  : i64
    llvm.br ^bb73(%583 : i64)
  ^bb84:  // pred: ^bb73
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%584 : i64)
  ^bb85(%587: i64):  // 2 preds: ^bb84, ^bb95
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(3 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%589 : i64)
  ^bb87(%592: i64):  // 2 preds: ^bb86, ^bb94
    %593 = llvm.icmp "slt" %592, %590 : i64
    llvm.cond_br %593, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%594 : i64)
  ^bb89(%597: i64):  // 2 preds: ^bb88, ^bb93
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(2 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%599 : i64)
  ^bb91(%602: i64):  // 2 preds: ^bb90, ^bb92
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %604 = llvm.mlir.constant(4 : index) : i64
    %605 = llvm.add %602, %604  : i64
    %606 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.mlir.constant(6 : index) : i64
    %608 = llvm.mul %587, %607  : i64
    %609 = llvm.mlir.constant(2 : index) : i64
    %610 = llvm.mul %592, %609  : i64
    %611 = llvm.add %608, %610  : i64
    %612 = llvm.mlir.constant(2 : index) : i64
    %613 = llvm.mul %597, %612  : i64
    %614 = llvm.add %611, %613  : i64
    %615 = llvm.add %614, %602  : i64
    %616 = llvm.getelementptr %606[%615] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %617 = llvm.load %616 : !llvm.ptr<i32>
    %618 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.mlir.constant(21 : index) : i64
    %620 = llvm.mul %587, %619  : i64
    %621 = llvm.mlir.constant(7 : index) : i64
    %622 = llvm.mul %592, %621  : i64
    %623 = llvm.add %620, %622  : i64
    %624 = llvm.mlir.constant(7 : index) : i64
    %625 = llvm.mul %597, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.add %626, %605  : i64
    %628 = llvm.getelementptr %618[%627] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %617, %628 : !llvm.ptr<i32>
    %629 = llvm.add %602, %601  : i64
    llvm.br ^bb91(%629 : i64)
  ^bb93:  // pred: ^bb91
    %630 = llvm.add %597, %596  : i64
    llvm.br ^bb89(%630 : i64)
  ^bb94:  // pred: ^bb89
    %631 = llvm.add %592, %591  : i64
    llvm.br ^bb87(%631 : i64)
  ^bb95:  // pred: ^bb87
    %632 = llvm.add %587, %586  : i64
    llvm.br ^bb85(%632 : i64)
  ^bb96:  // pred: ^bb85
    %633 = llvm.mlir.constant(0 : index) : i64
    %634 = llvm.mlir.constant(1 : index) : i64
    %635 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%633 : i64)
  ^bb97(%636: i64):  // 2 preds: ^bb96, ^bb107
    %637 = llvm.icmp "slt" %636, %634 : i64
    llvm.cond_br %637, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %638 = llvm.mlir.constant(0 : index) : i64
    %639 = llvm.mlir.constant(3 : index) : i64
    %640 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%638 : i64)
  ^bb99(%641: i64):  // 2 preds: ^bb98, ^bb106
    %642 = llvm.icmp "slt" %641, %639 : i64
    llvm.cond_br %642, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %643 = llvm.mlir.constant(0 : index) : i64
    %644 = llvm.mlir.constant(1 : index) : i64
    %645 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%643 : i64)
  ^bb101(%646: i64):  // 2 preds: ^bb100, ^bb105
    %647 = llvm.icmp "slt" %646, %644 : i64
    llvm.cond_br %647, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %648 = llvm.mlir.constant(0 : index) : i64
    %649 = llvm.mlir.constant(1 : index) : i64
    %650 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%648 : i64)
  ^bb103(%651: i64):  // 2 preds: ^bb102, ^bb104
    %652 = llvm.icmp "slt" %651, %649 : i64
    llvm.cond_br %652, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %653 = llvm.mlir.constant(6 : index) : i64
    %654 = llvm.add %651, %653  : i64
    %655 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %656 = llvm.mlir.constant(3 : index) : i64
    %657 = llvm.mul %636, %656  : i64
    %658 = llvm.add %657, %641  : i64
    %659 = llvm.add %658, %646  : i64
    %660 = llvm.add %659, %651  : i64
    %661 = llvm.getelementptr %655[%660] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %662 = llvm.load %661 : !llvm.ptr<i32>
    %663 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %664 = llvm.mlir.constant(21 : index) : i64
    %665 = llvm.mul %636, %664  : i64
    %666 = llvm.mlir.constant(7 : index) : i64
    %667 = llvm.mul %641, %666  : i64
    %668 = llvm.add %665, %667  : i64
    %669 = llvm.mlir.constant(7 : index) : i64
    %670 = llvm.mul %646, %669  : i64
    %671 = llvm.add %668, %670  : i64
    %672 = llvm.add %671, %654  : i64
    %673 = llvm.getelementptr %663[%672] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %662, %673 : !llvm.ptr<i32>
    %674 = llvm.add %651, %650  : i64
    llvm.br ^bb103(%674 : i64)
  ^bb105:  // pred: ^bb103
    %675 = llvm.add %646, %645  : i64
    llvm.br ^bb101(%675 : i64)
  ^bb106:  // pred: ^bb101
    %676 = llvm.add %641, %640  : i64
    llvm.br ^bb99(%676 : i64)
  ^bb107:  // pred: ^bb99
    %677 = llvm.add %636, %635  : i64
    llvm.br ^bb97(%677 : i64)
  ^bb108:  // pred: ^bb97
    %678 = llvm.mlir.constant(1 : index) : i64
    %679 = llvm.mlir.constant(7 : index) : i64
    %680 = llvm.mlir.constant(1 : index) : i64
    %681 = llvm.mlir.constant(3 : index) : i64
    %682 = llvm.mlir.constant(1 : index) : i64
    %683 = llvm.mlir.constant(3 : index) : i64
    %684 = llvm.mlir.constant(21 : index) : i64
    %685 = llvm.mlir.constant(21 : index) : i64
    %686 = llvm.mlir.null : !llvm.ptr<i32>
    %687 = llvm.getelementptr %686[%685] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %688 = llvm.ptrtoint %687 : !llvm.ptr<i32> to i64
    %689 = llvm.mlir.constant(16 : index) : i64
    %690 = llvm.add %688, %689  : i64
    %691 = llvm.call @malloc(%690) : (i64) -> !llvm.ptr<i8>
    %692 = llvm.bitcast %691 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %693 = llvm.ptrtoint %692 : !llvm.ptr<i32> to i64
    %694 = llvm.mlir.constant(1 : index) : i64
    %695 = llvm.sub %689, %694  : i64
    %696 = llvm.add %693, %695  : i64
    %697 = llvm.urem %696, %689  : i64
    %698 = llvm.sub %696, %697  : i64
    %699 = llvm.inttoptr %698 : i64 to !llvm.ptr<i32>
    %700 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %701 = llvm.insertvalue %692, %700[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.insertvalue %699, %701[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.mlir.constant(0 : index) : i64
    %704 = llvm.insertvalue %703, %702[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.insertvalue %678, %704[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.insertvalue %679, %705[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.insertvalue %680, %706[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.insertvalue %681, %707[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %709 = llvm.insertvalue %684, %708[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.insertvalue %683, %709[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.insertvalue %681, %710[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %712 = llvm.insertvalue %682, %711[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %713 = llvm.mlir.constant(0 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    %715 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%713 : i64)
  ^bb109(%716: i64):  // 2 preds: ^bb108, ^bb119
    %717 = llvm.icmp "slt" %716, %714 : i64
    llvm.cond_br %717, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %718 = llvm.mlir.constant(0 : index) : i64
    %719 = llvm.mlir.constant(3 : index) : i64
    %720 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%718 : i64)
  ^bb111(%721: i64):  // 2 preds: ^bb110, ^bb118
    %722 = llvm.icmp "slt" %721, %719 : i64
    llvm.cond_br %722, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %723 = llvm.mlir.constant(0 : index) : i64
    %724 = llvm.mlir.constant(1 : index) : i64
    %725 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%723 : i64)
  ^bb113(%726: i64):  // 2 preds: ^bb112, ^bb117
    %727 = llvm.icmp "slt" %726, %724 : i64
    llvm.cond_br %727, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %728 = llvm.mlir.constant(0 : index) : i64
    %729 = llvm.mlir.constant(7 : index) : i64
    %730 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%728 : i64)
  ^bb115(%731: i64):  // 2 preds: ^bb114, ^bb116
    %732 = llvm.icmp "slt" %731, %729 : i64
    llvm.cond_br %732, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %733 = llvm.extractvalue %446[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %734 = llvm.mlir.constant(21 : index) : i64
    %735 = llvm.mul %716, %734  : i64
    %736 = llvm.mlir.constant(7 : index) : i64
    %737 = llvm.mul %721, %736  : i64
    %738 = llvm.add %735, %737  : i64
    %739 = llvm.mlir.constant(7 : index) : i64
    %740 = llvm.mul %726, %739  : i64
    %741 = llvm.add %738, %740  : i64
    %742 = llvm.add %741, %731  : i64
    %743 = llvm.getelementptr %733[%742] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %744 = llvm.load %743 : !llvm.ptr<i32>
    %745 = llvm.extractvalue %712[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %746 = llvm.mlir.constant(21 : index) : i64
    %747 = llvm.mul %716, %746  : i64
    %748 = llvm.mlir.constant(3 : index) : i64
    %749 = llvm.mul %731, %748  : i64
    %750 = llvm.add %747, %749  : i64
    %751 = llvm.mlir.constant(3 : index) : i64
    %752 = llvm.mul %726, %751  : i64
    %753 = llvm.add %750, %752  : i64
    %754 = llvm.add %753, %721  : i64
    %755 = llvm.getelementptr %745[%754] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %744, %755 : !llvm.ptr<i32>
    %756 = llvm.add %731, %730  : i64
    llvm.br ^bb115(%756 : i64)
  ^bb117:  // pred: ^bb115
    %757 = llvm.add %726, %725  : i64
    llvm.br ^bb113(%757 : i64)
  ^bb118:  // pred: ^bb113
    %758 = llvm.add %721, %720  : i64
    llvm.br ^bb111(%758 : i64)
  ^bb119:  // pred: ^bb111
    %759 = llvm.add %716, %715  : i64
    llvm.br ^bb109(%759 : i64)
  ^bb120:  // pred: ^bb109
    %760 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %761 = llvm.insertvalue %71, %760[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %762 = llvm.insertvalue %355, %761[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %763 = llvm.insertvalue %712, %762[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %763 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v0_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v11_0", "v1_0"]} {
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
    %177 = llvm.mlir.constant(0 : i64) : i64
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


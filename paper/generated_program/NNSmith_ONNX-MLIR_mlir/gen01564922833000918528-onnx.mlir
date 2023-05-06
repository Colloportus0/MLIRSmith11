module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 6 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr<i32>, %arg25: !llvm.ptr<i32>, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: !llvm.ptr<i32>, %arg36: !llvm.ptr<i32>, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: i64, %arg45: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v9_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0"]} {
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
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %27 = llvm.insertvalue %arg24, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg27, %29[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg31, %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg28, %31[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg32, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg29, %33[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg33, %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg30, %35[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg34, %36[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %arg35, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg36, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg37, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg38, %41[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg42, %42[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg39, %43[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg43, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg40, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg44, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %arg41, %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %arg45, %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %76 = llvm.bitcast %75 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %77 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(4 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %87 = llvm.bitcast %86 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %89 = llvm.insertvalue %87, %88[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %90 = llvm.insertvalue %87, %89[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.insertvalue %91, %90[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %93 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %94 = llvm.bitcast %93 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.insertvalue %94, %95[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(4 : index) : i64
    %101 = llvm.insertvalue %100, %99[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %105 = llvm.bitcast %104 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %107 = llvm.insertvalue %105, %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.insertvalue %111, %110[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.insertvalue %113, %112[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.insertvalue %115, %114[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.insertvalue %117, %116[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.insertvalue %119, %118[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.insertvalue %121, %120[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.insertvalue %123, %122[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.insertvalue %125, %124[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %128 = llvm.extractvalue %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %129 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %130 = llvm.insertvalue %128, %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %129, %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.insertvalue %134, %133[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.insertvalue %136, %135[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.insertvalue %138, %137[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.insertvalue %140, %139[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.insertvalue %142, %141[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.insertvalue %144, %143[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.insertvalue %146, %145[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.insertvalue %148, %147[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.null : !llvm.ptr<i64>
    %153 = llvm.getelementptr %152[%150] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i64> to i64
    %155 = llvm.mlir.constant(16 : index) : i64
    %156 = llvm.add %154, %155  : i64
    %157 = llvm.call @malloc(%156) : (i64) -> !llvm.ptr<i8>
    %158 = llvm.bitcast %157 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i64> to i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.sub %155, %160  : i64
    %162 = llvm.add %159, %161  : i64
    %163 = llvm.urem %162, %155  : i64
    %164 = llvm.sub %162, %163  : i64
    %165 = llvm.inttoptr %164 : i64 to !llvm.ptr<i64>
    %166 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %167 = llvm.insertvalue %158, %166[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.insertvalue %150, %170[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.insertvalue %151, %171[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%173 : i64)
  ^bb1(%176: i64):  // 2 preds: ^bb0, ^bb2
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %178 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %179 : !llvm.ptr<i64>
    %180 = llvm.add %176, %175  : i64
    llvm.br ^bb1(%180 : i64)
  ^bb3:  // pred: ^bb1
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.null : !llvm.ptr<i64>
    %184 = llvm.getelementptr %183[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i64> to i64
    %186 = llvm.mlir.constant(16 : index) : i64
    %187 = llvm.add %185, %186  : i64
    %188 = llvm.call @malloc(%187) : (i64) -> !llvm.ptr<i8>
    %189 = llvm.bitcast %188 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i64> to i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.sub %186, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.urem %193, %186  : i64
    %195 = llvm.sub %193, %194  : i64
    %196 = llvm.inttoptr %195 : i64 to !llvm.ptr<i64>
    %197 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %198 = llvm.insertvalue %189, %197[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.insertvalue %196, %198[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.insertvalue %200, %199[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %181, %201[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %182, %202[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%204 : i64)
  ^bb4(%207: i64):  // 2 preds: ^bb3, ^bb5
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %209 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.load %210 : !llvm.ptr<i64>
    %212 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %213 = llvm.load %212 : !llvm.ptr<i64>
    %214 = llvm.mul %211, %213  : i64
    %215 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%207] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %216 : !llvm.ptr<i64>
    %217 = llvm.add %207, %206  : i64
    llvm.br ^bb4(%217 : i64)
  ^bb6:  // pred: ^bb4
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.null : !llvm.ptr<i1>
    %221 = llvm.getelementptr %220[%218] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %222 = llvm.ptrtoint %221 : !llvm.ptr<i1> to i64
    %223 = llvm.mlir.constant(16 : index) : i64
    %224 = llvm.add %222, %223  : i64
    %225 = llvm.call @malloc(%224) : (i64) -> !llvm.ptr<i8>
    %226 = llvm.bitcast %225 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %227 = llvm.ptrtoint %226 : !llvm.ptr<i1> to i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.sub %223, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.urem %230, %223  : i64
    %232 = llvm.sub %230, %231  : i64
    %233 = llvm.inttoptr %232 : i64 to !llvm.ptr<i1>
    %234 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %235 = llvm.insertvalue %226, %234[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.insertvalue %233, %235[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.insertvalue %237, %236[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.insertvalue %218, %238[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %219, %239[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%241 : i64)
  ^bb7(%244: i64):  // 2 preds: ^bb6, ^bb8
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %246 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.getelementptr %246[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.load %247 : !llvm.ptr<i64>
    %249 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.getelementptr %249[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %251 = llvm.load %250 : !llvm.ptr<i64>
    %252 = llvm.icmp "eq" %248, %251 : i64
    %253 = llvm.extractvalue %240[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%244] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %252, %254 : !llvm.ptr<i1>
    %255 = llvm.add %244, %243  : i64
    llvm.br ^bb7(%255 : i64)
  ^bb9:  // pred: ^bb7
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.null : !llvm.ptr<i64>
    %259 = llvm.getelementptr %258[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i64> to i64
    %261 = llvm.mlir.constant(16 : index) : i64
    %262 = llvm.add %260, %261  : i64
    %263 = llvm.call @malloc(%262) : (i64) -> !llvm.ptr<i8>
    %264 = llvm.bitcast %263 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %265 = llvm.ptrtoint %264 : !llvm.ptr<i64> to i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.sub %261, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.urem %268, %261  : i64
    %270 = llvm.sub %268, %269  : i64
    %271 = llvm.inttoptr %270 : i64 to !llvm.ptr<i64>
    %272 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %273 = llvm.insertvalue %264, %272[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.insertvalue %271, %273[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.insertvalue %256, %276[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %278 = llvm.insertvalue %257, %277[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%279 : i64)
  ^bb10(%282: i64):  // 2 preds: ^bb9, ^bb11
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %284 = llvm.extractvalue %240[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.getelementptr %284[%282] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %286 = llvm.load %285 : !llvm.ptr<i1>
    %287 = llvm.extractvalue %172[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.getelementptr %287[%282] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %289 = llvm.load %288 : !llvm.ptr<i64>
    %290 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.getelementptr %290[%282] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %292 = llvm.load %291 : !llvm.ptr<i64>
    %293 = llvm.select %286, %289, %292 : i1, i64
    %294 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.getelementptr %294[%282] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %293, %295 : !llvm.ptr<i64>
    %296 = llvm.add %282, %281  : i64
    llvm.br ^bb10(%296 : i64)
  ^bb12:  // pred: ^bb10
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.null : !llvm.ptr<i32>
    %303 = llvm.getelementptr %302[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %304 = llvm.ptrtoint %303 : !llvm.ptr<i32> to i64
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.add %304, %305  : i64
    %307 = llvm.call @malloc(%306) : (i64) -> !llvm.ptr<i8>
    %308 = llvm.bitcast %307 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i32> to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %305, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %305  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr<i32>
    %316 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %297, %320[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %298, %321[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %299, %322[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %300, %323[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %300, %326[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %301, %327[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%329 : i64)
  ^bb13(%332: i64):  // 2 preds: ^bb12, ^bb23
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%334 : i64)
  ^bb15(%337: i64):  // 2 preds: ^bb14, ^bb22
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%339 : i64)
  ^bb17(%342: i64):  // 2 preds: ^bb16, ^bb21
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%344 : i64)
  ^bb19(%347: i64):  // 2 preds: ^bb18, ^bb20
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %349 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.add %50, %50  : i64
    %351 = llvm.add %350, %50  : i64
    %352 = llvm.add %351, %50  : i64
    %353 = llvm.getelementptr %349[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.add %332, %337  : i64
    %357 = llvm.add %356, %342  : i64
    %358 = llvm.add %357, %347  : i64
    %359 = llvm.getelementptr %355[%358] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %354, %359 : !llvm.ptr<i32>
    %360 = llvm.add %347, %346  : i64
    llvm.br ^bb19(%360 : i64)
  ^bb21:  // pred: ^bb19
    %361 = llvm.add %342, %341  : i64
    llvm.br ^bb17(%361 : i64)
  ^bb22:  // pred: ^bb17
    %362 = llvm.add %337, %336  : i64
    llvm.br ^bb15(%362 : i64)
  ^bb23:  // pred: ^bb15
    %363 = llvm.add %332, %331  : i64
    llvm.br ^bb13(%363 : i64)
  ^bb24:  // pred: ^bb13
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(6 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(6 : index) : i64
    %370 = llvm.mlir.null : !llvm.ptr<i32>
    %371 = llvm.getelementptr %370[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i32> to i64
    %373 = llvm.mlir.constant(16 : index) : i64
    %374 = llvm.add %372, %373  : i64
    %375 = llvm.call @malloc(%374) : (i64) -> !llvm.ptr<i8>
    %376 = llvm.bitcast %375 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %377 = llvm.ptrtoint %376 : !llvm.ptr<i32> to i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.sub %373, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.urem %380, %373  : i64
    %382 = llvm.sub %380, %381  : i64
    %383 = llvm.inttoptr %382 : i64 to !llvm.ptr<i32>
    %384 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %385 = llvm.insertvalue %376, %384[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %383, %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.insertvalue %387, %386[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %364, %388[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %365, %389[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %366, %390[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %367, %391[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %365, %392[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %366, %393[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %367, %394[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %368, %395[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%397 : i64)
  ^bb25(%400: i64):  // 2 preds: ^bb24, ^bb35
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%402 : i64)
  ^bb27(%405: i64):  // 2 preds: ^bb26, ^bb34
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%407 : i64)
  ^bb29(%410: i64):  // 2 preds: ^bb28, ^bb33
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%412 : i64)
  ^bb31(%415: i64):  // 2 preds: ^bb30, ^bb32
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %417 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.add %400, %405  : i64
    %419 = llvm.add %418, %410  : i64
    %420 = llvm.add %419, %415  : i64
    %421 = llvm.getelementptr %417[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %422 = llvm.load %421 : !llvm.ptr<i32>
    %423 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(6 : index) : i64
    %425 = llvm.mul %400, %424  : i64
    %426 = llvm.add %425, %405  : i64
    %427 = llvm.add %426, %410  : i64
    %428 = llvm.add %427, %415  : i64
    %429 = llvm.getelementptr %423[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %422, %429 : !llvm.ptr<i32>
    %430 = llvm.add %415, %414  : i64
    llvm.br ^bb31(%430 : i64)
  ^bb33:  // pred: ^bb31
    %431 = llvm.add %410, %409  : i64
    llvm.br ^bb29(%431 : i64)
  ^bb34:  // pred: ^bb29
    %432 = llvm.add %405, %404  : i64
    llvm.br ^bb27(%432 : i64)
  ^bb35:  // pred: ^bb27
    %433 = llvm.add %400, %399  : i64
    llvm.br ^bb25(%433 : i64)
  ^bb36:  // pred: ^bb25
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%434 : i64)
  ^bb37(%437: i64):  // 2 preds: ^bb36, ^bb47
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%439 : i64)
  ^bb39(%442: i64):  // 2 preds: ^bb38, ^bb46
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%444 : i64)
  ^bb41(%447: i64):  // 2 preds: ^bb40, ^bb45
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%449 : i64)
  ^bb43(%452: i64):  // 2 preds: ^bb42, ^bb44
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.add %442, %454  : i64
    %456 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.add %437, %442  : i64
    %458 = llvm.add %457, %447  : i64
    %459 = llvm.add %458, %452  : i64
    %460 = llvm.getelementptr %456[%459] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %461 = llvm.load %460 : !llvm.ptr<i32>
    %462 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(6 : index) : i64
    %464 = llvm.mul %437, %463  : i64
    %465 = llvm.add %464, %455  : i64
    %466 = llvm.add %465, %447  : i64
    %467 = llvm.add %466, %452  : i64
    %468 = llvm.getelementptr %462[%467] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %461, %468 : !llvm.ptr<i32>
    %469 = llvm.add %452, %451  : i64
    llvm.br ^bb43(%469 : i64)
  ^bb45:  // pred: ^bb43
    %470 = llvm.add %447, %446  : i64
    llvm.br ^bb41(%470 : i64)
  ^bb46:  // pred: ^bb41
    %471 = llvm.add %442, %441  : i64
    llvm.br ^bb39(%471 : i64)
  ^bb47:  // pred: ^bb39
    %472 = llvm.add %437, %436  : i64
    llvm.br ^bb37(%472 : i64)
  ^bb48:  // pred: ^bb37
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%473 : i64)
  ^bb49(%476: i64):  // 2 preds: ^bb48, ^bb59
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%478 : i64)
  ^bb51(%481: i64):  // 2 preds: ^bb50, ^bb58
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%483 : i64)
  ^bb53(%486: i64):  // 2 preds: ^bb52, ^bb57
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%488 : i64)
  ^bb55(%491: i64):  // 2 preds: ^bb54, ^bb56
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.add %481, %493  : i64
    %495 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.add %476, %481  : i64
    %497 = llvm.add %496, %486  : i64
    %498 = llvm.add %497, %491  : i64
    %499 = llvm.getelementptr %495[%498] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %500 = llvm.load %499 : !llvm.ptr<i32>
    %501 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.mlir.constant(6 : index) : i64
    %503 = llvm.mul %476, %502  : i64
    %504 = llvm.add %503, %494  : i64
    %505 = llvm.add %504, %486  : i64
    %506 = llvm.add %505, %491  : i64
    %507 = llvm.getelementptr %501[%506] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %500, %507 : !llvm.ptr<i32>
    %508 = llvm.add %491, %490  : i64
    llvm.br ^bb55(%508 : i64)
  ^bb57:  // pred: ^bb55
    %509 = llvm.add %486, %485  : i64
    llvm.br ^bb53(%509 : i64)
  ^bb58:  // pred: ^bb53
    %510 = llvm.add %481, %480  : i64
    llvm.br ^bb51(%510 : i64)
  ^bb59:  // pred: ^bb51
    %511 = llvm.add %476, %475  : i64
    llvm.br ^bb49(%511 : i64)
  ^bb60:  // pred: ^bb49
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%512 : i64)
  ^bb61(%515: i64):  // 2 preds: ^bb60, ^bb71
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%517 : i64)
  ^bb63(%520: i64):  // 2 preds: ^bb62, ^bb70
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%522 : i64)
  ^bb65(%525: i64):  // 2 preds: ^bb64, ^bb69
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%527 : i64)
  ^bb67(%530: i64):  // 2 preds: ^bb66, ^bb68
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %532 = llvm.mlir.constant(3 : index) : i64
    %533 = llvm.add %520, %532  : i64
    %534 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.add %515, %520  : i64
    %536 = llvm.add %535, %525  : i64
    %537 = llvm.add %536, %530  : i64
    %538 = llvm.getelementptr %534[%537] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %539 = llvm.load %538 : !llvm.ptr<i32>
    %540 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.mlir.constant(6 : index) : i64
    %542 = llvm.mul %515, %541  : i64
    %543 = llvm.add %542, %533  : i64
    %544 = llvm.add %543, %525  : i64
    %545 = llvm.add %544, %530  : i64
    %546 = llvm.getelementptr %540[%545] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %539, %546 : !llvm.ptr<i32>
    %547 = llvm.add %530, %529  : i64
    llvm.br ^bb67(%547 : i64)
  ^bb69:  // pred: ^bb67
    %548 = llvm.add %525, %524  : i64
    llvm.br ^bb65(%548 : i64)
  ^bb70:  // pred: ^bb65
    %549 = llvm.add %520, %519  : i64
    llvm.br ^bb63(%549 : i64)
  ^bb71:  // pred: ^bb63
    %550 = llvm.add %515, %514  : i64
    llvm.br ^bb61(%550 : i64)
  ^bb72:  // pred: ^bb61
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%551 : i64)
  ^bb73(%554: i64):  // 2 preds: ^bb72, ^bb83
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%556 : i64)
  ^bb75(%559: i64):  // 2 preds: ^bb74, ^bb82
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%561 : i64)
  ^bb77(%564: i64):  // 2 preds: ^bb76, ^bb81
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%566 : i64)
  ^bb79(%569: i64):  // 2 preds: ^bb78, ^bb80
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %571 = llvm.mlir.constant(4 : index) : i64
    %572 = llvm.add %559, %571  : i64
    %573 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.add %554, %559  : i64
    %575 = llvm.add %574, %564  : i64
    %576 = llvm.add %575, %569  : i64
    %577 = llvm.getelementptr %573[%576] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %578 = llvm.load %577 : !llvm.ptr<i32>
    %579 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.mlir.constant(6 : index) : i64
    %581 = llvm.mul %554, %580  : i64
    %582 = llvm.add %581, %572  : i64
    %583 = llvm.add %582, %564  : i64
    %584 = llvm.add %583, %569  : i64
    %585 = llvm.getelementptr %579[%584] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %578, %585 : !llvm.ptr<i32>
    %586 = llvm.add %569, %568  : i64
    llvm.br ^bb79(%586 : i64)
  ^bb81:  // pred: ^bb79
    %587 = llvm.add %564, %563  : i64
    llvm.br ^bb77(%587 : i64)
  ^bb82:  // pred: ^bb77
    %588 = llvm.add %559, %558  : i64
    llvm.br ^bb75(%588 : i64)
  ^bb83:  // pred: ^bb75
    %589 = llvm.add %554, %553  : i64
    llvm.br ^bb73(%589 : i64)
  ^bb84:  // pred: ^bb73
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%590 : i64)
  ^bb85(%593: i64):  // 2 preds: ^bb84, ^bb95
    %594 = llvm.icmp "slt" %593, %591 : i64
    llvm.cond_br %594, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %595 = llvm.mlir.constant(0 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%595 : i64)
  ^bb87(%598: i64):  // 2 preds: ^bb86, ^bb94
    %599 = llvm.icmp "slt" %598, %596 : i64
    llvm.cond_br %599, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%600 : i64)
  ^bb89(%603: i64):  // 2 preds: ^bb88, ^bb93
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%605 : i64)
  ^bb91(%608: i64):  // 2 preds: ^bb90, ^bb92
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %610 = llvm.mlir.constant(5 : index) : i64
    %611 = llvm.add %598, %610  : i64
    %612 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.add %593, %598  : i64
    %614 = llvm.add %613, %603  : i64
    %615 = llvm.add %614, %608  : i64
    %616 = llvm.getelementptr %612[%615] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %617 = llvm.load %616 : !llvm.ptr<i32>
    %618 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.mlir.constant(6 : index) : i64
    %620 = llvm.mul %593, %619  : i64
    %621 = llvm.add %620, %611  : i64
    %622 = llvm.add %621, %603  : i64
    %623 = llvm.add %622, %608  : i64
    %624 = llvm.getelementptr %618[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %617, %624 : !llvm.ptr<i32>
    %625 = llvm.add %608, %607  : i64
    llvm.br ^bb91(%625 : i64)
  ^bb93:  // pred: ^bb91
    %626 = llvm.add %603, %602  : i64
    llvm.br ^bb89(%626 : i64)
  ^bb94:  // pred: ^bb89
    %627 = llvm.add %598, %597  : i64
    llvm.br ^bb87(%627 : i64)
  ^bb95:  // pred: ^bb87
    %628 = llvm.add %593, %592  : i64
    llvm.br ^bb85(%628 : i64)
  ^bb96:  // pred: ^bb85
    %629 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %630 = llvm.insertvalue %328, %629[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %631 = llvm.insertvalue %396, %630[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %631 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v9_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v5_0"]} {
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
    %26 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %39 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.extractvalue %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.extractvalue %38[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.extractvalue %38[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.extractvalue %38[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.extractvalue %38[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.extractvalue %38[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %50, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %92 = llvm.mlir.constant(2 : i64) : i64
    %93 = llvm.getelementptr %0[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %94 = llvm.load %93 : !llvm.ptr<ptr<i8>>
    %95 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %96 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %97 = llvm.call @omTensorGetDataPtr(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.insertvalue %98, %96[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %98, %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %102[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.getelementptr %103[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %104[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : i64) : i64
    %120 = llvm.getelementptr %103[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %104[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.getelementptr %103[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %128 = llvm.load %127 : !llvm.ptr<i64>
    %129 = llvm.insertvalue %128, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %104[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.load %130 : !llvm.ptr<i64>
    %132 = llvm.insertvalue %131, %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %132, %95 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %133 = llvm.mlir.constant(3 : i64) : i64
    %134 = llvm.getelementptr %0[%133] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %135 = llvm.load %134 : !llvm.ptr<ptr<i8>>
    %136 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %137 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %138 = llvm.call @omTensorGetDataPtr(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %140 = llvm.insertvalue %139, %137[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %139, %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : i64) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %145 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %146 = llvm.mlir.constant(0 : i64) : i64
    %147 = llvm.getelementptr %144[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %143[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %145[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(1 : i64) : i64
    %154 = llvm.getelementptr %144[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.insertvalue %155, %152[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %145[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %158 = llvm.load %157 : !llvm.ptr<i64>
    %159 = llvm.insertvalue %158, %156[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(2 : i64) : i64
    %161 = llvm.getelementptr %144[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %162 = llvm.load %161 : !llvm.ptr<i64>
    %163 = llvm.insertvalue %162, %159[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %145[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %165 = llvm.load %164 : !llvm.ptr<i64>
    %166 = llvm.insertvalue %165, %163[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(3 : i64) : i64
    %168 = llvm.getelementptr %144[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %169 = llvm.load %168 : !llvm.ptr<i64>
    %170 = llvm.insertvalue %169, %166[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %145[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %172 = llvm.load %171 : !llvm.ptr<i64>
    %173 = llvm.insertvalue %172, %170[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %173, %136 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54, %95, %136) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %174 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %175 = llvm.extractvalue %174[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %176 = llvm.extractvalue %174[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %177 = llvm.mlir.constant(2 : i64) : i64
    %178 = llvm.mlir.constant(16 : i64) : i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr<i8>
    %180 = llvm.bitcast %179 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %181 = llvm.mlir.constant(4 : i64) : i64
    %182 = llvm.call @omTensorCreateUntyped(%181) : (i64) -> !llvm.ptr<i8>
    %183 = llvm.mlir.constant(1 : i64) : i64
    %184 = llvm.extractvalue %175[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.bitcast %184 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %186 = llvm.extractvalue %175[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.bitcast %186 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%182, %183, %185, %187) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %188 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%182, %188) : (!llvm.ptr<i8>, i64) -> ()
    %189 = llvm.call @omTensorGetShape(%182) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %190 = llvm.call @omTensorGetStrides(%182) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %191 = llvm.mlir.constant(0 : i64) : i64
    %192 = llvm.extractvalue %175[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %189[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %175[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %190[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.mlir.constant(1 : i64) : i64
    %197 = llvm.extractvalue %175[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %189[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %175[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %190[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.mlir.constant(2 : i64) : i64
    %202 = llvm.extractvalue %175[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.getelementptr %189[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %203 : !llvm.ptr<i64>
    %204 = llvm.extractvalue %175[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %190[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %205 : !llvm.ptr<i64>
    %206 = llvm.mlir.constant(3 : i64) : i64
    %207 = llvm.extractvalue %175[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.getelementptr %189[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %207, %208 : !llvm.ptr<i64>
    %209 = llvm.extractvalue %175[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %190[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.mlir.constant(0 : i64) : i64
    %212 = llvm.getelementptr %180[%211] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %182, %212 : !llvm.ptr<ptr<i8>>
    %213 = llvm.mlir.constant(4 : i64) : i64
    %214 = llvm.call @omTensorCreateUntyped(%213) : (i64) -> !llvm.ptr<i8>
    %215 = llvm.mlir.constant(1 : i64) : i64
    %216 = llvm.extractvalue %176[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.bitcast %216 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %218 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%214, %215, %217, %219) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %220 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%214, %220) : (!llvm.ptr<i8>, i64) -> ()
    %221 = llvm.call @omTensorGetShape(%214) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %222 = llvm.call @omTensorGetStrides(%214) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %223 = llvm.mlir.constant(0 : i64) : i64
    %224 = llvm.extractvalue %176[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %221[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %176[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %222[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(1 : i64) : i64
    %229 = llvm.extractvalue %176[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.getelementptr %221[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.extractvalue %176[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %222[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.mlir.constant(2 : i64) : i64
    %234 = llvm.extractvalue %176[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.getelementptr %221[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %234, %235 : !llvm.ptr<i64>
    %236 = llvm.extractvalue %176[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.getelementptr %222[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %237 : !llvm.ptr<i64>
    %238 = llvm.mlir.constant(3 : i64) : i64
    %239 = llvm.extractvalue %176[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.getelementptr %221[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %239, %240 : !llvm.ptr<i64>
    %241 = llvm.extractvalue %176[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.getelementptr %222[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %241, %242 : !llvm.ptr<i64>
    %243 = llvm.mlir.constant(1 : i64) : i64
    %244 = llvm.getelementptr %180[%243] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %214, %244 : !llvm.ptr<ptr<i8>>
    %245 = llvm.call @omTensorListCreate(%180, %177, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<286 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<286 x i8>> to !llvm.ptr<i8>
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


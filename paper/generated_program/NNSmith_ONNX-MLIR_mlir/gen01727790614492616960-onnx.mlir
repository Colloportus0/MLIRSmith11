module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 3] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[3, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[3, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v7_0", "v0_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v9_0", "v2_0"]} {
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
    %48 = llvm.mlir.constant(2147483647 : i32) : i32
    %49 = llvm.mlir.constant(1 : i64) : i64
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
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
    %62 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %69 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %80 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %81 = llvm.bitcast %80 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %83 = llvm.insertvalue %81, %82[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(3 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.null : !llvm.ptr<i32>
    %109 = llvm.getelementptr %108[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %110 = llvm.ptrtoint %109 : !llvm.ptr<i32> to i64
    %111 = llvm.mlir.constant(16 : index) : i64
    %112 = llvm.add %110, %111  : i64
    %113 = llvm.call @malloc(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.bitcast %113 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %115 = llvm.ptrtoint %114 : !llvm.ptr<i32> to i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.sub %111, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.urem %118, %111  : i64
    %120 = llvm.sub %118, %119  : i64
    %121 = llvm.inttoptr %120 : i64 to !llvm.ptr<i32>
    %122 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %123 = llvm.insertvalue %114, %122[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %121, %123[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.insertvalue %125, %124[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %103, %126[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %104, %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %105, %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %106, %129[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %104, %130[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%135 : i64)
  ^bb1(%138: i64):  // 2 preds: ^bb0, ^bb11
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%140 : i64)
  ^bb3(%143: i64):  // 2 preds: ^bb2, ^bb10
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%145 : i64)
  ^bb5(%148: i64):  // 2 preds: ^bb4, ^bb9
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%150 : i64)
  ^bb7(%153: i64):  // 2 preds: ^bb6, ^bb8
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %155 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.add %138, %143  : i64
    %157 = llvm.add %156, %148  : i64
    %158 = llvm.add %157, %153  : i64
    %159 = llvm.getelementptr %155[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %160 = llvm.load %159 : !llvm.ptr<i32>
    %161 = llvm.extractvalue %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.add %138, %143  : i64
    %163 = llvm.add %162, %148  : i64
    %164 = llvm.add %163, %153  : i64
    %165 = llvm.getelementptr %161[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %160, %165 : !llvm.ptr<i32>
    %166 = llvm.add %153, %152  : i64
    llvm.br ^bb7(%166 : i64)
  ^bb9:  // pred: ^bb7
    %167 = llvm.add %148, %147  : i64
    llvm.br ^bb5(%167 : i64)
  ^bb10:  // pred: ^bb5
    %168 = llvm.add %143, %142  : i64
    llvm.br ^bb3(%168 : i64)
  ^bb11:  // pred: ^bb3
    %169 = llvm.add %138, %137  : i64
    llvm.br ^bb1(%169 : i64)
  ^bb12:  // pred: ^bb1
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%170 : i64)
  ^bb13(%173: i64):  // 2 preds: ^bb12, ^bb23
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%175 : i64)
  ^bb15(%178: i64):  // 2 preds: ^bb14, ^bb22
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%180 : i64)
  ^bb17(%183: i64):  // 2 preds: ^bb16, ^bb21
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%185 : i64)
  ^bb19(%188: i64):  // 2 preds: ^bb18, ^bb20
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.add %173, %190  : i64
    %192 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.add %173, %178  : i64
    %194 = llvm.add %193, %183  : i64
    %195 = llvm.add %194, %188  : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.extractvalue %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.add %191, %178  : i64
    %200 = llvm.add %199, %183  : i64
    %201 = llvm.add %200, %188  : i64
    %202 = llvm.getelementptr %198[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %197, %202 : !llvm.ptr<i32>
    %203 = llvm.add %188, %187  : i64
    llvm.br ^bb19(%203 : i64)
  ^bb21:  // pred: ^bb19
    %204 = llvm.add %183, %182  : i64
    llvm.br ^bb17(%204 : i64)
  ^bb22:  // pred: ^bb17
    %205 = llvm.add %178, %177  : i64
    llvm.br ^bb15(%205 : i64)
  ^bb23:  // pred: ^bb15
    %206 = llvm.add %173, %172  : i64
    llvm.br ^bb13(%206 : i64)
  ^bb24:  // pred: ^bb13
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%207 : i64)
  ^bb25(%210: i64):  // 2 preds: ^bb24, ^bb35
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%212 : i64)
  ^bb27(%215: i64):  // 2 preds: ^bb26, ^bb34
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%217 : i64)
  ^bb29(%220: i64):  // 2 preds: ^bb28, ^bb33
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%222 : i64)
  ^bb31(%225: i64):  // 2 preds: ^bb30, ^bb32
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.add %210, %227  : i64
    %229 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.add %210, %215  : i64
    %231 = llvm.add %230, %220  : i64
    %232 = llvm.add %231, %225  : i64
    %233 = llvm.getelementptr %229[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.load %233 : !llvm.ptr<i32>
    %235 = llvm.extractvalue %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.add %228, %215  : i64
    %237 = llvm.add %236, %220  : i64
    %238 = llvm.add %237, %225  : i64
    %239 = llvm.getelementptr %235[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %234, %239 : !llvm.ptr<i32>
    %240 = llvm.add %225, %224  : i64
    llvm.br ^bb31(%240 : i64)
  ^bb33:  // pred: ^bb31
    %241 = llvm.add %220, %219  : i64
    llvm.br ^bb29(%241 : i64)
  ^bb34:  // pred: ^bb29
    %242 = llvm.add %215, %214  : i64
    llvm.br ^bb27(%242 : i64)
  ^bb35:  // pred: ^bb27
    %243 = llvm.add %210, %209  : i64
    llvm.br ^bb25(%243 : i64)
  ^bb36:  // pred: ^bb25
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i64>
    %247 = llvm.getelementptr %246[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i64> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i64> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i64>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %244, %264[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %245, %265[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%267 : i64)
  ^bb37(%270: i64):  // 2 preds: ^bb36, ^bb38
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %272 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %273 : !llvm.ptr<i64>
    %274 = llvm.add %270, %269  : i64
    llvm.br ^bb37(%274 : i64)
  ^bb39:  // pred: ^bb37
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<i64>
    %278 = llvm.getelementptr %277[%275] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i64> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i64> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<i64>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %275, %295[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %276, %296[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%298 : i64)
  ^bb40(%301: i64):  // 2 preds: ^bb39, ^bb41
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %303 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %305 = llvm.load %304 : !llvm.ptr<i64>
    %306 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %307 = llvm.load %306 : !llvm.ptr<i64>
    %308 = llvm.mul %305, %307  : i64
    %309 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.getelementptr %309[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %308, %310 : !llvm.ptr<i64>
    %311 = llvm.add %301, %300  : i64
    llvm.br ^bb40(%311 : i64)
  ^bb42:  // pred: ^bb40
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.null : !llvm.ptr<i1>
    %315 = llvm.getelementptr %314[%312] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i1> to i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.add %316, %317  : i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr<i8>
    %320 = llvm.bitcast %319 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i1> to i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.sub %317, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.urem %324, %317  : i64
    %326 = llvm.sub %324, %325  : i64
    %327 = llvm.inttoptr %326 : i64 to !llvm.ptr<i1>
    %328 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %329 = llvm.insertvalue %320, %328[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.insertvalue %327, %329[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.insertvalue %331, %330[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %312, %332[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %313, %333[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%335 : i64)
  ^bb43(%338: i64):  // 2 preds: ^bb42, ^bb44
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %340 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%338] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %342 = llvm.load %341 : !llvm.ptr<i64>
    %343 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.getelementptr %343[%338] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.load %344 : !llvm.ptr<i64>
    %346 = llvm.icmp "eq" %342, %345 : i64
    %347 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%338] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %346, %348 : !llvm.ptr<i1>
    %349 = llvm.add %338, %337  : i64
    llvm.br ^bb43(%349 : i64)
  ^bb45:  // pred: ^bb43
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.null : !llvm.ptr<i64>
    %353 = llvm.getelementptr %352[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i64> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i64> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<i64>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %350, %370[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.insertvalue %351, %371[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%373 : i64)
  ^bb46(%376: i64):  // 2 preds: ^bb45, ^bb47
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %378 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.getelementptr %378[%376] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %380 = llvm.load %379 : !llvm.ptr<i1>
    %381 = llvm.extractvalue %266[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.getelementptr %381[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %383 = llvm.load %382 : !llvm.ptr<i64>
    %384 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.select %380, %383, %386 : i1, i64
    %388 = llvm.extractvalue %372[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %387, %389 : !llvm.ptr<i64>
    %390 = llvm.add %376, %375  : i64
    llvm.br ^bb46(%390 : i64)
  ^bb48:  // pred: ^bb46
    %391 = llvm.mlir.constant(3 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i32>
    %397 = llvm.getelementptr %396[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i32> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i32> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i32>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %391, %414[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %392, %415[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %393, %416[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %394, %417[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %392, %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(3 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%423 : i64)
  ^bb49(%426: i64):  // 2 preds: ^bb48, ^bb59
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%428 : i64)
  ^bb51(%431: i64):  // 2 preds: ^bb50, ^bb58
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%433 : i64)
  ^bb53(%436: i64):  // 2 preds: ^bb52, ^bb57
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%438 : i64)
  ^bb55(%441: i64):  // 2 preds: ^bb54, ^bb56
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %443 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.add %426, %50  : i64
    %445 = llvm.add %444, %50  : i64
    %446 = llvm.add %445, %50  : i64
    %447 = llvm.getelementptr %443[%446] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %448 = llvm.load %447 : !llvm.ptr<i32>
    %449 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.add %426, %431  : i64
    %451 = llvm.add %450, %436  : i64
    %452 = llvm.add %451, %441  : i64
    %453 = llvm.getelementptr %449[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %448, %453 : !llvm.ptr<i32>
    %454 = llvm.add %441, %440  : i64
    llvm.br ^bb55(%454 : i64)
  ^bb57:  // pred: ^bb55
    %455 = llvm.add %436, %435  : i64
    llvm.br ^bb53(%455 : i64)
  ^bb58:  // pred: ^bb53
    %456 = llvm.add %431, %430  : i64
    llvm.br ^bb51(%456 : i64)
  ^bb59:  // pred: ^bb51
    %457 = llvm.add %426, %425  : i64
    llvm.br ^bb49(%457 : i64)
  ^bb60:  // pred: ^bb49
    %458 = llvm.mlir.constant(3 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(3 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.constant(3 : index) : i64
    %464 = llvm.mlir.constant(9 : index) : i64
    %465 = llvm.mlir.null : !llvm.ptr<i32>
    %466 = llvm.getelementptr %465[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.ptrtoint %466 : !llvm.ptr<i32> to i64
    %468 = llvm.mlir.constant(16 : index) : i64
    %469 = llvm.add %467, %468  : i64
    %470 = llvm.call @malloc(%469) : (i64) -> !llvm.ptr<i8>
    %471 = llvm.bitcast %470 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %472 = llvm.ptrtoint %471 : !llvm.ptr<i32> to i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.sub %468, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.urem %475, %468  : i64
    %477 = llvm.sub %475, %476  : i64
    %478 = llvm.inttoptr %477 : i64 to !llvm.ptr<i32>
    %479 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %480 = llvm.insertvalue %471, %479[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %478, %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.insertvalue %482, %481[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %458, %483[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %459, %484[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %460, %485[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %461, %486[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %463, %487[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %460, %488[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %461, %489[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %462, %490[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(3 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%492 : i64)
  ^bb61(%495: i64):  // 2 preds: ^bb60, ^bb71
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%497 : i64)
  ^bb63(%500: i64):  // 2 preds: ^bb62, ^bb70
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%502 : i64)
  ^bb65(%505: i64):  // 2 preds: ^bb64, ^bb69
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%507 : i64)
  ^bb67(%510: i64):  // 2 preds: ^bb66, ^bb68
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %512 = llvm.extractvalue %134[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.add %495, %500  : i64
    %514 = llvm.add %513, %505  : i64
    %515 = llvm.add %514, %510  : i64
    %516 = llvm.getelementptr %512[%515] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %517 = llvm.load %516 : !llvm.ptr<i32>
    %518 = llvm.extractvalue %491[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.mlir.constant(3 : index) : i64
    %520 = llvm.mul %495, %519  : i64
    %521 = llvm.mlir.constant(3 : index) : i64
    %522 = llvm.mul %500, %521  : i64
    %523 = llvm.add %520, %522  : i64
    %524 = llvm.add %523, %505  : i64
    %525 = llvm.add %524, %510  : i64
    %526 = llvm.getelementptr %518[%525] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %517, %526 : !llvm.ptr<i32>
    %527 = llvm.add %510, %509  : i64
    llvm.br ^bb67(%527 : i64)
  ^bb69:  // pred: ^bb67
    %528 = llvm.add %505, %504  : i64
    llvm.br ^bb65(%528 : i64)
  ^bb70:  // pred: ^bb65
    %529 = llvm.add %500, %499  : i64
    llvm.br ^bb63(%529 : i64)
  ^bb71:  // pred: ^bb63
    %530 = llvm.add %495, %494  : i64
    llvm.br ^bb61(%530 : i64)
  ^bb72:  // pred: ^bb61
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(3 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%531 : i64)
  ^bb73(%534: i64):  // 2 preds: ^bb72, ^bb83
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%536 : i64)
  ^bb75(%539: i64):  // 2 preds: ^bb74, ^bb82
    %540 = llvm.icmp "slt" %539, %537 : i64
    llvm.cond_br %540, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %541 = llvm.mlir.constant(0 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%541 : i64)
  ^bb77(%544: i64):  // 2 preds: ^bb76, ^bb81
    %545 = llvm.icmp "slt" %544, %542 : i64
    llvm.cond_br %545, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%546 : i64)
  ^bb79(%549: i64):  // 2 preds: ^bb78, ^bb80
    %550 = llvm.icmp "slt" %549, %547 : i64
    llvm.cond_br %550, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.add %544, %551  : i64
    %553 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.add %534, %539  : i64
    %555 = llvm.add %554, %544  : i64
    %556 = llvm.add %555, %549  : i64
    %557 = llvm.getelementptr %553[%556] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %558 = llvm.load %557 : !llvm.ptr<i32>
    %559 = llvm.extractvalue %491[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.mlir.constant(3 : index) : i64
    %561 = llvm.mul %534, %560  : i64
    %562 = llvm.mlir.constant(3 : index) : i64
    %563 = llvm.mul %539, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.add %564, %552  : i64
    %566 = llvm.add %565, %549  : i64
    %567 = llvm.getelementptr %559[%566] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %558, %567 : !llvm.ptr<i32>
    %568 = llvm.add %549, %548  : i64
    llvm.br ^bb79(%568 : i64)
  ^bb81:  // pred: ^bb79
    %569 = llvm.add %544, %543  : i64
    llvm.br ^bb77(%569 : i64)
  ^bb82:  // pred: ^bb77
    %570 = llvm.add %539, %538  : i64
    llvm.br ^bb75(%570 : i64)
  ^bb83:  // pred: ^bb75
    %571 = llvm.add %534, %533  : i64
    llvm.br ^bb73(%571 : i64)
  ^bb84:  // pred: ^bb73
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(3 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%572 : i64)
  ^bb85(%575: i64):  // 2 preds: ^bb84, ^bb95
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%577 : i64)
  ^bb87(%580: i64):  // 2 preds: ^bb86, ^bb94
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%582 : i64)
  ^bb89(%585: i64):  // 2 preds: ^bb88, ^bb93
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%587 : i64)
  ^bb91(%590: i64):  // 2 preds: ^bb90, ^bb92
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %592 = llvm.mlir.constant(2 : index) : i64
    %593 = llvm.add %585, %592  : i64
    %594 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.add %575, %580  : i64
    %596 = llvm.add %595, %585  : i64
    %597 = llvm.add %596, %590  : i64
    %598 = llvm.getelementptr %594[%597] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %599 = llvm.load %598 : !llvm.ptr<i32>
    %600 = llvm.extractvalue %491[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.mlir.constant(3 : index) : i64
    %602 = llvm.mul %575, %601  : i64
    %603 = llvm.mlir.constant(3 : index) : i64
    %604 = llvm.mul %580, %603  : i64
    %605 = llvm.add %602, %604  : i64
    %606 = llvm.add %605, %593  : i64
    %607 = llvm.add %606, %590  : i64
    %608 = llvm.getelementptr %600[%607] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %599, %608 : !llvm.ptr<i32>
    %609 = llvm.add %590, %589  : i64
    llvm.br ^bb91(%609 : i64)
  ^bb93:  // pred: ^bb91
    %610 = llvm.add %585, %584  : i64
    llvm.br ^bb89(%610 : i64)
  ^bb94:  // pred: ^bb89
    %611 = llvm.add %580, %579  : i64
    llvm.br ^bb87(%611 : i64)
  ^bb95:  // pred: ^bb87
    %612 = llvm.add %575, %574  : i64
    llvm.br ^bb85(%612 : i64)
  ^bb96:  // pred: ^bb85
    %613 = llvm.mlir.constant(3 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    %615 = llvm.mlir.constant(3 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.mlir.constant(3 : index) : i64
    %618 = llvm.mlir.constant(9 : index) : i64
    %619 = llvm.mlir.null : !llvm.ptr<i32>
    %620 = llvm.getelementptr %619[%618] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %621 = llvm.ptrtoint %620 : !llvm.ptr<i32> to i64
    %622 = llvm.mlir.constant(16 : index) : i64
    %623 = llvm.add %621, %622  : i64
    %624 = llvm.call @malloc(%623) : (i64) -> !llvm.ptr<i8>
    %625 = llvm.bitcast %624 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %626 = llvm.ptrtoint %625 : !llvm.ptr<i32> to i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.sub %622, %627  : i64
    %629 = llvm.add %626, %628  : i64
    %630 = llvm.urem %629, %622  : i64
    %631 = llvm.sub %629, %630  : i64
    %632 = llvm.inttoptr %631 : i64 to !llvm.ptr<i32>
    %633 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %634 = llvm.insertvalue %625, %633[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %635 = llvm.insertvalue %632, %634[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.insertvalue %636, %635[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %638 = llvm.insertvalue %613, %637[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %639 = llvm.insertvalue %614, %638[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %640 = llvm.insertvalue %615, %639[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %641 = llvm.insertvalue %617, %640[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %642 = llvm.insertvalue %615, %641[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %643 = llvm.insertvalue %616, %642[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %644 = llvm.mlir.constant(0 : index) : i64
    %645 = llvm.mlir.constant(3 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%644 : i64)
  ^bb97(%647: i64):  // 2 preds: ^bb96, ^bb104
    %648 = llvm.icmp "slt" %647, %645 : i64
    llvm.cond_br %648, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %649 = llvm.mlir.constant(0 : index) : i64
    %650 = llvm.mlir.constant(1 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%649 : i64)
  ^bb99(%652: i64):  // 2 preds: ^bb98, ^bb103
    %653 = llvm.icmp "slt" %652, %650 : i64
    llvm.cond_br %653, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %654 = llvm.mlir.constant(0 : index) : i64
    %655 = llvm.mlir.constant(3 : index) : i64
    %656 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%654 : i64)
  ^bb101(%657: i64):  // 2 preds: ^bb100, ^bb102
    %658 = llvm.icmp "slt" %657, %655 : i64
    llvm.cond_br %658, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %659 = llvm.extractvalue %643[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %660 = llvm.mlir.constant(3 : index) : i64
    %661 = llvm.mul %647, %660  : i64
    %662 = llvm.mlir.constant(3 : index) : i64
    %663 = llvm.mul %652, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.add %664, %657  : i64
    %666 = llvm.getelementptr %659[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %48, %666 : !llvm.ptr<i32>
    %667 = llvm.add %657, %656  : i64
    llvm.br ^bb101(%667 : i64)
  ^bb103:  // pred: ^bb101
    %668 = llvm.add %652, %651  : i64
    llvm.br ^bb99(%668 : i64)
  ^bb104:  // pred: ^bb99
    %669 = llvm.add %647, %646  : i64
    llvm.br ^bb97(%669 : i64)
  ^bb105:  // pred: ^bb97
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.mlir.constant(3 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%670 : i64)
  ^bb106(%673: i64):  // 2 preds: ^bb105, ^bb116
    %674 = llvm.icmp "slt" %673, %671 : i64
    llvm.cond_br %674, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %675 = llvm.mlir.constant(0 : index) : i64
    %676 = llvm.mlir.constant(1 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%675 : i64)
  ^bb108(%678: i64):  // 2 preds: ^bb107, ^bb115
    %679 = llvm.icmp "slt" %678, %676 : i64
    llvm.cond_br %679, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %680 = llvm.mlir.constant(0 : index) : i64
    %681 = llvm.mlir.constant(3 : index) : i64
    %682 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%680 : i64)
  ^bb110(%683: i64):  // 2 preds: ^bb109, ^bb114
    %684 = llvm.icmp "slt" %683, %681 : i64
    llvm.cond_br %684, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %685 = llvm.mlir.constant(0 : index) : i64
    %686 = llvm.mlir.constant(1 : index) : i64
    %687 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%685 : i64)
  ^bb112(%688: i64):  // 2 preds: ^bb111, ^bb113
    %689 = llvm.icmp "slt" %688, %686 : i64
    llvm.cond_br %689, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %690 = llvm.extractvalue %491[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.mlir.constant(3 : index) : i64
    %692 = llvm.mul %673, %691  : i64
    %693 = llvm.mlir.constant(3 : index) : i64
    %694 = llvm.mul %678, %693  : i64
    %695 = llvm.add %692, %694  : i64
    %696 = llvm.add %695, %683  : i64
    %697 = llvm.add %696, %688  : i64
    %698 = llvm.getelementptr %690[%697] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %699 = llvm.load %698 : !llvm.ptr<i32>
    %700 = llvm.extractvalue %643[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %701 = llvm.mlir.constant(3 : index) : i64
    %702 = llvm.mul %673, %701  : i64
    %703 = llvm.mlir.constant(3 : index) : i64
    %704 = llvm.mul %678, %703  : i64
    %705 = llvm.add %702, %704  : i64
    %706 = llvm.add %705, %683  : i64
    %707 = llvm.getelementptr %700[%706] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %708 = llvm.load %707 : !llvm.ptr<i32>
    %709 = llvm.icmp "slt" %708, %699 : i32
    %710 = llvm.select %709, %708, %699 : i1, i32
    %711 = llvm.extractvalue %643[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %712 = llvm.mlir.constant(3 : index) : i64
    %713 = llvm.mul %673, %712  : i64
    %714 = llvm.mlir.constant(3 : index) : i64
    %715 = llvm.mul %678, %714  : i64
    %716 = llvm.add %713, %715  : i64
    %717 = llvm.add %716, %683  : i64
    %718 = llvm.getelementptr %711[%717] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %710, %718 : !llvm.ptr<i32>
    %719 = llvm.add %688, %687  : i64
    llvm.br ^bb112(%719 : i64)
  ^bb114:  // pred: ^bb112
    %720 = llvm.add %683, %682  : i64
    llvm.br ^bb110(%720 : i64)
  ^bb115:  // pred: ^bb110
    %721 = llvm.add %678, %677  : i64
    llvm.br ^bb108(%721 : i64)
  ^bb116:  // pred: ^bb108
    %722 = llvm.add %673, %672  : i64
    llvm.br ^bb106(%722 : i64)
  ^bb117:  // pred: ^bb106
    %723 = llvm.mlir.constant(3 : index) : i64
    %724 = llvm.mlir.constant(1 : index) : i64
    %725 = llvm.mlir.constant(3 : index) : i64
    %726 = llvm.mlir.constant(1 : index) : i64
    %727 = llvm.mlir.constant(3 : index) : i64
    %728 = llvm.mlir.constant(9 : index) : i64
    %729 = llvm.mlir.null : !llvm.ptr<i32>
    %730 = llvm.getelementptr %729[%728] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %731 = llvm.ptrtoint %730 : !llvm.ptr<i32> to i64
    %732 = llvm.mlir.constant(16 : index) : i64
    %733 = llvm.add %731, %732  : i64
    %734 = llvm.call @malloc(%733) : (i64) -> !llvm.ptr<i8>
    %735 = llvm.bitcast %734 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %736 = llvm.ptrtoint %735 : !llvm.ptr<i32> to i64
    %737 = llvm.mlir.constant(1 : index) : i64
    %738 = llvm.sub %732, %737  : i64
    %739 = llvm.add %736, %738  : i64
    %740 = llvm.urem %739, %732  : i64
    %741 = llvm.sub %739, %740  : i64
    %742 = llvm.inttoptr %741 : i64 to !llvm.ptr<i32>
    %743 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %744 = llvm.insertvalue %735, %743[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %745 = llvm.insertvalue %742, %744[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %746 = llvm.mlir.constant(0 : index) : i64
    %747 = llvm.insertvalue %746, %745[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %748 = llvm.insertvalue %723, %747[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %749 = llvm.insertvalue %724, %748[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %750 = llvm.insertvalue %725, %749[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %751 = llvm.insertvalue %727, %750[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %752 = llvm.insertvalue %725, %751[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %753 = llvm.insertvalue %726, %752[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %754 = llvm.mlir.constant(0 : index) : i64
    %755 = llvm.mlir.constant(3 : index) : i64
    %756 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb118(%754 : i64)
  ^bb118(%757: i64):  // 2 preds: ^bb117, ^bb125
    %758 = llvm.icmp "slt" %757, %755 : i64
    llvm.cond_br %758, ^bb119, ^bb126
  ^bb119:  // pred: ^bb118
    %759 = llvm.mlir.constant(0 : index) : i64
    %760 = llvm.mlir.constant(1 : index) : i64
    %761 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb120(%759 : i64)
  ^bb120(%762: i64):  // 2 preds: ^bb119, ^bb124
    %763 = llvm.icmp "slt" %762, %760 : i64
    llvm.cond_br %763, ^bb121, ^bb125
  ^bb121:  // pred: ^bb120
    %764 = llvm.mlir.constant(0 : index) : i64
    %765 = llvm.mlir.constant(3 : index) : i64
    %766 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb122(%764 : i64)
  ^bb122(%767: i64):  // 2 preds: ^bb121, ^bb123
    %768 = llvm.icmp "slt" %767, %765 : i64
    llvm.cond_br %768, ^bb123, ^bb124
  ^bb123:  // pred: ^bb122
    %769 = llvm.extractvalue %643[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %770 = llvm.mlir.constant(3 : index) : i64
    %771 = llvm.mul %757, %770  : i64
    %772 = llvm.mlir.constant(3 : index) : i64
    %773 = llvm.mul %762, %772  : i64
    %774 = llvm.add %771, %773  : i64
    %775 = llvm.add %774, %767  : i64
    %776 = llvm.getelementptr %769[%775] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %777 = llvm.load %776 : !llvm.ptr<i32>
    %778 = llvm.extractvalue %753[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %779 = llvm.mlir.constant(3 : index) : i64
    %780 = llvm.mul %757, %779  : i64
    %781 = llvm.mlir.constant(3 : index) : i64
    %782 = llvm.mul %762, %781  : i64
    %783 = llvm.add %780, %782  : i64
    %784 = llvm.add %783, %767  : i64
    %785 = llvm.getelementptr %778[%784] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %777, %785 : !llvm.ptr<i32>
    %786 = llvm.add %767, %766  : i64
    llvm.br ^bb122(%786 : i64)
  ^bb124:  // pred: ^bb122
    %787 = llvm.add %762, %761  : i64
    llvm.br ^bb120(%787 : i64)
  ^bb125:  // pred: ^bb120
    %788 = llvm.add %757, %756  : i64
    llvm.br ^bb118(%788 : i64)
  ^bb126:  // pred: ^bb118
    %789 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %790 = llvm.insertvalue %422, %789[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %791 = llvm.insertvalue %753, %790[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %791 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v0_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v9_0", "v2_0"]} {
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %168 = llvm.extractvalue %167[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %169 = llvm.extractvalue %167[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %170 = llvm.mlir.constant(2 : i64) : i64
    %171 = llvm.mlir.constant(16 : i64) : i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %174 = llvm.mlir.constant(4 : i64) : i64
    %175 = llvm.call @omTensorCreateUntyped(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.mlir.constant(1 : i64) : i64
    %177 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.bitcast %177 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %179 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.bitcast %179 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%175, %176, %178, %180) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %181 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%175, %181) : (!llvm.ptr<i8>, i64) -> ()
    %182 = llvm.call @omTensorGetShape(%175) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %183 = llvm.call @omTensorGetStrides(%175) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.mlir.constant(0 : i64) : i64
    %185 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.getelementptr %182[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %183[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.mlir.constant(1 : i64) : i64
    %190 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %182[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %183[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.mlir.constant(2 : i64) : i64
    %195 = llvm.extractvalue %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.getelementptr %182[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %195, %196 : !llvm.ptr<i64>
    %197 = llvm.extractvalue %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %183[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.mlir.constant(3 : i64) : i64
    %200 = llvm.extractvalue %168[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.getelementptr %182[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %200, %201 : !llvm.ptr<i64>
    %202 = llvm.extractvalue %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.getelementptr %183[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %203 : !llvm.ptr<i64>
    %204 = llvm.mlir.constant(0 : i64) : i64
    %205 = llvm.getelementptr %173[%204] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %175, %205 : !llvm.ptr<ptr<i8>>
    %206 = llvm.mlir.constant(3 : i64) : i64
    %207 = llvm.call @omTensorCreateUntyped(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.mlir.constant(1 : i64) : i64
    %209 = llvm.extractvalue %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %210 = llvm.bitcast %209 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %211 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.bitcast %211 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%207, %208, %210, %212) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %213 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%207, %213) : (!llvm.ptr<i8>, i64) -> ()
    %214 = llvm.call @omTensorGetShape(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %215 = llvm.call @omTensorGetStrides(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %216 = llvm.mlir.constant(0 : i64) : i64
    %217 = llvm.extractvalue %169[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %218 = llvm.getelementptr %214[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %217, %218 : !llvm.ptr<i64>
    %219 = llvm.extractvalue %169[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.getelementptr %215[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.mlir.constant(1 : i64) : i64
    %222 = llvm.extractvalue %169[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.getelementptr %214[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %223 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.getelementptr %215[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.mlir.constant(2 : i64) : i64
    %227 = llvm.extractvalue %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.getelementptr %214[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %228 : !llvm.ptr<i64>
    %229 = llvm.extractvalue %169[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.getelementptr %215[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.mlir.constant(1 : i64) : i64
    %232 = llvm.getelementptr %173[%231] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %207, %232 : !llvm.ptr<ptr<i8>>
    %233 = llvm.call @omTensorListCreate(%173, %170, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %233 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


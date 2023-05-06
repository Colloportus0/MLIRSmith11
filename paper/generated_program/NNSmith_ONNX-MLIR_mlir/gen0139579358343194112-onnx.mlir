module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 4 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[[[[7]], [[5]], [[5]], [[3]]]]> : tensor<1x4x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<4 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v6_0", "v2_0", "v8_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<4 x array<1 x array<1 x i32>>>>>
    %86 = llvm.bitcast %85 : !llvm.ptr<array<1 x array<4 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %87 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %88 = llvm.insertvalue %86, %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %86, %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.insertvalue %90, %89[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.insertvalue %92, %91[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.insertvalue %94, %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.insertvalue %96, %95[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.insertvalue %106, %105[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.null : !llvm.ptr<i32>
    %114 = llvm.getelementptr %113[%108] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.ptrtoint %114 : !llvm.ptr<i32> to i64
    %116 = llvm.mlir.constant(16 : index) : i64
    %117 = llvm.add %115, %116  : i64
    %118 = llvm.call @malloc(%117) : (i64) -> !llvm.ptr<i8>
    %119 = llvm.bitcast %118 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %120 = llvm.ptrtoint %119 : !llvm.ptr<i32> to i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.sub %116, %121  : i64
    %123 = llvm.add %120, %122  : i64
    %124 = llvm.urem %123, %116  : i64
    %125 = llvm.sub %123, %124  : i64
    %126 = llvm.inttoptr %125 : i64 to !llvm.ptr<i32>
    %127 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %128 = llvm.insertvalue %119, %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.insertvalue %130, %129[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %108, %131[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %109, %132[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %110, %133[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %111, %134[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %110, %136[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %112, %138[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%140 : i64)
  ^bb1(%143: i64):  // 2 preds: ^bb0, ^bb11
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%145 : i64)
  ^bb3(%148: i64):  // 2 preds: ^bb2, ^bb10
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%150 : i64)
  ^bb5(%153: i64):  // 2 preds: ^bb4, ^bb9
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%155 : i64)
  ^bb7(%158: i64):  // 2 preds: ^bb6, ^bb8
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %160 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.add %143, %148  : i64
    %162 = llvm.add %161, %153  : i64
    %163 = llvm.add %162, %158  : i64
    %164 = llvm.getelementptr %160[%163] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %165 = llvm.load %164 : !llvm.ptr<i32>
    %166 = llvm.mlir.constant(false) : i1
    %167 = "llvm.intr.abs"(%165, %166) : (i32, i1) -> i32
    %168 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %143, %148  : i64
    %170 = llvm.add %169, %153  : i64
    %171 = llvm.add %170, %158  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %167, %172 : !llvm.ptr<i32>
    %173 = llvm.add %158, %157  : i64
    llvm.br ^bb7(%173 : i64)
  ^bb9:  // pred: ^bb7
    %174 = llvm.add %153, %152  : i64
    llvm.br ^bb5(%174 : i64)
  ^bb10:  // pred: ^bb5
    %175 = llvm.add %148, %147  : i64
    llvm.br ^bb3(%175 : i64)
  ^bb11:  // pred: ^bb3
    %176 = llvm.add %143, %142  : i64
    llvm.br ^bb1(%176 : i64)
  ^bb12:  // pred: ^bb1
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.null : !llvm.ptr<i32>
    %183 = llvm.getelementptr %182[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i32> to i64
    %185 = llvm.mlir.constant(16 : index) : i64
    %186 = llvm.add %184, %185  : i64
    %187 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.bitcast %187 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i32> to i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.sub %185, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.urem %192, %185  : i64
    %194 = llvm.sub %192, %193  : i64
    %195 = llvm.inttoptr %194 : i64 to !llvm.ptr<i32>
    %196 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %197 = llvm.insertvalue %188, %196[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %177, %200[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %178, %201[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %179, %202[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %180, %203[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %178, %204[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %179, %205[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %180, %206[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %181, %207[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%209 : i64)
  ^bb13(%212: i64):  // 2 preds: ^bb12, ^bb23
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%214 : i64)
  ^bb15(%217: i64):  // 2 preds: ^bb14, ^bb22
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%219 : i64)
  ^bb17(%222: i64):  // 2 preds: ^bb16, ^bb21
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%224 : i64)
  ^bb19(%227: i64):  // 2 preds: ^bb18, ^bb20
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %229 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.add %212, %217  : i64
    %231 = llvm.add %230, %222  : i64
    %232 = llvm.add %231, %227  : i64
    %233 = llvm.getelementptr %229[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.load %233 : !llvm.ptr<i32>
    %235 = llvm.sub %60, %234  : i32
    %236 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.add %212, %217  : i64
    %238 = llvm.add %237, %222  : i64
    %239 = llvm.add %238, %227  : i64
    %240 = llvm.getelementptr %236[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %235, %240 : !llvm.ptr<i32>
    %241 = llvm.add %227, %226  : i64
    llvm.br ^bb19(%241 : i64)
  ^bb21:  // pred: ^bb19
    %242 = llvm.add %222, %221  : i64
    llvm.br ^bb17(%242 : i64)
  ^bb22:  // pred: ^bb17
    %243 = llvm.add %217, %216  : i64
    llvm.br ^bb15(%243 : i64)
  ^bb23:  // pred: ^bb15
    %244 = llvm.add %212, %211  : i64
    llvm.br ^bb13(%244 : i64)
  ^bb24:  // pred: ^bb13
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(4 : index) : i64
    %251 = llvm.mlir.null : !llvm.ptr<i32>
    %252 = llvm.getelementptr %251[%250] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i32> to i64
    %254 = llvm.mlir.constant(16 : index) : i64
    %255 = llvm.add %253, %254  : i64
    %256 = llvm.call @malloc(%255) : (i64) -> !llvm.ptr<i8>
    %257 = llvm.bitcast %256 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %258 = llvm.ptrtoint %257 : !llvm.ptr<i32> to i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.sub %254, %259  : i64
    %261 = llvm.add %258, %260  : i64
    %262 = llvm.urem %261, %254  : i64
    %263 = llvm.sub %261, %262  : i64
    %264 = llvm.inttoptr %263 : i64 to !llvm.ptr<i32>
    %265 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %266 = llvm.insertvalue %257, %265[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %264, %266[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.insertvalue %268, %267[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %245, %269[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %246, %270[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %247, %271[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %248, %272[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %246, %273[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %247, %274[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %248, %275[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %249, %276[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%278 : i64)
  ^bb25(%281: i64):  // 2 preds: ^bb24, ^bb35
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%283 : i64)
  ^bb27(%286: i64):  // 2 preds: ^bb26, ^bb34
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%288 : i64)
  ^bb29(%291: i64):  // 2 preds: ^bb28, ^bb33
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%293 : i64)
  ^bb31(%296: i64):  // 2 preds: ^bb30, ^bb32
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %298 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.add %281, %286  : i64
    %300 = llvm.add %299, %291  : i64
    %301 = llvm.add %300, %296  : i64
    %302 = llvm.getelementptr %298[%301] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %303 = llvm.load %302 : !llvm.ptr<i32>
    %304 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mul %281, %305  : i64
    %307 = llvm.add %306, %286  : i64
    %308 = llvm.add %307, %291  : i64
    %309 = llvm.add %308, %296  : i64
    %310 = llvm.getelementptr %304[%309] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %303, %310 : !llvm.ptr<i32>
    %311 = llvm.add %296, %295  : i64
    llvm.br ^bb31(%311 : i64)
  ^bb33:  // pred: ^bb31
    %312 = llvm.add %291, %290  : i64
    llvm.br ^bb29(%312 : i64)
  ^bb34:  // pred: ^bb29
    %313 = llvm.add %286, %285  : i64
    llvm.br ^bb27(%313 : i64)
  ^bb35:  // pred: ^bb27
    %314 = llvm.add %281, %280  : i64
    llvm.br ^bb25(%314 : i64)
  ^bb36:  // pred: ^bb25
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%315 : i64)
  ^bb37(%318: i64):  // 2 preds: ^bb36, ^bb47
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%320 : i64)
  ^bb39(%323: i64):  // 2 preds: ^bb38, ^bb46
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%325 : i64)
  ^bb41(%328: i64):  // 2 preds: ^bb40, ^bb45
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%330 : i64)
  ^bb43(%333: i64):  // 2 preds: ^bb42, ^bb44
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.add %323, %335  : i64
    %337 = llvm.extractvalue %139[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.add %318, %323  : i64
    %339 = llvm.add %338, %328  : i64
    %340 = llvm.add %339, %333  : i64
    %341 = llvm.getelementptr %337[%340] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.load %341 : !llvm.ptr<i32>
    %343 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mlir.constant(4 : index) : i64
    %345 = llvm.mul %318, %344  : i64
    %346 = llvm.add %345, %336  : i64
    %347 = llvm.add %346, %328  : i64
    %348 = llvm.add %347, %333  : i64
    %349 = llvm.getelementptr %343[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %342, %349 : !llvm.ptr<i32>
    %350 = llvm.add %333, %332  : i64
    llvm.br ^bb43(%350 : i64)
  ^bb45:  // pred: ^bb43
    %351 = llvm.add %328, %327  : i64
    llvm.br ^bb41(%351 : i64)
  ^bb46:  // pred: ^bb41
    %352 = llvm.add %323, %322  : i64
    llvm.br ^bb39(%352 : i64)
  ^bb47:  // pred: ^bb39
    %353 = llvm.add %318, %317  : i64
    llvm.br ^bb37(%353 : i64)
  ^bb48:  // pred: ^bb37
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%354 : i64)
  ^bb49(%357: i64):  // 2 preds: ^bb48, ^bb59
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%359 : i64)
  ^bb51(%362: i64):  // 2 preds: ^bb50, ^bb58
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%364 : i64)
  ^bb53(%367: i64):  // 2 preds: ^bb52, ^bb57
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%369 : i64)
  ^bb55(%372: i64):  // 2 preds: ^bb54, ^bb56
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.add %362, %374  : i64
    %376 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.add %357, %362  : i64
    %378 = llvm.add %377, %367  : i64
    %379 = llvm.add %378, %372  : i64
    %380 = llvm.getelementptr %376[%379] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %381 = llvm.load %380 : !llvm.ptr<i32>
    %382 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mul %357, %383  : i64
    %385 = llvm.add %384, %375  : i64
    %386 = llvm.add %385, %367  : i64
    %387 = llvm.add %386, %372  : i64
    %388 = llvm.getelementptr %382[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %381, %388 : !llvm.ptr<i32>
    %389 = llvm.add %372, %371  : i64
    llvm.br ^bb55(%389 : i64)
  ^bb57:  // pred: ^bb55
    %390 = llvm.add %367, %366  : i64
    llvm.br ^bb53(%390 : i64)
  ^bb58:  // pred: ^bb53
    %391 = llvm.add %362, %361  : i64
    llvm.br ^bb51(%391 : i64)
  ^bb59:  // pred: ^bb51
    %392 = llvm.add %357, %356  : i64
    llvm.br ^bb49(%392 : i64)
  ^bb60:  // pred: ^bb49
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%393 : i64)
  ^bb61(%396: i64):  // 2 preds: ^bb60, ^bb71
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%398 : i64)
  ^bb63(%401: i64):  // 2 preds: ^bb62, ^bb70
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%403 : i64)
  ^bb65(%406: i64):  // 2 preds: ^bb64, ^bb69
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%408 : i64)
  ^bb67(%411: i64):  // 2 preds: ^bb66, ^bb68
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %413 = llvm.mlir.constant(3 : index) : i64
    %414 = llvm.add %401, %413  : i64
    %415 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.add %396, %401  : i64
    %417 = llvm.add %416, %406  : i64
    %418 = llvm.add %417, %411  : i64
    %419 = llvm.getelementptr %415[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %420 = llvm.load %419 : !llvm.ptr<i32>
    %421 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %396, %422  : i64
    %424 = llvm.add %423, %414  : i64
    %425 = llvm.add %424, %406  : i64
    %426 = llvm.add %425, %411  : i64
    %427 = llvm.getelementptr %421[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %420, %427 : !llvm.ptr<i32>
    %428 = llvm.add %411, %410  : i64
    llvm.br ^bb67(%428 : i64)
  ^bb69:  // pred: ^bb67
    %429 = llvm.add %406, %405  : i64
    llvm.br ^bb65(%429 : i64)
  ^bb70:  // pred: ^bb65
    %430 = llvm.add %401, %400  : i64
    llvm.br ^bb63(%430 : i64)
  ^bb71:  // pred: ^bb63
    %431 = llvm.add %396, %395  : i64
    llvm.br ^bb61(%431 : i64)
  ^bb72:  // pred: ^bb61
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.constant(4 : index) : i64
    %434 = llvm.mlir.constant(4 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(16 : index) : i64
    %438 = llvm.mlir.constant(16 : index) : i64
    %439 = llvm.mlir.null : !llvm.ptr<i32>
    %440 = llvm.getelementptr %439[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %441 = llvm.ptrtoint %440 : !llvm.ptr<i32> to i64
    %442 = llvm.mlir.constant(16 : index) : i64
    %443 = llvm.add %441, %442  : i64
    %444 = llvm.call @malloc(%443) : (i64) -> !llvm.ptr<i8>
    %445 = llvm.bitcast %444 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %446 = llvm.ptrtoint %445 : !llvm.ptr<i32> to i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.sub %442, %447  : i64
    %449 = llvm.add %446, %448  : i64
    %450 = llvm.urem %449, %442  : i64
    %451 = llvm.sub %449, %450  : i64
    %452 = llvm.inttoptr %451 : i64 to !llvm.ptr<i32>
    %453 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %454 = llvm.insertvalue %445, %453[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %452, %454[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.insertvalue %456, %455[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %432, %457[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %433, %458[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %434, %459[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %435, %460[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %437, %461[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %434, %462[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %435, %463[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %436, %464[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%466 : i64)
  ^bb73(%469: i64):  // 2 preds: ^bb72, ^bb83
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.mlir.constant(4 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%471 : i64)
  ^bb75(%474: i64):  // 2 preds: ^bb74, ^bb82
    %475 = llvm.icmp "slt" %474, %472 : i64
    llvm.cond_br %475, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%476 : i64)
  ^bb77(%479: i64):  // 2 preds: ^bb76, ^bb81
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%481 : i64)
  ^bb79(%484: i64):  // 2 preds: ^bb78, ^bb80
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %486 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.mlir.constant(4 : index) : i64
    %488 = llvm.mul %469, %487  : i64
    %489 = llvm.add %488, %474  : i64
    %490 = llvm.add %489, %479  : i64
    %491 = llvm.add %490, %484  : i64
    %492 = llvm.getelementptr %486[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %493 = llvm.load %492 : !llvm.ptr<i32>
    %494 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(16 : index) : i64
    %496 = llvm.mul %469, %495  : i64
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mul %474, %497  : i64
    %499 = llvm.add %496, %498  : i64
    %500 = llvm.add %499, %479  : i64
    %501 = llvm.add %500, %484  : i64
    %502 = llvm.getelementptr %494[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %493, %502 : !llvm.ptr<i32>
    %503 = llvm.add %484, %483  : i64
    llvm.br ^bb79(%503 : i64)
  ^bb81:  // pred: ^bb79
    %504 = llvm.add %479, %478  : i64
    llvm.br ^bb77(%504 : i64)
  ^bb82:  // pred: ^bb77
    %505 = llvm.add %474, %473  : i64
    llvm.br ^bb75(%505 : i64)
  ^bb83:  // pred: ^bb75
    %506 = llvm.add %469, %468  : i64
    llvm.br ^bb73(%506 : i64)
  ^bb84:  // pred: ^bb73
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%507 : i64)
  ^bb85(%510: i64):  // 2 preds: ^bb84, ^bb95
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(4 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%512 : i64)
  ^bb87(%515: i64):  // 2 preds: ^bb86, ^bb94
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%517 : i64)
  ^bb89(%520: i64):  // 2 preds: ^bb88, ^bb93
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%522 : i64)
  ^bb91(%525: i64):  // 2 preds: ^bb90, ^bb92
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.add %520, %527  : i64
    %529 = llvm.extractvalue %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mul %510, %530  : i64
    %532 = llvm.add %531, %515  : i64
    %533 = llvm.add %532, %520  : i64
    %534 = llvm.add %533, %525  : i64
    %535 = llvm.getelementptr %529[%534] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %536 = llvm.load %535 : !llvm.ptr<i32>
    %537 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mlir.constant(16 : index) : i64
    %539 = llvm.mul %510, %538  : i64
    %540 = llvm.mlir.constant(4 : index) : i64
    %541 = llvm.mul %515, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.add %542, %528  : i64
    %544 = llvm.add %543, %525  : i64
    %545 = llvm.getelementptr %537[%544] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %536, %545 : !llvm.ptr<i32>
    %546 = llvm.add %525, %524  : i64
    llvm.br ^bb91(%546 : i64)
  ^bb93:  // pred: ^bb91
    %547 = llvm.add %520, %519  : i64
    llvm.br ^bb89(%547 : i64)
  ^bb94:  // pred: ^bb89
    %548 = llvm.add %515, %514  : i64
    llvm.br ^bb87(%548 : i64)
  ^bb95:  // pred: ^bb87
    %549 = llvm.add %510, %509  : i64
    llvm.br ^bb85(%549 : i64)
  ^bb96:  // pred: ^bb85
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%550 : i64)
  ^bb97(%553: i64):  // 2 preds: ^bb96, ^bb107
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %555 = llvm.mlir.constant(0 : index) : i64
    %556 = llvm.mlir.constant(4 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%555 : i64)
  ^bb99(%558: i64):  // 2 preds: ^bb98, ^bb106
    %559 = llvm.icmp "slt" %558, %556 : i64
    llvm.cond_br %559, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %560 = llvm.mlir.constant(0 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%560 : i64)
  ^bb101(%563: i64):  // 2 preds: ^bb100, ^bb105
    %564 = llvm.icmp "slt" %563, %561 : i64
    llvm.cond_br %564, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%565 : i64)
  ^bb103(%568: i64):  // 2 preds: ^bb102, ^bb104
    %569 = llvm.icmp "slt" %568, %566 : i64
    llvm.cond_br %569, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %570 = llvm.mlir.constant(2 : index) : i64
    %571 = llvm.add %563, %570  : i64
    %572 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.mlir.constant(4 : index) : i64
    %574 = llvm.mul %553, %573  : i64
    %575 = llvm.add %574, %558  : i64
    %576 = llvm.add %575, %563  : i64
    %577 = llvm.add %576, %568  : i64
    %578 = llvm.getelementptr %572[%577] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %579 = llvm.load %578 : !llvm.ptr<i32>
    %580 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mlir.constant(16 : index) : i64
    %582 = llvm.mul %553, %581  : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mul %558, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.add %585, %571  : i64
    %587 = llvm.add %586, %568  : i64
    %588 = llvm.getelementptr %580[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %579, %588 : !llvm.ptr<i32>
    %589 = llvm.add %568, %567  : i64
    llvm.br ^bb103(%589 : i64)
  ^bb105:  // pred: ^bb103
    %590 = llvm.add %563, %562  : i64
    llvm.br ^bb101(%590 : i64)
  ^bb106:  // pred: ^bb101
    %591 = llvm.add %558, %557  : i64
    llvm.br ^bb99(%591 : i64)
  ^bb107:  // pred: ^bb99
    %592 = llvm.add %553, %552  : i64
    llvm.br ^bb97(%592 : i64)
  ^bb108:  // pred: ^bb97
    %593 = llvm.mlir.constant(0 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%593 : i64)
  ^bb109(%596: i64):  // 2 preds: ^bb108, ^bb119
    %597 = llvm.icmp "slt" %596, %594 : i64
    llvm.cond_br %597, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(4 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%598 : i64)
  ^bb111(%601: i64):  // 2 preds: ^bb110, ^bb118
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%603 : i64)
  ^bb113(%606: i64):  // 2 preds: ^bb112, ^bb117
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%608 : i64)
  ^bb115(%611: i64):  // 2 preds: ^bb114, ^bb116
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %613 = llvm.mlir.constant(3 : index) : i64
    %614 = llvm.add %606, %613  : i64
    %615 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.mlir.constant(4 : index) : i64
    %617 = llvm.mul %596, %616  : i64
    %618 = llvm.add %617, %601  : i64
    %619 = llvm.add %618, %606  : i64
    %620 = llvm.add %619, %611  : i64
    %621 = llvm.getelementptr %615[%620] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %622 = llvm.load %621 : !llvm.ptr<i32>
    %623 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.mlir.constant(16 : index) : i64
    %625 = llvm.mul %596, %624  : i64
    %626 = llvm.mlir.constant(4 : index) : i64
    %627 = llvm.mul %601, %626  : i64
    %628 = llvm.add %625, %627  : i64
    %629 = llvm.add %628, %614  : i64
    %630 = llvm.add %629, %611  : i64
    %631 = llvm.getelementptr %623[%630] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %622, %631 : !llvm.ptr<i32>
    %632 = llvm.add %611, %610  : i64
    llvm.br ^bb115(%632 : i64)
  ^bb117:  // pred: ^bb115
    %633 = llvm.add %606, %605  : i64
    llvm.br ^bb113(%633 : i64)
  ^bb118:  // pred: ^bb113
    %634 = llvm.add %601, %600  : i64
    llvm.br ^bb111(%634 : i64)
  ^bb119:  // pred: ^bb111
    %635 = llvm.add %596, %595  : i64
    llvm.br ^bb109(%635 : i64)
  ^bb120:  // pred: ^bb109
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.constant(4 : index) : i64
    %638 = llvm.mlir.constant(4 : index) : i64
    %639 = llvm.mlir.constant(1 : index) : i64
    %640 = llvm.mlir.constant(1 : index) : i64
    %641 = llvm.mlir.constant(16 : index) : i64
    %642 = llvm.mlir.constant(16 : index) : i64
    %643 = llvm.mlir.null : !llvm.ptr<i32>
    %644 = llvm.getelementptr %643[%642] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %645 = llvm.ptrtoint %644 : !llvm.ptr<i32> to i64
    %646 = llvm.mlir.constant(16 : index) : i64
    %647 = llvm.add %645, %646  : i64
    %648 = llvm.call @malloc(%647) : (i64) -> !llvm.ptr<i8>
    %649 = llvm.bitcast %648 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %650 = llvm.ptrtoint %649 : !llvm.ptr<i32> to i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.sub %646, %651  : i64
    %653 = llvm.add %650, %652  : i64
    %654 = llvm.urem %653, %646  : i64
    %655 = llvm.sub %653, %654  : i64
    %656 = llvm.inttoptr %655 : i64 to !llvm.ptr<i32>
    %657 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %658 = llvm.insertvalue %649, %657[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.insertvalue %656, %658[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %660 = llvm.mlir.constant(0 : index) : i64
    %661 = llvm.insertvalue %660, %659[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.insertvalue %636, %661[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %663 = llvm.insertvalue %637, %662[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %664 = llvm.insertvalue %638, %663[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %665 = llvm.insertvalue %639, %664[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.insertvalue %641, %665[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.insertvalue %638, %666[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.insertvalue %639, %667[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.insertvalue %640, %668[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%670 : i64)
  ^bb121(%673: i64):  // 2 preds: ^bb120, ^bb131
    %674 = llvm.icmp "slt" %673, %671 : i64
    llvm.cond_br %674, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %675 = llvm.mlir.constant(0 : index) : i64
    %676 = llvm.mlir.constant(4 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%675 : i64)
  ^bb123(%678: i64):  // 2 preds: ^bb122, ^bb130
    %679 = llvm.icmp "slt" %678, %676 : i64
    llvm.cond_br %679, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %680 = llvm.mlir.constant(0 : index) : i64
    %681 = llvm.mlir.constant(4 : index) : i64
    %682 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%680 : i64)
  ^bb125(%683: i64):  // 2 preds: ^bb124, ^bb129
    %684 = llvm.icmp "slt" %683, %681 : i64
    llvm.cond_br %684, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %685 = llvm.mlir.constant(0 : index) : i64
    %686 = llvm.mlir.constant(1 : index) : i64
    %687 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%685 : i64)
  ^bb127(%688: i64):  // 2 preds: ^bb126, ^bb128
    %689 = llvm.icmp "slt" %688, %686 : i64
    llvm.cond_br %689, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %690 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.mlir.constant(4 : index) : i64
    %692 = llvm.mul %673, %691  : i64
    %693 = llvm.add %692, %678  : i64
    %694 = llvm.add %693, %61  : i64
    %695 = llvm.add %694, %688  : i64
    %696 = llvm.getelementptr %690[%695] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %697 = llvm.load %696 : !llvm.ptr<i32>
    %698 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.mlir.constant(16 : index) : i64
    %700 = llvm.mul %673, %699  : i64
    %701 = llvm.mlir.constant(4 : index) : i64
    %702 = llvm.mul %678, %701  : i64
    %703 = llvm.add %700, %702  : i64
    %704 = llvm.add %703, %683  : i64
    %705 = llvm.add %704, %688  : i64
    %706 = llvm.getelementptr %698[%705] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %707 = llvm.load %706 : !llvm.ptr<i32>
    %708 = llvm.sub %697, %707  : i32
    %709 = llvm.extractvalue %669[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.mlir.constant(16 : index) : i64
    %711 = llvm.mul %673, %710  : i64
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mul %678, %712  : i64
    %714 = llvm.add %711, %713  : i64
    %715 = llvm.add %714, %683  : i64
    %716 = llvm.add %715, %688  : i64
    %717 = llvm.getelementptr %709[%716] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %708, %717 : !llvm.ptr<i32>
    %718 = llvm.add %688, %687  : i64
    llvm.br ^bb127(%718 : i64)
  ^bb129:  // pred: ^bb127
    %719 = llvm.add %683, %682  : i64
    llvm.br ^bb125(%719 : i64)
  ^bb130:  // pred: ^bb125
    %720 = llvm.add %678, %677  : i64
    llvm.br ^bb123(%720 : i64)
  ^bb131:  // pred: ^bb123
    %721 = llvm.add %673, %672  : i64
    llvm.br ^bb121(%721 : i64)
  ^bb132:  // pred: ^bb121
    llvm.return %669 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v2_0", "v8_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


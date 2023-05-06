module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 6 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[[4, 4], [3, 6]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<true> : tensor<i1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i1>
  llvm.mlir.global internal constant @constant_0(dense<[[[[6, 6], [3, 7]], [[6, 7], [6, 4]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: !llvm.ptr<i32>, %arg22: !llvm.ptr<i32>, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: !llvm.ptr<i32>, %arg33: !llvm.ptr<i32>, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v11_0", "v1_0", "v8_0", "v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %21 = llvm.insertvalue %arg18, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.insertvalue %arg19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.insertvalue %arg20, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %arg21, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg23, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg28, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg25, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg29, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg26, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg30, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg27, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg31, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %arg32, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg33, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg34, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg35, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg39, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg36, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg40, %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg37, %43[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg41, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg38, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg42, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %50 = llvm.bitcast %49 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(8 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(2 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(4 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i1>>
    %73 = llvm.bitcast %72 : !llvm.ptr<array<1 x i1>> to !llvm.ptr<i1>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %79 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %80 = llvm.bitcast %79 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %82 = llvm.insertvalue %80, %81[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(4 : index) : i64
    %89 = llvm.insertvalue %88, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(4 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mlir.constant(8 : index) : i64
    %109 = llvm.mlir.constant(8 : index) : i64
    %110 = llvm.mlir.null : !llvm.ptr<i32>
    %111 = llvm.getelementptr %110[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i32> to i64
    %113 = llvm.mlir.constant(16 : index) : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.call @malloc(%114) : (i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i32> to i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.sub %113, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.urem %120, %113  : i64
    %122 = llvm.sub %120, %121  : i64
    %123 = llvm.inttoptr %122 : i64 to !llvm.ptr<i32>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %125 = llvm.insertvalue %116, %124[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %102, %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %104, %130[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %108, %132[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %105, %134[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %106, %135[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%137 : i64)
  ^bb1(%140: i64):  // 2 preds: ^bb0, ^bb11
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%142 : i64)
  ^bb3(%145: i64):  // 2 preds: ^bb2, ^bb10
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%147 : i64)
  ^bb5(%150: i64):  // 2 preds: ^bb4, ^bb9
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%152 : i64)
  ^bb7(%155: i64):  // 2 preds: ^bb6, ^bb8
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %157 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %158 = llvm.load %157 : !llvm.ptr<i1>
    %159 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.add %48, %48  : i64
    %161 = llvm.getelementptr %159[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.mlir.constant(8 : index) : i64
    %165 = llvm.mul %140, %164  : i64
    %166 = llvm.mlir.constant(4 : index) : i64
    %167 = llvm.mul %145, %166  : i64
    %168 = llvm.add %165, %167  : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mul %150, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.add %171, %155  : i64
    %173 = llvm.getelementptr %163[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %174 = llvm.load %173 : !llvm.ptr<i32>
    %175 = llvm.select %158, %162, %174 : i1, i32
    %176 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.mlir.constant(8 : index) : i64
    %178 = llvm.mul %140, %177  : i64
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mul %145, %179  : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %150, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.add %184, %155  : i64
    %186 = llvm.getelementptr %176[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %175, %186 : !llvm.ptr<i32>
    %187 = llvm.add %155, %154  : i64
    llvm.br ^bb7(%187 : i64)
  ^bb9:  // pred: ^bb7
    %188 = llvm.add %150, %149  : i64
    llvm.br ^bb5(%188 : i64)
  ^bb10:  // pred: ^bb5
    %189 = llvm.add %145, %144  : i64
    llvm.br ^bb3(%189 : i64)
  ^bb11:  // pred: ^bb3
    %190 = llvm.add %140, %139  : i64
    llvm.br ^bb1(%190 : i64)
  ^bb12:  // pred: ^bb1
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mlir.null : !llvm.ptr<i32>
    %200 = llvm.getelementptr %199[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i32> to i64
    %202 = llvm.mlir.constant(16 : index) : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i32> to i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.sub %202, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.urem %209, %202  : i64
    %211 = llvm.sub %209, %210  : i64
    %212 = llvm.inttoptr %211 : i64 to !llvm.ptr<i32>
    %213 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %214 = llvm.insertvalue %205, %213[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %193, %219[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %194, %220[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %197, %221[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %196, %222[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %194, %223[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %195, %224[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%226 : i64)
  ^bb13(%229: i64):  // 2 preds: ^bb12, ^bb23
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%231 : i64)
  ^bb15(%234: i64):  // 2 preds: ^bb14, ^bb22
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%236 : i64)
  ^bb17(%239: i64):  // 2 preds: ^bb16, ^bb21
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%241 : i64)
  ^bb19(%244: i64):  // 2 preds: ^bb18, ^bb20
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %246 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mul %229, %247  : i64
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mul %234, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %239, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.add %254, %244  : i64
    %256 = llvm.getelementptr %246[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.load %256 : !llvm.ptr<i32>
    %258 = llvm.mlir.constant(false) : i1
    %259 = "llvm.intr.abs"(%257, %258) : (i32, i1) -> i32
    %260 = llvm.extractvalue %225[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(4 : index) : i64
    %262 = llvm.mul %229, %261  : i64
    %263 = llvm.mlir.constant(4 : index) : i64
    %264 = llvm.mul %234, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %239, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.add %268, %244  : i64
    %270 = llvm.getelementptr %260[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %259, %270 : !llvm.ptr<i32>
    %271 = llvm.add %244, %243  : i64
    llvm.br ^bb19(%271 : i64)
  ^bb21:  // pred: ^bb19
    %272 = llvm.add %239, %238  : i64
    llvm.br ^bb17(%272 : i64)
  ^bb22:  // pred: ^bb17
    %273 = llvm.add %234, %233  : i64
    llvm.br ^bb15(%273 : i64)
  ^bb23:  // pred: ^bb15
    %274 = llvm.add %229, %228  : i64
    llvm.br ^bb13(%274 : i64)
  ^bb24:  // pred: ^bb13
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mlir.null : !llvm.ptr<i32>
    %284 = llvm.getelementptr %283[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i32> to i64
    %286 = llvm.mlir.constant(16 : index) : i64
    %287 = llvm.add %285, %286  : i64
    %288 = llvm.call @malloc(%287) : (i64) -> !llvm.ptr<i8>
    %289 = llvm.bitcast %288 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i32> to i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.sub %286, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.urem %293, %286  : i64
    %295 = llvm.sub %293, %294  : i64
    %296 = llvm.inttoptr %295 : i64 to !llvm.ptr<i32>
    %297 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %298 = llvm.insertvalue %289, %297[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %296, %298[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.insertvalue %300, %299[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %278, %304[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %281, %305[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %280, %306[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %278, %307[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %279, %308[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%310 : i64)
  ^bb25(%313: i64):  // 2 preds: ^bb24, ^bb35
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%315 : i64)
  ^bb27(%318: i64):  // 2 preds: ^bb26, ^bb34
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%320 : i64)
  ^bb29(%323: i64):  // 2 preds: ^bb28, ^bb33
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%325 : i64)
  ^bb31(%328: i64):  // 2 preds: ^bb30, ^bb32
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %330 = llvm.extractvalue %225[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mul %313, %331  : i64
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mul %318, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mul %323, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.add %338, %328  : i64
    %340 = llvm.getelementptr %330[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.load %340 : !llvm.ptr<i32>
    %342 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %343 = llvm.load %342 : !llvm.ptr<i32>
    %344 = llvm.mul %341, %343  : i32
    %345 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mul %313, %346  : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mul %318, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mul %323, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.add %353, %328  : i64
    %355 = llvm.getelementptr %345[%354] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %344, %355 : !llvm.ptr<i32>
    %356 = llvm.add %328, %327  : i64
    llvm.br ^bb31(%356 : i64)
  ^bb33:  // pred: ^bb31
    %357 = llvm.add %323, %322  : i64
    llvm.br ^bb29(%357 : i64)
  ^bb34:  // pred: ^bb29
    %358 = llvm.add %318, %317  : i64
    llvm.br ^bb27(%358 : i64)
  ^bb35:  // pred: ^bb27
    %359 = llvm.add %313, %312  : i64
    llvm.br ^bb25(%359 : i64)
  ^bb36:  // pred: ^bb25
    %360 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %361 = llvm.extractvalue %309[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %361, %360[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %362, %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.insertvalue %365, %364[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.insertvalue %367, %366[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.insertvalue %369, %368[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.insertvalue %371, %370[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(4 : index) : i64
    %374 = llvm.insertvalue %373, %372[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.insertvalue %375, %374[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.insertvalue %377, %376[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.insertvalue %379, %378[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.insertvalue %381, %380[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(6 : index) : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mlir.constant(24 : index) : i64
    %390 = llvm.mlir.constant(24 : index) : i64
    %391 = llvm.mlir.null : !llvm.ptr<i32>
    %392 = llvm.getelementptr %391[%390] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %393 = llvm.ptrtoint %392 : !llvm.ptr<i32> to i64
    %394 = llvm.mlir.constant(16 : index) : i64
    %395 = llvm.add %393, %394  : i64
    %396 = llvm.call @malloc(%395) : (i64) -> !llvm.ptr<i8>
    %397 = llvm.bitcast %396 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i32> to i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.sub %394, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.urem %401, %394  : i64
    %403 = llvm.sub %401, %402  : i64
    %404 = llvm.inttoptr %403 : i64 to !llvm.ptr<i32>
    %405 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %406 = llvm.insertvalue %397, %405[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %404, %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.insertvalue %408, %407[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %383, %409[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %384, %410[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %385, %411[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %386, %412[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %389, %413[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %386, %415[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %387, %416[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%418 : i64)
  ^bb37(%421: i64):  // 2 preds: ^bb36, ^bb47
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%423 : i64)
  ^bb39(%426: i64):  // 2 preds: ^bb38, ^bb46
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%428 : i64)
  ^bb41(%431: i64):  // 2 preds: ^bb40, ^bb45
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%433 : i64)
  ^bb43(%436: i64):  // 2 preds: ^bb42, ^bb44
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %438 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(4 : index) : i64
    %440 = llvm.mul %421, %439  : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mul %426, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mul %431, %444  : i64
    %446 = llvm.add %443, %445  : i64
    %447 = llvm.add %446, %436  : i64
    %448 = llvm.getelementptr %438[%447] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %449 = llvm.load %448 : !llvm.ptr<i32>
    %450 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(24 : index) : i64
    %452 = llvm.mul %421, %451  : i64
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mul %426, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mul %431, %456  : i64
    %458 = llvm.add %455, %457  : i64
    %459 = llvm.add %458, %436  : i64
    %460 = llvm.getelementptr %450[%459] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %449, %460 : !llvm.ptr<i32>
    %461 = llvm.add %436, %435  : i64
    llvm.br ^bb43(%461 : i64)
  ^bb45:  // pred: ^bb43
    %462 = llvm.add %431, %430  : i64
    llvm.br ^bb41(%462 : i64)
  ^bb46:  // pred: ^bb41
    %463 = llvm.add %426, %425  : i64
    llvm.br ^bb39(%463 : i64)
  ^bb47:  // pred: ^bb39
    %464 = llvm.add %421, %420  : i64
    llvm.br ^bb37(%464 : i64)
  ^bb48:  // pred: ^bb37
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%465 : i64)
  ^bb49(%468: i64):  // 2 preds: ^bb48, ^bb59
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%470 : i64)
  ^bb51(%473: i64):  // 2 preds: ^bb50, ^bb58
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%475 : i64)
  ^bb53(%478: i64):  // 2 preds: ^bb52, ^bb57
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%480 : i64)
  ^bb55(%483: i64):  // 2 preds: ^bb54, ^bb56
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.add %473, %485  : i64
    %487 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.mlir.constant(4 : index) : i64
    %489 = llvm.mul %468, %488  : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %473, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.mlir.constant(2 : index) : i64
    %494 = llvm.mul %478, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.add %495, %483  : i64
    %497 = llvm.getelementptr %487[%496] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %498 = llvm.load %497 : !llvm.ptr<i32>
    %499 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.mlir.constant(24 : index) : i64
    %501 = llvm.mul %468, %500  : i64
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mul %486, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mul %478, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.add %507, %483  : i64
    %509 = llvm.getelementptr %499[%508] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %498, %509 : !llvm.ptr<i32>
    %510 = llvm.add %483, %482  : i64
    llvm.br ^bb55(%510 : i64)
  ^bb57:  // pred: ^bb55
    %511 = llvm.add %478, %477  : i64
    llvm.br ^bb53(%511 : i64)
  ^bb58:  // pred: ^bb53
    %512 = llvm.add %473, %472  : i64
    llvm.br ^bb51(%512 : i64)
  ^bb59:  // pred: ^bb51
    %513 = llvm.add %468, %467  : i64
    llvm.br ^bb49(%513 : i64)
  ^bb60:  // pred: ^bb49
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%514 : i64)
  ^bb61(%517: i64):  // 2 preds: ^bb60, ^bb71
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%519 : i64)
  ^bb63(%522: i64):  // 2 preds: ^bb62, ^bb70
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%524 : i64)
  ^bb65(%527: i64):  // 2 preds: ^bb64, ^bb69
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%529 : i64)
  ^bb67(%532: i64):  // 2 preds: ^bb66, ^bb68
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.add %522, %534  : i64
    %536 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.mlir.constant(4 : index) : i64
    %538 = llvm.mul %517, %537  : i64
    %539 = llvm.mlir.constant(4 : index) : i64
    %540 = llvm.mul %522, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.mul %527, %542  : i64
    %544 = llvm.add %541, %543  : i64
    %545 = llvm.add %544, %532  : i64
    %546 = llvm.getelementptr %536[%545] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %547 = llvm.load %546 : !llvm.ptr<i32>
    %548 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(24 : index) : i64
    %550 = llvm.mul %517, %549  : i64
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mul %535, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.mlir.constant(2 : index) : i64
    %555 = llvm.mul %527, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.add %556, %532  : i64
    %558 = llvm.getelementptr %548[%557] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %547, %558 : !llvm.ptr<i32>
    %559 = llvm.add %532, %531  : i64
    llvm.br ^bb67(%559 : i64)
  ^bb69:  // pred: ^bb67
    %560 = llvm.add %527, %526  : i64
    llvm.br ^bb65(%560 : i64)
  ^bb70:  // pred: ^bb65
    %561 = llvm.add %522, %521  : i64
    llvm.br ^bb63(%561 : i64)
  ^bb71:  // pred: ^bb63
    %562 = llvm.add %517, %516  : i64
    llvm.br ^bb61(%562 : i64)
  ^bb72:  // pred: ^bb61
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%563 : i64)
  ^bb73(%566: i64):  // 2 preds: ^bb72, ^bb83
    %567 = llvm.icmp "slt" %566, %564 : i64
    llvm.cond_br %567, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%568 : i64)
  ^bb75(%571: i64):  // 2 preds: ^bb74, ^bb82
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(2 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%573 : i64)
  ^bb77(%576: i64):  // 2 preds: ^bb76, ^bb81
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%578 : i64)
  ^bb79(%581: i64):  // 2 preds: ^bb78, ^bb80
    %582 = llvm.icmp "slt" %581, %579 : i64
    llvm.cond_br %582, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %583 = llvm.mlir.constant(3 : index) : i64
    %584 = llvm.add %571, %583  : i64
    %585 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mul %566, %586  : i64
    %588 = llvm.mlir.constant(4 : index) : i64
    %589 = llvm.mul %571, %588  : i64
    %590 = llvm.add %587, %589  : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %576, %591  : i64
    %593 = llvm.add %590, %592  : i64
    %594 = llvm.add %593, %581  : i64
    %595 = llvm.getelementptr %585[%594] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %596 = llvm.load %595 : !llvm.ptr<i32>
    %597 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.mlir.constant(24 : index) : i64
    %599 = llvm.mul %566, %598  : i64
    %600 = llvm.mlir.constant(4 : index) : i64
    %601 = llvm.mul %584, %600  : i64
    %602 = llvm.add %599, %601  : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mul %576, %603  : i64
    %605 = llvm.add %602, %604  : i64
    %606 = llvm.add %605, %581  : i64
    %607 = llvm.getelementptr %597[%606] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %596, %607 : !llvm.ptr<i32>
    %608 = llvm.add %581, %580  : i64
    llvm.br ^bb79(%608 : i64)
  ^bb81:  // pred: ^bb79
    %609 = llvm.add %576, %575  : i64
    llvm.br ^bb77(%609 : i64)
  ^bb82:  // pred: ^bb77
    %610 = llvm.add %571, %570  : i64
    llvm.br ^bb75(%610 : i64)
  ^bb83:  // pred: ^bb75
    %611 = llvm.add %566, %565  : i64
    llvm.br ^bb73(%611 : i64)
  ^bb84:  // pred: ^bb73
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%612 : i64)
  ^bb85(%615: i64):  // 2 preds: ^bb84, ^bb95
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(2 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%617 : i64)
  ^bb87(%620: i64):  // 2 preds: ^bb86, ^bb94
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(2 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%622 : i64)
  ^bb89(%625: i64):  // 2 preds: ^bb88, ^bb93
    %626 = llvm.icmp "slt" %625, %623 : i64
    llvm.cond_br %626, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %627 = llvm.mlir.constant(0 : index) : i64
    %628 = llvm.mlir.constant(2 : index) : i64
    %629 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%627 : i64)
  ^bb91(%630: i64):  // 2 preds: ^bb90, ^bb92
    %631 = llvm.icmp "slt" %630, %628 : i64
    llvm.cond_br %631, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %632 = llvm.mlir.constant(4 : index) : i64
    %633 = llvm.add %620, %632  : i64
    %634 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.mlir.constant(8 : index) : i64
    %636 = llvm.mul %615, %635  : i64
    %637 = llvm.mlir.constant(4 : index) : i64
    %638 = llvm.mul %620, %637  : i64
    %639 = llvm.add %636, %638  : i64
    %640 = llvm.mlir.constant(2 : index) : i64
    %641 = llvm.mul %625, %640  : i64
    %642 = llvm.add %639, %641  : i64
    %643 = llvm.add %642, %630  : i64
    %644 = llvm.getelementptr %634[%643] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %645 = llvm.load %644 : !llvm.ptr<i32>
    %646 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.mlir.constant(24 : index) : i64
    %648 = llvm.mul %615, %647  : i64
    %649 = llvm.mlir.constant(4 : index) : i64
    %650 = llvm.mul %633, %649  : i64
    %651 = llvm.add %648, %650  : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %625, %652  : i64
    %654 = llvm.add %651, %653  : i64
    %655 = llvm.add %654, %630  : i64
    %656 = llvm.getelementptr %646[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %645, %656 : !llvm.ptr<i32>
    %657 = llvm.add %630, %629  : i64
    llvm.br ^bb91(%657 : i64)
  ^bb93:  // pred: ^bb91
    %658 = llvm.add %625, %624  : i64
    llvm.br ^bb89(%658 : i64)
  ^bb94:  // pred: ^bb89
    %659 = llvm.add %620, %619  : i64
    llvm.br ^bb87(%659 : i64)
  ^bb95:  // pred: ^bb87
    %660 = llvm.add %615, %614  : i64
    llvm.br ^bb85(%660 : i64)
  ^bb96:  // pred: ^bb85
    %661 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %662 = llvm.insertvalue %382, %661[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %663 = llvm.insertvalue %417, %662[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %663 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v11_0", "v1_0", "v8_0", "v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %21 = llvm.extractvalue %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.extractvalue %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %36 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %0[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<i8>>
    %74 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %76 = llvm.call @omTensorGetDataPtr(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.insertvalue %77, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %82 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %81, %74 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.getelementptr %0[%84] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %86 = llvm.load %85 : !llvm.ptr<ptr<i8>>
    %87 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %89 = llvm.call @omTensorGetDataPtr(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %91 = llvm.insertvalue %90, %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %90, %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %96 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.mlir.constant(0 : i64) : i64
    %98 = llvm.getelementptr %95[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %99 = llvm.load %98 : !llvm.ptr<i64>
    %100 = llvm.insertvalue %99, %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %96[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %102 = llvm.load %101 : !llvm.ptr<i64>
    %103 = llvm.insertvalue %102, %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.getelementptr %95[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %106 = llvm.load %105 : !llvm.ptr<i64>
    %107 = llvm.insertvalue %106, %103[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %96[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %109 = llvm.load %108 : !llvm.ptr<i64>
    %110 = llvm.insertvalue %109, %107[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.getelementptr %95[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %113 = llvm.load %112 : !llvm.ptr<i64>
    %114 = llvm.insertvalue %113, %110[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %96[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %116 = llvm.load %115 : !llvm.ptr<i64>
    %117 = llvm.insertvalue %116, %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.getelementptr %95[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %120 = llvm.load %119 : !llvm.ptr<i64>
    %121 = llvm.insertvalue %120, %117[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %96[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %123 = llvm.load %122 : !llvm.ptr<i64>
    %124 = llvm.insertvalue %123, %121[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %124, %87 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %125 = llvm.mlir.constant(4 : i64) : i64
    %126 = llvm.getelementptr %0[%125] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %127 = llvm.load %126 : !llvm.ptr<ptr<i8>>
    %128 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %130 = llvm.call @omTensorGetDataPtr(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %132 = llvm.insertvalue %131, %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %131, %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.call @omTensorGetShape(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %137 = llvm.call @omTensorGetStrides(%127) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.mlir.constant(0 : i64) : i64
    %139 = llvm.getelementptr %136[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %140 = llvm.load %139 : !llvm.ptr<i64>
    %141 = llvm.insertvalue %140, %135[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %137[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %143 = llvm.load %142 : !llvm.ptr<i64>
    %144 = llvm.insertvalue %143, %141[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(1 : i64) : i64
    %146 = llvm.getelementptr %136[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %147 = llvm.load %146 : !llvm.ptr<i64>
    %148 = llvm.insertvalue %147, %144[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %137[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %150 = llvm.load %149 : !llvm.ptr<i64>
    %151 = llvm.insertvalue %150, %148[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(2 : i64) : i64
    %153 = llvm.getelementptr %136[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %154 = llvm.load %153 : !llvm.ptr<i64>
    %155 = llvm.insertvalue %154, %151[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %137[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %157 = llvm.load %156 : !llvm.ptr<i64>
    %158 = llvm.insertvalue %157, %155[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(3 : i64) : i64
    %160 = llvm.getelementptr %136[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %161 = llvm.load %160 : !llvm.ptr<i64>
    %162 = llvm.insertvalue %161, %158[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %137[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.load %163 : !llvm.ptr<i64>
    %165 = llvm.insertvalue %164, %162[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %165, %128 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33, %74, %87, %128) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %166 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %167 = llvm.extractvalue %166[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %168 = llvm.extractvalue %166[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.mlir.constant(2 : i64) : i64
    %170 = llvm.mlir.constant(16 : i64) : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %173 = llvm.mlir.constant(4 : i64) : i64
    %174 = llvm.call @omTensorCreateUntyped(%173) : (i64) -> !llvm.ptr<i8>
    %175 = llvm.mlir.constant(1 : i64) : i64
    %176 = llvm.extractvalue %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.bitcast %176 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %178 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.bitcast %178 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%174, %175, %177, %179) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %180 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%174, %180) : (!llvm.ptr<i8>, i64) -> ()
    %181 = llvm.call @omTensorGetShape(%174) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %182 = llvm.call @omTensorGetStrides(%174) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %183 = llvm.mlir.constant(0 : i64) : i64
    %184 = llvm.extractvalue %167[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %181[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.extractvalue %167[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %182[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.mlir.constant(1 : i64) : i64
    %189 = llvm.extractvalue %167[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %181[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.extractvalue %167[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %182[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.mlir.constant(2 : i64) : i64
    %194 = llvm.extractvalue %167[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %181[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.extractvalue %167[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %182[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.mlir.constant(3 : i64) : i64
    %199 = llvm.extractvalue %167[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %181[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.extractvalue %167[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %182[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.mlir.constant(0 : i64) : i64
    %204 = llvm.getelementptr %172[%203] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %174, %204 : !llvm.ptr<ptr<i8>>
    %205 = llvm.mlir.constant(4 : i64) : i64
    %206 = llvm.call @omTensorCreateUntyped(%205) : (i64) -> !llvm.ptr<i8>
    %207 = llvm.mlir.constant(1 : i64) : i64
    %208 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.bitcast %208 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %210 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.bitcast %210 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%206, %207, %209, %211) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %212 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%206, %212) : (!llvm.ptr<i8>, i64) -> ()
    %213 = llvm.call @omTensorGetShape(%206) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %214 = llvm.call @omTensorGetStrides(%206) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %215 = llvm.mlir.constant(0 : i64) : i64
    %216 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.getelementptr %213[%215] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %216, %217 : !llvm.ptr<i64>
    %218 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.getelementptr %214[%215] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %218, %219 : !llvm.ptr<i64>
    %220 = llvm.mlir.constant(1 : i64) : i64
    %221 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.getelementptr %213[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %221, %222 : !llvm.ptr<i64>
    %223 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.getelementptr %214[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %223, %224 : !llvm.ptr<i64>
    %225 = llvm.mlir.constant(2 : i64) : i64
    %226 = llvm.extractvalue %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %213[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.getelementptr %214[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.mlir.constant(3 : i64) : i64
    %231 = llvm.extractvalue %168[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %213[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.extractvalue %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %214[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.mlir.constant(1 : i64) : i64
    %236 = llvm.getelementptr %172[%235] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %206, %236 : !llvm.ptr<ptr<i8>>
    %237 = llvm.call @omTensorListCreate(%172, %169, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %237 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<332 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<332 x i8>> to !llvm.ptr<i8>
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


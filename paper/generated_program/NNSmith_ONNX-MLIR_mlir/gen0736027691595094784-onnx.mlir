module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [6 , 2 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [6 , 2 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [6 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[[[[6], [6]], [[5], [3]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<[[[[3], [6]], [[6], [6]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<[[[[4], [6]], [[5], [4]]]]> : tensor<1x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[5], [3]], [[7], [5]]], [[[3], [6]], [[7], [6]]]]> : tensor<2x2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v11_0", "v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
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
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x i32>>>>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<2 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %84 = llvm.bitcast %83 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(4 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>>
    %107 = llvm.bitcast %106 : !llvm.ptr<array<1 x array<2 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %108 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.insertvalue %113, %112[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.insertvalue %115, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.insertvalue %117, %116[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.insertvalue %119, %118[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.insertvalue %121, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.insertvalue %123, %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(4 : index) : i64
    %135 = llvm.mlir.constant(8 : index) : i64
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
    %155 = llvm.insertvalue %129, %154[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %130, %155[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %131, %156[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %132, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %134, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %131, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %132, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %133, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%163 : i64)
  ^bb1(%166: i64):  // 2 preds: ^bb0, ^bb11
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%168 : i64)
  ^bb3(%171: i64):  // 2 preds: ^bb2, ^bb10
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(2 : index) : i64
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
    %183 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.add %36, %36  : i64
    %185 = llvm.add %184, %36  : i64
    %186 = llvm.add %185, %181  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mul %166, %190  : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mul %171, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.add %194, %176  : i64
    %196 = llvm.add %195, %181  : i64
    %197 = llvm.getelementptr %189[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %198 = llvm.load %197 : !llvm.ptr<i32>
    %199 = llvm.add %188, %198  : i32
    %200 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mul %166, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %171, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %176  : i64
    %207 = llvm.add %206, %181  : i64
    %208 = llvm.getelementptr %200[%207] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %208 : !llvm.ptr<i32>
    %209 = llvm.add %181, %180  : i64
    llvm.br ^bb7(%209 : i64)
  ^bb9:  // pred: ^bb7
    %210 = llvm.add %176, %175  : i64
    llvm.br ^bb5(%210 : i64)
  ^bb10:  // pred: ^bb5
    %211 = llvm.add %171, %170  : i64
    llvm.br ^bb3(%211 : i64)
  ^bb11:  // pred: ^bb3
    %212 = llvm.add %166, %165  : i64
    llvm.br ^bb1(%212 : i64)
  ^bb12:  // pred: ^bb1
    %213 = llvm.mlir.constant(6 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mlir.constant(24 : index) : i64
    %220 = llvm.mlir.null : !llvm.ptr<i32>
    %221 = llvm.getelementptr %220[%219] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %222 = llvm.ptrtoint %221 : !llvm.ptr<i32> to i64
    %223 = llvm.mlir.constant(16 : index) : i64
    %224 = llvm.add %222, %223  : i64
    %225 = llvm.call @malloc(%224) : (i64) -> !llvm.ptr<i8>
    %226 = llvm.bitcast %225 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %227 = llvm.ptrtoint %226 : !llvm.ptr<i32> to i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.sub %223, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.urem %230, %223  : i64
    %232 = llvm.sub %230, %231  : i64
    %233 = llvm.inttoptr %232 : i64 to !llvm.ptr<i32>
    %234 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %235 = llvm.insertvalue %226, %234[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %233, %235[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.insertvalue %237, %236[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %213, %238[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %214, %239[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %215, %240[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %216, %241[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %218, %242[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %215, %243[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %216, %244[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %217, %245[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%247 : i64)
  ^bb13(%250: i64):  // 2 preds: ^bb12, ^bb23
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%252 : i64)
  ^bb15(%255: i64):  // 2 preds: ^bb14, ^bb22
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%257 : i64)
  ^bb17(%260: i64):  // 2 preds: ^bb16, ^bb21
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%262 : i64)
  ^bb19(%265: i64):  // 2 preds: ^bb18, ^bb20
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %267 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mul %250, %268  : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %255, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.add %272, %260  : i64
    %274 = llvm.add %273, %265  : i64
    %275 = llvm.getelementptr %267[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %276 = llvm.load %275 : !llvm.ptr<i32>
    %277 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mul %250, %278  : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %255, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %260  : i64
    %284 = llvm.add %283, %265  : i64
    %285 = llvm.getelementptr %277[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %276, %285 : !llvm.ptr<i32>
    %286 = llvm.add %265, %264  : i64
    llvm.br ^bb19(%286 : i64)
  ^bb21:  // pred: ^bb19
    %287 = llvm.add %260, %259  : i64
    llvm.br ^bb17(%287 : i64)
  ^bb22:  // pred: ^bb17
    %288 = llvm.add %255, %254  : i64
    llvm.br ^bb15(%288 : i64)
  ^bb23:  // pred: ^bb15
    %289 = llvm.add %250, %249  : i64
    llvm.br ^bb13(%289 : i64)
  ^bb24:  // pred: ^bb13
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%290 : i64)
  ^bb25(%293: i64):  // 2 preds: ^bb24, ^bb35
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%295 : i64)
  ^bb27(%298: i64):  // 2 preds: ^bb26, ^bb34
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%300 : i64)
  ^bb29(%303: i64):  // 2 preds: ^bb28, ^bb33
    %304 = llvm.icmp "slt" %303, %301 : i64
    llvm.cond_br %304, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%305 : i64)
  ^bb31(%308: i64):  // 2 preds: ^bb30, ^bb32
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.add %293, %310  : i64
    %312 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mul %293, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %298, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.add %317, %303  : i64
    %319 = llvm.add %318, %308  : i64
    %320 = llvm.getelementptr %312[%319] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %321 = llvm.load %320 : !llvm.ptr<i32>
    %322 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mul %311, %323  : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mul %298, %325  : i64
    %327 = llvm.add %324, %326  : i64
    %328 = llvm.add %327, %303  : i64
    %329 = llvm.add %328, %308  : i64
    %330 = llvm.getelementptr %322[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %321, %330 : !llvm.ptr<i32>
    %331 = llvm.add %308, %307  : i64
    llvm.br ^bb31(%331 : i64)
  ^bb33:  // pred: ^bb31
    %332 = llvm.add %303, %302  : i64
    llvm.br ^bb29(%332 : i64)
  ^bb34:  // pred: ^bb29
    %333 = llvm.add %298, %297  : i64
    llvm.br ^bb27(%333 : i64)
  ^bb35:  // pred: ^bb27
    %334 = llvm.add %293, %292  : i64
    llvm.br ^bb25(%334 : i64)
  ^bb36:  // pred: ^bb25
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%335 : i64)
  ^bb37(%338: i64):  // 2 preds: ^bb36, ^bb47
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(2 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%340 : i64)
  ^bb39(%343: i64):  // 2 preds: ^bb38, ^bb46
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%345 : i64)
  ^bb41(%348: i64):  // 2 preds: ^bb40, ^bb45
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%350 : i64)
  ^bb43(%353: i64):  // 2 preds: ^bb42, ^bb44
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.add %338, %355  : i64
    %357 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mlir.constant(4 : index) : i64
    %359 = llvm.mul %338, %358  : i64
    %360 = llvm.mlir.constant(2 : index) : i64
    %361 = llvm.mul %343, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.add %362, %348  : i64
    %364 = llvm.add %363, %353  : i64
    %365 = llvm.getelementptr %357[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %366 = llvm.load %365 : !llvm.ptr<i32>
    %367 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mlir.constant(4 : index) : i64
    %369 = llvm.mul %356, %368  : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %343, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %348  : i64
    %374 = llvm.add %373, %353  : i64
    %375 = llvm.getelementptr %367[%374] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %366, %375 : !llvm.ptr<i32>
    %376 = llvm.add %353, %352  : i64
    llvm.br ^bb43(%376 : i64)
  ^bb45:  // pred: ^bb43
    %377 = llvm.add %348, %347  : i64
    llvm.br ^bb41(%377 : i64)
  ^bb46:  // pred: ^bb41
    %378 = llvm.add %343, %342  : i64
    llvm.br ^bb39(%378 : i64)
  ^bb47:  // pred: ^bb39
    %379 = llvm.add %338, %337  : i64
    llvm.br ^bb37(%379 : i64)
  ^bb48:  // pred: ^bb37
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%380 : i64)
  ^bb49(%383: i64):  // 2 preds: ^bb48, ^bb59
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%385 : i64)
  ^bb51(%388: i64):  // 2 preds: ^bb50, ^bb58
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%390 : i64)
  ^bb53(%393: i64):  // 2 preds: ^bb52, ^bb57
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%395 : i64)
  ^bb55(%398: i64):  // 2 preds: ^bb54, ^bb56
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %400 = llvm.mlir.constant(3 : index) : i64
    %401 = llvm.add %383, %400  : i64
    %402 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.mlir.constant(4 : index) : i64
    %404 = llvm.mul %383, %403  : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %388, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.add %407, %393  : i64
    %409 = llvm.add %408, %398  : i64
    %410 = llvm.getelementptr %402[%409] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %411 = llvm.load %410 : !llvm.ptr<i32>
    %412 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(4 : index) : i64
    %414 = llvm.mul %401, %413  : i64
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.mul %388, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.add %417, %393  : i64
    %419 = llvm.add %418, %398  : i64
    %420 = llvm.getelementptr %412[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %411, %420 : !llvm.ptr<i32>
    %421 = llvm.add %398, %397  : i64
    llvm.br ^bb55(%421 : i64)
  ^bb57:  // pred: ^bb55
    %422 = llvm.add %393, %392  : i64
    llvm.br ^bb53(%422 : i64)
  ^bb58:  // pred: ^bb53
    %423 = llvm.add %388, %387  : i64
    llvm.br ^bb51(%423 : i64)
  ^bb59:  // pred: ^bb51
    %424 = llvm.add %383, %382  : i64
    llvm.br ^bb49(%424 : i64)
  ^bb60:  // pred: ^bb49
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%425 : i64)
  ^bb61(%428: i64):  // 2 preds: ^bb60, ^bb71
    %429 = llvm.icmp "slt" %428, %426 : i64
    llvm.cond_br %429, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%430 : i64)
  ^bb63(%433: i64):  // 2 preds: ^bb62, ^bb70
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %435 = llvm.mlir.constant(0 : index) : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%435 : i64)
  ^bb65(%438: i64):  // 2 preds: ^bb64, ^bb69
    %439 = llvm.icmp "slt" %438, %436 : i64
    llvm.cond_br %439, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%440 : i64)
  ^bb67(%443: i64):  // 2 preds: ^bb66, ^bb68
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %445 = llvm.mlir.constant(5 : index) : i64
    %446 = llvm.add %428, %445  : i64
    %447 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %428, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %433, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %438  : i64
    %454 = llvm.add %453, %443  : i64
    %455 = llvm.getelementptr %447[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.load %455 : !llvm.ptr<i32>
    %457 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.mlir.constant(4 : index) : i64
    %459 = llvm.mul %446, %458  : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %433, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.add %462, %438  : i64
    %464 = llvm.add %463, %443  : i64
    %465 = llvm.getelementptr %457[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %456, %465 : !llvm.ptr<i32>
    %466 = llvm.add %443, %442  : i64
    llvm.br ^bb67(%466 : i64)
  ^bb69:  // pred: ^bb67
    %467 = llvm.add %438, %437  : i64
    llvm.br ^bb65(%467 : i64)
  ^bb70:  // pred: ^bb65
    %468 = llvm.add %433, %432  : i64
    llvm.br ^bb63(%468 : i64)
  ^bb71:  // pred: ^bb63
    %469 = llvm.add %428, %427  : i64
    llvm.br ^bb61(%469 : i64)
  ^bb72:  // pred: ^bb61
    %470 = llvm.mlir.constant(6 : index) : i64
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(4 : index) : i64
    %476 = llvm.mlir.constant(24 : index) : i64
    %477 = llvm.mlir.null : !llvm.ptr<i32>
    %478 = llvm.getelementptr %477[%476] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %479 = llvm.ptrtoint %478 : !llvm.ptr<i32> to i64
    %480 = llvm.mlir.constant(16 : index) : i64
    %481 = llvm.add %479, %480  : i64
    %482 = llvm.call @malloc(%481) : (i64) -> !llvm.ptr<i8>
    %483 = llvm.bitcast %482 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %484 = llvm.ptrtoint %483 : !llvm.ptr<i32> to i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.sub %480, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.urem %487, %480  : i64
    %489 = llvm.sub %487, %488  : i64
    %490 = llvm.inttoptr %489 : i64 to !llvm.ptr<i32>
    %491 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %492 = llvm.insertvalue %483, %491[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %490, %492[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.insertvalue %494, %493[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %470, %495[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %471, %496[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %472, %497[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %473, %498[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %475, %499[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %472, %500[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %473, %501[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %474, %502[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(6 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%504 : i64)
  ^bb73(%507: i64):  // 2 preds: ^bb72, ^bb83
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%509 : i64)
  ^bb75(%512: i64):  // 2 preds: ^bb74, ^bb82
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%514 : i64)
  ^bb77(%517: i64):  // 2 preds: ^bb76, ^bb81
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%519 : i64)
  ^bb79(%522: i64):  // 2 preds: ^bb78, ^bb80
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %524 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(4 : index) : i64
    %526 = llvm.mul %507, %525  : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mul %512, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.add %529, %517  : i64
    %531 = llvm.add %530, %522  : i64
    %532 = llvm.getelementptr %524[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %533 = llvm.load %532 : !llvm.ptr<i32>
    %534 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mul %507, %535  : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mul %512, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.add %539, %517  : i64
    %541 = llvm.add %540, %522  : i64
    %542 = llvm.getelementptr %534[%541] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %543 = llvm.load %542 : !llvm.ptr<i32>
    %544 = llvm.mul %533, %543  : i32
    %545 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mul %507, %546  : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mul %512, %548  : i64
    %550 = llvm.add %547, %549  : i64
    %551 = llvm.add %550, %517  : i64
    %552 = llvm.add %551, %522  : i64
    %553 = llvm.getelementptr %545[%552] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %544, %553 : !llvm.ptr<i32>
    %554 = llvm.add %522, %521  : i64
    llvm.br ^bb79(%554 : i64)
  ^bb81:  // pred: ^bb79
    %555 = llvm.add %517, %516  : i64
    llvm.br ^bb77(%555 : i64)
  ^bb82:  // pred: ^bb77
    %556 = llvm.add %512, %511  : i64
    llvm.br ^bb75(%556 : i64)
  ^bb83:  // pred: ^bb75
    %557 = llvm.add %507, %506  : i64
    llvm.br ^bb73(%557 : i64)
  ^bb84:  // pred: ^bb73
    %558 = llvm.mlir.constant(6 : index) : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mlir.constant(2 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(4 : index) : i64
    %564 = llvm.mlir.constant(24 : index) : i64
    %565 = llvm.mlir.null : !llvm.ptr<i1>
    %566 = llvm.getelementptr %565[%564] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %567 = llvm.ptrtoint %566 : !llvm.ptr<i1> to i64
    %568 = llvm.mlir.constant(16 : index) : i64
    %569 = llvm.add %567, %568  : i64
    %570 = llvm.call @malloc(%569) : (i64) -> !llvm.ptr<i8>
    %571 = llvm.bitcast %570 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %572 = llvm.ptrtoint %571 : !llvm.ptr<i1> to i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.sub %568, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.urem %575, %568  : i64
    %577 = llvm.sub %575, %576  : i64
    %578 = llvm.inttoptr %577 : i64 to !llvm.ptr<i1>
    %579 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %580 = llvm.insertvalue %571, %579[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.insertvalue %578, %580[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.insertvalue %582, %581[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %558, %583[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %559, %584[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %560, %585[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %561, %586[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %563, %587[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %560, %588[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %561, %589[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %562, %590[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(6 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%592 : i64)
  ^bb85(%595: i64):  // 2 preds: ^bb84, ^bb95
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %597 = llvm.mlir.constant(0 : index) : i64
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%597 : i64)
  ^bb87(%600: i64):  // 2 preds: ^bb86, ^bb94
    %601 = llvm.icmp "slt" %600, %598 : i64
    llvm.cond_br %601, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%602 : i64)
  ^bb89(%605: i64):  // 2 preds: ^bb88, ^bb93
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%607 : i64)
  ^bb91(%610: i64):  // 2 preds: ^bb90, ^bb92
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %612 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.mlir.constant(4 : index) : i64
    %614 = llvm.mul %595, %613  : i64
    %615 = llvm.mlir.constant(2 : index) : i64
    %616 = llvm.mul %600, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.add %617, %605  : i64
    %619 = llvm.add %618, %610  : i64
    %620 = llvm.getelementptr %612[%619] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %621 = llvm.load %620 : !llvm.ptr<i32>
    %622 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.mlir.constant(4 : index) : i64
    %624 = llvm.mul %595, %623  : i64
    %625 = llvm.mlir.constant(2 : index) : i64
    %626 = llvm.mul %600, %625  : i64
    %627 = llvm.add %624, %626  : i64
    %628 = llvm.add %627, %605  : i64
    %629 = llvm.add %628, %610  : i64
    %630 = llvm.getelementptr %622[%629] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %631 = llvm.load %630 : !llvm.ptr<i32>
    %632 = llvm.icmp "eq" %621, %631 : i32
    %633 = llvm.extractvalue %591[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.mlir.constant(4 : index) : i64
    %635 = llvm.mul %595, %634  : i64
    %636 = llvm.mlir.constant(2 : index) : i64
    %637 = llvm.mul %600, %636  : i64
    %638 = llvm.add %635, %637  : i64
    %639 = llvm.add %638, %605  : i64
    %640 = llvm.add %639, %610  : i64
    %641 = llvm.getelementptr %633[%640] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %632, %641 : !llvm.ptr<i1>
    %642 = llvm.add %610, %609  : i64
    llvm.br ^bb91(%642 : i64)
  ^bb93:  // pred: ^bb91
    %643 = llvm.add %605, %604  : i64
    llvm.br ^bb89(%643 : i64)
  ^bb94:  // pred: ^bb89
    %644 = llvm.add %600, %599  : i64
    llvm.br ^bb87(%644 : i64)
  ^bb95:  // pred: ^bb87
    %645 = llvm.add %595, %594  : i64
    llvm.br ^bb85(%645 : i64)
  ^bb96:  // pred: ^bb85
    %646 = llvm.mlir.constant(6 : index) : i64
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mlir.constant(2 : index) : i64
    %649 = llvm.mlir.constant(2 : index) : i64
    %650 = llvm.mlir.constant(1 : index) : i64
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.constant(8 : index) : i64
    %653 = llvm.mlir.constant(48 : index) : i64
    %654 = llvm.mlir.null : !llvm.ptr<i32>
    %655 = llvm.getelementptr %654[%653] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %656 = llvm.ptrtoint %655 : !llvm.ptr<i32> to i64
    %657 = llvm.mlir.constant(16 : index) : i64
    %658 = llvm.add %656, %657  : i64
    %659 = llvm.call @malloc(%658) : (i64) -> !llvm.ptr<i8>
    %660 = llvm.bitcast %659 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %661 = llvm.ptrtoint %660 : !llvm.ptr<i32> to i64
    %662 = llvm.mlir.constant(1 : index) : i64
    %663 = llvm.sub %657, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.urem %664, %657  : i64
    %666 = llvm.sub %664, %665  : i64
    %667 = llvm.inttoptr %666 : i64 to !llvm.ptr<i32>
    %668 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %669 = llvm.insertvalue %660, %668[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.insertvalue %667, %669[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.mlir.constant(0 : index) : i64
    %672 = llvm.insertvalue %671, %670[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %646, %672[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %647, %673[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %648, %674[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %649, %675[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %652, %676[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %651, %677[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.insertvalue %649, %678[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.insertvalue %650, %679[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.mlir.constant(0 : index) : i64
    %682 = llvm.mlir.constant(6 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%681 : i64)
  ^bb97(%684: i64):  // 2 preds: ^bb96, ^bb107
    %685 = llvm.icmp "slt" %684, %682 : i64
    llvm.cond_br %685, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(2 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%686 : i64)
  ^bb99(%689: i64):  // 2 preds: ^bb98, ^bb106
    %690 = llvm.icmp "slt" %689, %687 : i64
    llvm.cond_br %690, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %691 = llvm.mlir.constant(0 : index) : i64
    %692 = llvm.mlir.constant(2 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%691 : i64)
  ^bb101(%694: i64):  // 2 preds: ^bb100, ^bb105
    %695 = llvm.icmp "slt" %694, %692 : i64
    llvm.cond_br %695, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %696 = llvm.mlir.constant(0 : index) : i64
    %697 = llvm.mlir.constant(1 : index) : i64
    %698 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%696 : i64)
  ^bb103(%699: i64):  // 2 preds: ^bb102, ^bb104
    %700 = llvm.icmp "slt" %699, %697 : i64
    llvm.cond_br %700, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %701 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.mlir.constant(4 : index) : i64
    %703 = llvm.mul %684, %702  : i64
    %704 = llvm.mlir.constant(2 : index) : i64
    %705 = llvm.mul %689, %704  : i64
    %706 = llvm.add %703, %705  : i64
    %707 = llvm.add %706, %694  : i64
    %708 = llvm.add %707, %699  : i64
    %709 = llvm.getelementptr %701[%708] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %710 = llvm.load %709 : !llvm.ptr<i32>
    %711 = llvm.extractvalue %680[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %712 = llvm.mlir.constant(8 : index) : i64
    %713 = llvm.mul %684, %712  : i64
    %714 = llvm.mlir.constant(4 : index) : i64
    %715 = llvm.mul %689, %714  : i64
    %716 = llvm.add %713, %715  : i64
    %717 = llvm.mlir.constant(2 : index) : i64
    %718 = llvm.mul %694, %717  : i64
    %719 = llvm.add %716, %718  : i64
    %720 = llvm.add %719, %699  : i64
    %721 = llvm.getelementptr %711[%720] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %710, %721 : !llvm.ptr<i32>
    %722 = llvm.add %699, %698  : i64
    llvm.br ^bb103(%722 : i64)
  ^bb105:  // pred: ^bb103
    %723 = llvm.add %694, %693  : i64
    llvm.br ^bb101(%723 : i64)
  ^bb106:  // pred: ^bb101
    %724 = llvm.add %689, %688  : i64
    llvm.br ^bb99(%724 : i64)
  ^bb107:  // pred: ^bb99
    %725 = llvm.add %684, %683  : i64
    llvm.br ^bb97(%725 : i64)
  ^bb108:  // pred: ^bb97
    %726 = llvm.mlir.constant(0 : index) : i64
    %727 = llvm.mlir.constant(6 : index) : i64
    %728 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%726 : i64)
  ^bb109(%729: i64):  // 2 preds: ^bb108, ^bb119
    %730 = llvm.icmp "slt" %729, %727 : i64
    llvm.cond_br %730, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %731 = llvm.mlir.constant(0 : index) : i64
    %732 = llvm.mlir.constant(2 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%731 : i64)
  ^bb111(%734: i64):  // 2 preds: ^bb110, ^bb118
    %735 = llvm.icmp "slt" %734, %732 : i64
    llvm.cond_br %735, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %736 = llvm.mlir.constant(0 : index) : i64
    %737 = llvm.mlir.constant(2 : index) : i64
    %738 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%736 : i64)
  ^bb113(%739: i64):  // 2 preds: ^bb112, ^bb117
    %740 = llvm.icmp "slt" %739, %737 : i64
    llvm.cond_br %740, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %741 = llvm.mlir.constant(0 : index) : i64
    %742 = llvm.mlir.constant(1 : index) : i64
    %743 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%741 : i64)
  ^bb115(%744: i64):  // 2 preds: ^bb114, ^bb116
    %745 = llvm.icmp "slt" %744, %742 : i64
    llvm.cond_br %745, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %746 = llvm.mlir.constant(1 : index) : i64
    %747 = llvm.add %744, %746  : i64
    %748 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %749 = llvm.mlir.constant(4 : index) : i64
    %750 = llvm.mul %729, %749  : i64
    %751 = llvm.mlir.constant(2 : index) : i64
    %752 = llvm.mul %734, %751  : i64
    %753 = llvm.add %750, %752  : i64
    %754 = llvm.add %753, %739  : i64
    %755 = llvm.add %754, %744  : i64
    %756 = llvm.getelementptr %748[%755] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %757 = llvm.load %756 : !llvm.ptr<i32>
    %758 = llvm.extractvalue %680[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %759 = llvm.mlir.constant(8 : index) : i64
    %760 = llvm.mul %729, %759  : i64
    %761 = llvm.mlir.constant(4 : index) : i64
    %762 = llvm.mul %734, %761  : i64
    %763 = llvm.add %760, %762  : i64
    %764 = llvm.mlir.constant(2 : index) : i64
    %765 = llvm.mul %739, %764  : i64
    %766 = llvm.add %763, %765  : i64
    %767 = llvm.add %766, %747  : i64
    %768 = llvm.getelementptr %758[%767] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %757, %768 : !llvm.ptr<i32>
    %769 = llvm.add %744, %743  : i64
    llvm.br ^bb115(%769 : i64)
  ^bb117:  // pred: ^bb115
    %770 = llvm.add %739, %738  : i64
    llvm.br ^bb113(%770 : i64)
  ^bb118:  // pred: ^bb113
    %771 = llvm.add %734, %733  : i64
    llvm.br ^bb111(%771 : i64)
  ^bb119:  // pred: ^bb111
    %772 = llvm.add %729, %728  : i64
    llvm.br ^bb109(%772 : i64)
  ^bb120:  // pred: ^bb109
    %773 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %774 = llvm.insertvalue %591, %773[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %775 = llvm.insertvalue %680, %774[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %775 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v11_0", "v6_0", "v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.mlir.constant(16 : i64) : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(4 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %141[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %142[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(3 : i64) : i64
    %159 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %141[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %142[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(0 : i64) : i64
    %164 = llvm.getelementptr %132[%163] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %164 : !llvm.ptr<ptr<i8>>
    %165 = llvm.mlir.constant(4 : i64) : i64
    %166 = llvm.call @omTensorCreateUntyped(%165) : (i64) -> !llvm.ptr<i8>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.bitcast %168 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %170 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.bitcast %170 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%166, %167, %169, %171) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %172 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%166, %172) : (!llvm.ptr<i8>, i64) -> ()
    %173 = llvm.call @omTensorGetShape(%166) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %174 = llvm.call @omTensorGetStrides(%166) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %175 = llvm.mlir.constant(0 : i64) : i64
    %176 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %173[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %174[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(1 : i64) : i64
    %181 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %173[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %174[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(2 : i64) : i64
    %186 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %173[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %174[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(3 : i64) : i64
    %191 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %173[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %174[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(1 : i64) : i64
    %196 = llvm.getelementptr %132[%195] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %166, %196 : !llvm.ptr<ptr<i8>>
    %197 = llvm.call @omTensorListCreate(%132, %129, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %197 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<213 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<213 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


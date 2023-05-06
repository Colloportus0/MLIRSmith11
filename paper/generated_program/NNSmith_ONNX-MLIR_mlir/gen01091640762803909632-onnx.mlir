module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [6 , 2 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[[[[6, 5], [4, 3]], [[4, 6], [5, 3]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<[[[[4, 6], [6, 5]], [[3, 6], [7, 4]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<[[[6, 5], [4, 3]], [[4, 6], [5, 3]]]> : tensor<2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[6], [6]], [[5], [4]]]> : tensor<2x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v10_0", "v7_0", "v6_0"]} {
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
    %37 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<1 x i32>>>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<2 x array<2 x array<1 x i32>>>> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<2 x array<2 x i32>>>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<2 x array<2 x array<2 x i32>>>> to !llvm.ptr<i32>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.mlir.constant(4 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %76 = llvm.bitcast %75 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %77 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %78 = llvm.insertvalue %76, %77[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(8 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.insertvalue %86, %85[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(4 : index) : i64
    %89 = llvm.insertvalue %88, %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %99 = llvm.bitcast %98 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %101 = llvm.insertvalue %99, %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.insertvalue %105, %104[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(8 : index) : i64
    %108 = llvm.insertvalue %107, %106[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.insertvalue %109, %108[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.insertvalue %111, %110[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.insertvalue %113, %112[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.insertvalue %115, %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.insertvalue %117, %116[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.insertvalue %119, %118[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(2 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mlir.constant(8 : index) : i64
    %128 = llvm.mlir.constant(8 : index) : i64
    %129 = llvm.mlir.null : !llvm.ptr<i32>
    %130 = llvm.getelementptr %129[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i32> to i64
    %132 = llvm.mlir.constant(16 : index) : i64
    %133 = llvm.add %131, %132  : i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.bitcast %134 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i32> to i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.sub %132, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.urem %139, %132  : i64
    %141 = llvm.sub %139, %140  : i64
    %142 = llvm.inttoptr %141 : i64 to !llvm.ptr<i32>
    %143 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %144 = llvm.insertvalue %135, %143[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %127, %151[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %124, %153[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %125, %154[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%156 : i64)
  ^bb1(%159: i64):  // 2 preds: ^bb0, ^bb11
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%161 : i64)
  ^bb3(%164: i64):  // 2 preds: ^bb2, ^bb10
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%166 : i64)
  ^bb5(%169: i64):  // 2 preds: ^bb4, ^bb9
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%171 : i64)
  ^bb7(%174: i64):  // 2 preds: ^bb6, ^bb8
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %176 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.mlir.constant(8 : index) : i64
    %178 = llvm.mul %159, %177  : i64
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mul %164, %179  : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %169, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.add %184, %174  : i64
    %186 = llvm.getelementptr %176[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %187 = llvm.load %186 : !llvm.ptr<i32>
    %188 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mul %164, %189  : i64
    %191 = llvm.add %190, %169  : i64
    %192 = llvm.add %191, %36  : i64
    %193 = llvm.getelementptr %188[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.icmp "sgt" %187, %194 : i32
    %196 = llvm.select %195, %187, %194 : i1, i32
    %197 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.mlir.constant(8 : index) : i64
    %199 = llvm.mul %159, %198  : i64
    %200 = llvm.mlir.constant(4 : index) : i64
    %201 = llvm.mul %164, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mul %169, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %174  : i64
    %207 = llvm.getelementptr %197[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %196, %207 : !llvm.ptr<i32>
    %208 = llvm.add %174, %173  : i64
    llvm.br ^bb7(%208 : i64)
  ^bb9:  // pred: ^bb7
    %209 = llvm.add %169, %168  : i64
    llvm.br ^bb5(%209 : i64)
  ^bb10:  // pred: ^bb5
    %210 = llvm.add %164, %163  : i64
    llvm.br ^bb3(%210 : i64)
  ^bb11:  // pred: ^bb3
    %211 = llvm.add %159, %158  : i64
    llvm.br ^bb1(%211 : i64)
  ^bb12:  // pred: ^bb1
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mlir.constant(8 : index) : i64
    %219 = llvm.mlir.constant(16 : index) : i64
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
    %239 = llvm.insertvalue %212, %238[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %214, %240[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %215, %241[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %218, %242[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %217, %243[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %215, %244[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %216, %245[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
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
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%262 : i64)
  ^bb19(%265: i64):  // 2 preds: ^bb18, ^bb20
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %267 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(8 : index) : i64
    %269 = llvm.mul %250, %268  : i64
    %270 = llvm.mlir.constant(4 : index) : i64
    %271 = llvm.mul %255, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %260, %273  : i64
    %275 = llvm.add %272, %274  : i64
    %276 = llvm.add %275, %265  : i64
    %277 = llvm.getelementptr %267[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.load %277 : !llvm.ptr<i32>
    %279 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(8 : index) : i64
    %281 = llvm.mul %36, %280  : i64
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mul %255, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %260, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %265  : i64
    %289 = llvm.getelementptr %279[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.load %289 : !llvm.ptr<i32>
    %291 = llvm.icmp "sgt" %278, %290 : i32
    %292 = llvm.select %291, %278, %290 : i1, i32
    %293 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(8 : index) : i64
    %295 = llvm.mul %250, %294  : i64
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mul %255, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %260, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.add %301, %265  : i64
    %303 = llvm.getelementptr %293[%302] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %292, %303 : !llvm.ptr<i32>
    %304 = llvm.add %265, %264  : i64
    llvm.br ^bb19(%304 : i64)
  ^bb21:  // pred: ^bb19
    %305 = llvm.add %260, %259  : i64
    llvm.br ^bb17(%305 : i64)
  ^bb22:  // pred: ^bb17
    %306 = llvm.add %255, %254  : i64
    llvm.br ^bb15(%306 : i64)
  ^bb23:  // pred: ^bb15
    %307 = llvm.add %250, %249  : i64
    llvm.br ^bb13(%307 : i64)
  ^bb24:  // pred: ^bb13
    %308 = llvm.mlir.constant(6 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(4 : index) : i64
    %314 = llvm.mlir.constant(8 : index) : i64
    %315 = llvm.mlir.constant(48 : index) : i64
    %316 = llvm.mlir.null : !llvm.ptr<i32>
    %317 = llvm.getelementptr %316[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %318 = llvm.ptrtoint %317 : !llvm.ptr<i32> to i64
    %319 = llvm.mlir.constant(16 : index) : i64
    %320 = llvm.add %318, %319  : i64
    %321 = llvm.call @malloc(%320) : (i64) -> !llvm.ptr<i8>
    %322 = llvm.bitcast %321 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i32> to i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.sub %319, %324  : i64
    %326 = llvm.add %323, %325  : i64
    %327 = llvm.urem %326, %319  : i64
    %328 = llvm.sub %326, %327  : i64
    %329 = llvm.inttoptr %328 : i64 to !llvm.ptr<i32>
    %330 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %331 = llvm.insertvalue %322, %330[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %329, %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.insertvalue %333, %332[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %308, %334[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %309, %335[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %310, %336[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %311, %337[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %314, %338[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %311, %340[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %312, %341[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%343 : i64)
  ^bb25(%346: i64):  // 2 preds: ^bb24, ^bb35
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%348 : i64)
  ^bb27(%351: i64):  // 2 preds: ^bb26, ^bb34
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%353 : i64)
  ^bb29(%356: i64):  // 2 preds: ^bb28, ^bb33
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%358 : i64)
  ^bb31(%361: i64):  // 2 preds: ^bb30, ^bb32
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %363 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(8 : index) : i64
    %365 = llvm.mul %346, %364  : i64
    %366 = llvm.mlir.constant(4 : index) : i64
    %367 = llvm.mul %351, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mul %356, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.add %371, %361  : i64
    %373 = llvm.getelementptr %363[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %374 = llvm.load %373 : !llvm.ptr<i32>
    %375 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(8 : index) : i64
    %377 = llvm.mul %346, %376  : i64
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mul %351, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %356, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %361  : i64
    %385 = llvm.getelementptr %375[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %374, %385 : !llvm.ptr<i32>
    %386 = llvm.add %361, %360  : i64
    llvm.br ^bb31(%386 : i64)
  ^bb33:  // pred: ^bb31
    %387 = llvm.add %356, %355  : i64
    llvm.br ^bb29(%387 : i64)
  ^bb34:  // pred: ^bb29
    %388 = llvm.add %351, %350  : i64
    llvm.br ^bb27(%388 : i64)
  ^bb35:  // pred: ^bb27
    %389 = llvm.add %346, %345  : i64
    llvm.br ^bb25(%389 : i64)
  ^bb36:  // pred: ^bb25
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%390 : i64)
  ^bb37(%393: i64):  // 2 preds: ^bb36, ^bb47
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%395 : i64)
  ^bb39(%398: i64):  // 2 preds: ^bb38, ^bb46
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%400 : i64)
  ^bb41(%403: i64):  // 2 preds: ^bb40, ^bb45
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%405 : i64)
  ^bb43(%408: i64):  // 2 preds: ^bb42, ^bb44
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.add %393, %410  : i64
    %412 = llvm.extractvalue %120[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(8 : index) : i64
    %414 = llvm.mul %393, %413  : i64
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mul %398, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %403, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.add %420, %408  : i64
    %422 = llvm.getelementptr %412[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %423 = llvm.load %422 : !llvm.ptr<i32>
    %424 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(8 : index) : i64
    %426 = llvm.mul %411, %425  : i64
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mul %398, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %403, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.add %432, %408  : i64
    %434 = llvm.getelementptr %424[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %423, %434 : !llvm.ptr<i32>
    %435 = llvm.add %408, %407  : i64
    llvm.br ^bb43(%435 : i64)
  ^bb45:  // pred: ^bb43
    %436 = llvm.add %403, %402  : i64
    llvm.br ^bb41(%436 : i64)
  ^bb46:  // pred: ^bb41
    %437 = llvm.add %398, %397  : i64
    llvm.br ^bb39(%437 : i64)
  ^bb47:  // pred: ^bb39
    %438 = llvm.add %393, %392  : i64
    llvm.br ^bb37(%438 : i64)
  ^bb48:  // pred: ^bb37
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%439 : i64)
  ^bb49(%442: i64):  // 2 preds: ^bb48, ^bb59
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%444 : i64)
  ^bb51(%447: i64):  // 2 preds: ^bb50, ^bb58
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%449 : i64)
  ^bb53(%452: i64):  // 2 preds: ^bb52, ^bb57
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%454 : i64)
  ^bb55(%457: i64):  // 2 preds: ^bb54, ^bb56
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %459 = llvm.mlir.constant(3 : index) : i64
    %460 = llvm.add %442, %459  : i64
    %461 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.mlir.constant(8 : index) : i64
    %463 = llvm.mul %442, %462  : i64
    %464 = llvm.mlir.constant(4 : index) : i64
    %465 = llvm.mul %447, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %452, %467  : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.add %469, %457  : i64
    %471 = llvm.getelementptr %461[%470] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %472 = llvm.load %471 : !llvm.ptr<i32>
    %473 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.mlir.constant(8 : index) : i64
    %475 = llvm.mul %460, %474  : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %447, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %452, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.add %481, %457  : i64
    %483 = llvm.getelementptr %473[%482] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %472, %483 : !llvm.ptr<i32>
    %484 = llvm.add %457, %456  : i64
    llvm.br ^bb55(%484 : i64)
  ^bb57:  // pred: ^bb55
    %485 = llvm.add %452, %451  : i64
    llvm.br ^bb53(%485 : i64)
  ^bb58:  // pred: ^bb53
    %486 = llvm.add %447, %446  : i64
    llvm.br ^bb51(%486 : i64)
  ^bb59:  // pred: ^bb51
    %487 = llvm.add %442, %441  : i64
    llvm.br ^bb49(%487 : i64)
  ^bb60:  // pred: ^bb49
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%488 : i64)
  ^bb61(%491: i64):  // 2 preds: ^bb60, ^bb71
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%493 : i64)
  ^bb63(%496: i64):  // 2 preds: ^bb62, ^bb70
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%498 : i64)
  ^bb65(%501: i64):  // 2 preds: ^bb64, ^bb69
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%503 : i64)
  ^bb67(%506: i64):  // 2 preds: ^bb66, ^bb68
    %507 = llvm.icmp "slt" %506, %504 : i64
    llvm.cond_br %507, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.add %491, %508  : i64
    %510 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.mlir.constant(8 : index) : i64
    %512 = llvm.mul %491, %511  : i64
    %513 = llvm.mlir.constant(4 : index) : i64
    %514 = llvm.mul %496, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mul %501, %516  : i64
    %518 = llvm.add %515, %517  : i64
    %519 = llvm.add %518, %506  : i64
    %520 = llvm.getelementptr %510[%519] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %521 = llvm.load %520 : !llvm.ptr<i32>
    %522 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.mlir.constant(8 : index) : i64
    %524 = llvm.mul %509, %523  : i64
    %525 = llvm.mlir.constant(4 : index) : i64
    %526 = llvm.mul %496, %525  : i64
    %527 = llvm.add %524, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %501, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %506  : i64
    %532 = llvm.getelementptr %522[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %521, %532 : !llvm.ptr<i32>
    %533 = llvm.add %506, %505  : i64
    llvm.br ^bb67(%533 : i64)
  ^bb69:  // pred: ^bb67
    %534 = llvm.add %501, %500  : i64
    llvm.br ^bb65(%534 : i64)
  ^bb70:  // pred: ^bb65
    %535 = llvm.add %496, %495  : i64
    llvm.br ^bb63(%535 : i64)
  ^bb71:  // pred: ^bb63
    %536 = llvm.add %491, %490  : i64
    llvm.br ^bb61(%536 : i64)
  ^bb72:  // pred: ^bb61
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%537 : i64)
  ^bb73(%540: i64):  // 2 preds: ^bb72, ^bb83
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%542 : i64)
  ^bb75(%545: i64):  // 2 preds: ^bb74, ^bb82
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%547 : i64)
  ^bb77(%550: i64):  // 2 preds: ^bb76, ^bb81
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.mlir.constant(2 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%552 : i64)
  ^bb79(%555: i64):  // 2 preds: ^bb78, ^bb80
    %556 = llvm.icmp "slt" %555, %553 : i64
    llvm.cond_br %556, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %557 = llvm.mlir.constant(5 : index) : i64
    %558 = llvm.add %540, %557  : i64
    %559 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.mlir.constant(8 : index) : i64
    %561 = llvm.mul %540, %560  : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mul %545, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.mlir.constant(2 : index) : i64
    %566 = llvm.mul %550, %565  : i64
    %567 = llvm.add %564, %566  : i64
    %568 = llvm.add %567, %555  : i64
    %569 = llvm.getelementptr %559[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %570 = llvm.load %569 : !llvm.ptr<i32>
    %571 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(8 : index) : i64
    %573 = llvm.mul %558, %572  : i64
    %574 = llvm.mlir.constant(4 : index) : i64
    %575 = llvm.mul %545, %574  : i64
    %576 = llvm.add %573, %575  : i64
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mul %550, %577  : i64
    %579 = llvm.add %576, %578  : i64
    %580 = llvm.add %579, %555  : i64
    %581 = llvm.getelementptr %571[%580] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %570, %581 : !llvm.ptr<i32>
    %582 = llvm.add %555, %554  : i64
    llvm.br ^bb79(%582 : i64)
  ^bb81:  // pred: ^bb79
    %583 = llvm.add %550, %549  : i64
    llvm.br ^bb77(%583 : i64)
  ^bb82:  // pred: ^bb77
    %584 = llvm.add %545, %544  : i64
    llvm.br ^bb75(%584 : i64)
  ^bb83:  // pred: ^bb75
    %585 = llvm.add %540, %539  : i64
    llvm.br ^bb73(%585 : i64)
  ^bb84:  // pred: ^bb73
    %586 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %587 = llvm.insertvalue %74, %586[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %588 = llvm.insertvalue %246, %587[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %589 = llvm.insertvalue %342, %588[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %589 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v10_0", "v7_0", "v6_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.extractvalue %126[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.mlir.constant(24 : i64) : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(3 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(0 : i64) : i64
    %137 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.getelementptr %142[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.getelementptr %143[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(2 : i64) : i64
    %155 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.getelementptr %142[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.getelementptr %143[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(0 : i64) : i64
    %160 = llvm.getelementptr %133[%159] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %160 : !llvm.ptr<ptr<i8>>
    %161 = llvm.mlir.constant(4 : i64) : i64
    %162 = llvm.call @omTensorCreateUntyped(%161) : (i64) -> !llvm.ptr<i8>
    %163 = llvm.mlir.constant(1 : i64) : i64
    %164 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.bitcast %164 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %166 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.bitcast %166 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%162, %163, %165, %167) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %168 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%162, %168) : (!llvm.ptr<i8>, i64) -> ()
    %169 = llvm.call @omTensorGetShape(%162) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %170 = llvm.call @omTensorGetStrides(%162) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %171 = llvm.mlir.constant(0 : i64) : i64
    %172 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.getelementptr %169[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.getelementptr %170[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %174, %175 : !llvm.ptr<i64>
    %176 = llvm.mlir.constant(1 : i64) : i64
    %177 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %169[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %170[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.mlir.constant(2 : i64) : i64
    %182 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %169[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %170[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.mlir.constant(3 : i64) : i64
    %187 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %169[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %170[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.mlir.constant(1 : i64) : i64
    %192 = llvm.getelementptr %133[%191] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %162, %192 : !llvm.ptr<ptr<i8>>
    %193 = llvm.mlir.constant(4 : i64) : i64
    %194 = llvm.call @omTensorCreateUntyped(%193) : (i64) -> !llvm.ptr<i8>
    %195 = llvm.mlir.constant(1 : i64) : i64
    %196 = llvm.extractvalue %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.bitcast %196 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %198 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.bitcast %198 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%194, %195, %197, %199) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %200 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%194, %200) : (!llvm.ptr<i8>, i64) -> ()
    %201 = llvm.call @omTensorGetShape(%194) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %202 = llvm.call @omTensorGetStrides(%194) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %203 = llvm.mlir.constant(0 : i64) : i64
    %204 = llvm.extractvalue %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %201[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %205 : !llvm.ptr<i64>
    %206 = llvm.extractvalue %129[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.getelementptr %202[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %207 : !llvm.ptr<i64>
    %208 = llvm.mlir.constant(1 : i64) : i64
    %209 = llvm.extractvalue %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %201[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.extractvalue %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.getelementptr %202[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %211, %212 : !llvm.ptr<i64>
    %213 = llvm.mlir.constant(2 : i64) : i64
    %214 = llvm.extractvalue %129[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %201[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.extractvalue %129[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.getelementptr %202[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %216, %217 : !llvm.ptr<i64>
    %218 = llvm.mlir.constant(3 : i64) : i64
    %219 = llvm.extractvalue %129[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %201[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.extractvalue %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.getelementptr %202[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %221, %222 : !llvm.ptr<i64>
    %223 = llvm.mlir.constant(2 : i64) : i64
    %224 = llvm.getelementptr %133[%223] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %194, %224 : !llvm.ptr<ptr<i8>>
    %225 = llvm.call @omTensorListCreate(%133, %130, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %225 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<208 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<208 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


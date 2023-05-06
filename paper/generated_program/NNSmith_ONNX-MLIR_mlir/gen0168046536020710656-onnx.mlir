module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 4 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[[[[6, 4], [7, 4]], [[5, 5], [6, 6]], [[5, 6], [3, 6]], [[7, 5], [6, 5]]], [[[6, 6], [7, 7]], [[5, 3], [3, 6]], [[4, 6], [5, 5]], [[4, 6], [5, 5]]]]> : tensor<2x4x2x2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<4 x array<2 x array<2 x i64>>>>
  llvm.mlir.global internal constant @constant_2(dense<4> : tensor<1x2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x i64>>
  llvm.mlir.global internal constant @constant_1(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v11_0", "v3_0", "v5_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x i64>>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<1 x array<2 x i64>>> to !llvm.ptr<i64>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.insertvalue %88, %87[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<2 x array<4 x array<2 x array<2 x i64>>>>>
    %93 = llvm.bitcast %92 : !llvm.ptr<array<2 x array<4 x array<2 x array<2 x i64>>>>> to !llvm.ptr<i64>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %95 = llvm.insertvalue %93, %94[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.insertvalue %99, %98[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(16 : index) : i64
    %102 = llvm.insertvalue %101, %100[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = llvm.insertvalue %103, %102[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(4 : index) : i64
    %106 = llvm.insertvalue %105, %104[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.insertvalue %107, %106[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.insertvalue %109, %108[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.insertvalue %111, %110[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.insertvalue %113, %112[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.mlir.null : !llvm.ptr<i32>
    %122 = llvm.getelementptr %121[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i32> to i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i32> to i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.sub %124, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.urem %131, %124  : i64
    %133 = llvm.sub %131, %132  : i64
    %134 = llvm.inttoptr %133 : i64 to !llvm.ptr<i32>
    %135 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %136 = llvm.insertvalue %127, %135[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %115, %139[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %116, %140[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %117, %141[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %118, %142[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %116, %143[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %117, %144[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %118, %145[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %119, %146[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%148 : i64)
  ^bb1(%151: i64):  // 2 preds: ^bb0, ^bb11
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%153 : i64)
  ^bb3(%156: i64):  // 2 preds: ^bb2, ^bb10
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%158 : i64)
  ^bb5(%161: i64):  // 2 preds: ^bb4, ^bb9
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%163 : i64)
  ^bb7(%166: i64):  // 2 preds: ^bb6, ^bb8
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %168 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %151, %156  : i64
    %170 = llvm.add %169, %161  : i64
    %171 = llvm.add %170, %166  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.load %172 : !llvm.ptr<i32>
    %174 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mul %151, %175  : i64
    %177 = llvm.add %176, %156  : i64
    %178 = llvm.add %177, %161  : i64
    %179 = llvm.add %178, %166  : i64
    %180 = llvm.getelementptr %174[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %180 : !llvm.ptr<i32>
    %181 = llvm.add %166, %165  : i64
    llvm.br ^bb7(%181 : i64)
  ^bb9:  // pred: ^bb7
    %182 = llvm.add %161, %160  : i64
    llvm.br ^bb5(%182 : i64)
  ^bb10:  // pred: ^bb5
    %183 = llvm.add %156, %155  : i64
    llvm.br ^bb3(%183 : i64)
  ^bb11:  // pred: ^bb3
    %184 = llvm.add %151, %150  : i64
    llvm.br ^bb1(%184 : i64)
  ^bb12:  // pred: ^bb1
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%185 : i64)
  ^bb13(%188: i64):  // 2 preds: ^bb12, ^bb23
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%190 : i64)
  ^bb15(%193: i64):  // 2 preds: ^bb14, ^bb22
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%195 : i64)
  ^bb17(%198: i64):  // 2 preds: ^bb16, ^bb21
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%200 : i64)
  ^bb19(%203: i64):  // 2 preds: ^bb18, ^bb20
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.add %193, %205  : i64
    %207 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.add %188, %193  : i64
    %209 = llvm.add %208, %198  : i64
    %210 = llvm.add %209, %203  : i64
    %211 = llvm.getelementptr %207[%210] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %212 = llvm.load %211 : !llvm.ptr<i32>
    %213 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mul %188, %214  : i64
    %216 = llvm.add %215, %206  : i64
    %217 = llvm.add %216, %198  : i64
    %218 = llvm.add %217, %203  : i64
    %219 = llvm.getelementptr %213[%218] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %212, %219 : !llvm.ptr<i32>
    %220 = llvm.add %203, %202  : i64
    llvm.br ^bb19(%220 : i64)
  ^bb21:  // pred: ^bb19
    %221 = llvm.add %198, %197  : i64
    llvm.br ^bb17(%221 : i64)
  ^bb22:  // pred: ^bb17
    %222 = llvm.add %193, %192  : i64
    llvm.br ^bb15(%222 : i64)
  ^bb23:  // pred: ^bb15
    %223 = llvm.add %188, %187  : i64
    llvm.br ^bb13(%223 : i64)
  ^bb24:  // pred: ^bb13
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%224 : i64)
  ^bb25(%227: i64):  // 2 preds: ^bb24, ^bb35
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%229 : i64)
  ^bb27(%232: i64):  // 2 preds: ^bb26, ^bb34
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%234 : i64)
  ^bb29(%237: i64):  // 2 preds: ^bb28, ^bb33
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%239 : i64)
  ^bb31(%242: i64):  // 2 preds: ^bb30, ^bb32
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.add %232, %244  : i64
    %246 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.add %227, %232  : i64
    %248 = llvm.add %247, %237  : i64
    %249 = llvm.add %248, %242  : i64
    %250 = llvm.getelementptr %246[%249] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %251 = llvm.load %250 : !llvm.ptr<i32>
    %252 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mul %227, %253  : i64
    %255 = llvm.add %254, %245  : i64
    %256 = llvm.add %255, %237  : i64
    %257 = llvm.add %256, %242  : i64
    %258 = llvm.getelementptr %252[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %251, %258 : !llvm.ptr<i32>
    %259 = llvm.add %242, %241  : i64
    llvm.br ^bb31(%259 : i64)
  ^bb33:  // pred: ^bb31
    %260 = llvm.add %237, %236  : i64
    llvm.br ^bb29(%260 : i64)
  ^bb34:  // pred: ^bb29
    %261 = llvm.add %232, %231  : i64
    llvm.br ^bb27(%261 : i64)
  ^bb35:  // pred: ^bb27
    %262 = llvm.add %227, %226  : i64
    llvm.br ^bb25(%262 : i64)
  ^bb36:  // pred: ^bb25
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%263 : i64)
  ^bb37(%266: i64):  // 2 preds: ^bb36, ^bb47
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%268 : i64)
  ^bb39(%271: i64):  // 2 preds: ^bb38, ^bb46
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%273 : i64)
  ^bb41(%276: i64):  // 2 preds: ^bb40, ^bb45
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%278 : i64)
  ^bb43(%281: i64):  // 2 preds: ^bb42, ^bb44
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %283 = llvm.mlir.constant(3 : index) : i64
    %284 = llvm.add %271, %283  : i64
    %285 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.add %266, %271  : i64
    %287 = llvm.add %286, %276  : i64
    %288 = llvm.add %287, %281  : i64
    %289 = llvm.getelementptr %285[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.load %289 : !llvm.ptr<i32>
    %291 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mul %266, %292  : i64
    %294 = llvm.add %293, %284  : i64
    %295 = llvm.add %294, %276  : i64
    %296 = llvm.add %295, %281  : i64
    %297 = llvm.getelementptr %291[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %290, %297 : !llvm.ptr<i32>
    %298 = llvm.add %281, %280  : i64
    llvm.br ^bb43(%298 : i64)
  ^bb45:  // pred: ^bb43
    %299 = llvm.add %276, %275  : i64
    llvm.br ^bb41(%299 : i64)
  ^bb46:  // pred: ^bb41
    %300 = llvm.add %271, %270  : i64
    llvm.br ^bb39(%300 : i64)
  ^bb47:  // pred: ^bb39
    %301 = llvm.add %266, %265  : i64
    llvm.br ^bb37(%301 : i64)
  ^bb48:  // pred: ^bb37
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(4 : index) : i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.mlir.constant(32 : index) : i64
    %310 = llvm.mlir.null : !llvm.ptr<i1>
    %311 = llvm.getelementptr %310[%309] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i1> to i64
    %313 = llvm.mlir.constant(16 : index) : i64
    %314 = llvm.add %312, %313  : i64
    %315 = llvm.call @malloc(%314) : (i64) -> !llvm.ptr<i8>
    %316 = llvm.bitcast %315 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %317 = llvm.ptrtoint %316 : !llvm.ptr<i1> to i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.sub %313, %318  : i64
    %320 = llvm.add %317, %319  : i64
    %321 = llvm.urem %320, %313  : i64
    %322 = llvm.sub %320, %321  : i64
    %323 = llvm.inttoptr %322 : i64 to !llvm.ptr<i1>
    %324 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %325 = llvm.insertvalue %316, %324[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %323, %325[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.insertvalue %327, %326[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %302, %328[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %303, %329[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %304, %330[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %305, %331[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %308, %332[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %307, %333[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %305, %334[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %306, %335[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%337 : i64)
  ^bb49(%340: i64):  // 2 preds: ^bb48, ^bb59
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%342 : i64)
  ^bb51(%345: i64):  // 2 preds: ^bb50, ^bb58
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%347 : i64)
  ^bb53(%350: i64):  // 2 preds: ^bb52, ^bb57
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%352 : i64)
  ^bb55(%355: i64):  // 2 preds: ^bb54, ^bb56
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %357 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mlir.constant(16 : index) : i64
    %359 = llvm.mul %340, %358  : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mul %345, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %350, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.add %365, %355  : i64
    %367 = llvm.getelementptr %357[%366] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %368 = llvm.load %367 : !llvm.ptr<i64>
    %369 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %30, %370  : i64
    %372 = llvm.add %371, %355  : i64
    %373 = llvm.getelementptr %369[%372] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %374 = llvm.load %373 : !llvm.ptr<i64>
    %375 = llvm.icmp "slt" %368, %374 : i64
    %376 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(16 : index) : i64
    %378 = llvm.mul %340, %377  : i64
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mul %345, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %350, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.add %384, %355  : i64
    %386 = llvm.getelementptr %376[%385] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %375, %386 : !llvm.ptr<i1>
    %387 = llvm.add %355, %354  : i64
    llvm.br ^bb55(%387 : i64)
  ^bb57:  // pred: ^bb55
    %388 = llvm.add %350, %349  : i64
    llvm.br ^bb53(%388 : i64)
  ^bb58:  // pred: ^bb53
    %389 = llvm.add %345, %344  : i64
    llvm.br ^bb51(%389 : i64)
  ^bb59:  // pred: ^bb51
    %390 = llvm.add %340, %339  : i64
    llvm.br ^bb49(%390 : i64)
  ^bb60:  // pred: ^bb49
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.mlir.constant(16 : index) : i64
    %398 = llvm.mlir.constant(32 : index) : i64
    %399 = llvm.mlir.null : !llvm.ptr<i32>
    %400 = llvm.getelementptr %399[%398] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.ptrtoint %400 : !llvm.ptr<i32> to i64
    %402 = llvm.mlir.constant(16 : index) : i64
    %403 = llvm.add %401, %402  : i64
    %404 = llvm.call @malloc(%403) : (i64) -> !llvm.ptr<i8>
    %405 = llvm.bitcast %404 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %406 = llvm.ptrtoint %405 : !llvm.ptr<i32> to i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.sub %402, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.urem %409, %402  : i64
    %411 = llvm.sub %409, %410  : i64
    %412 = llvm.inttoptr %411 : i64 to !llvm.ptr<i32>
    %413 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %414 = llvm.insertvalue %405, %413[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %412, %414[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.insertvalue %416, %415[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %391, %417[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %392, %418[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %397, %421[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %396, %422[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %394, %423[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %395, %424[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%426 : i64)
  ^bb61(%429: i64):  // 2 preds: ^bb60, ^bb71
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%431 : i64)
  ^bb63(%434: i64):  // 2 preds: ^bb62, ^bb70
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(2 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%436 : i64)
  ^bb65(%439: i64):  // 2 preds: ^bb64, ^bb69
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%441 : i64)
  ^bb67(%444: i64):  // 2 preds: ^bb66, ^bb68
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %446 = llvm.extractvalue %336[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(16 : index) : i64
    %448 = llvm.mul %429, %447  : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mul %434, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.mlir.constant(2 : index) : i64
    %453 = llvm.mul %439, %452  : i64
    %454 = llvm.add %451, %453  : i64
    %455 = llvm.add %454, %444  : i64
    %456 = llvm.getelementptr %446[%455] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %457 = llvm.load %456 : !llvm.ptr<i1>
    %458 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(4 : index) : i64
    %460 = llvm.mul %30, %459  : i64
    %461 = llvm.add %460, %434  : i64
    %462 = llvm.add %461, %30  : i64
    %463 = llvm.add %462, %30  : i64
    %464 = llvm.getelementptr %458[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.load %464 : !llvm.ptr<i32>
    %466 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.getelementptr %466[%30] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %468 = llvm.load %467 : !llvm.ptr<i32>
    %469 = llvm.select %457, %465, %468 : i1, i32
    %470 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(16 : index) : i64
    %472 = llvm.mul %429, %471  : i64
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mul %434, %473  : i64
    %475 = llvm.add %472, %474  : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mul %439, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.add %478, %444  : i64
    %480 = llvm.getelementptr %470[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %469, %480 : !llvm.ptr<i32>
    %481 = llvm.add %444, %443  : i64
    llvm.br ^bb67(%481 : i64)
  ^bb69:  // pred: ^bb67
    %482 = llvm.add %439, %438  : i64
    llvm.br ^bb65(%482 : i64)
  ^bb70:  // pred: ^bb65
    %483 = llvm.add %434, %433  : i64
    llvm.br ^bb63(%483 : i64)
  ^bb71:  // pred: ^bb63
    %484 = llvm.add %429, %428  : i64
    llvm.br ^bb61(%484 : i64)
  ^bb72:  // pred: ^bb61
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mlir.constant(16 : index) : i64
    %492 = llvm.mlir.constant(32 : index) : i64
    %493 = llvm.mlir.null : !llvm.ptr<i32>
    %494 = llvm.getelementptr %493[%492] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %495 = llvm.ptrtoint %494 : !llvm.ptr<i32> to i64
    %496 = llvm.mlir.constant(16 : index) : i64
    %497 = llvm.add %495, %496  : i64
    %498 = llvm.call @malloc(%497) : (i64) -> !llvm.ptr<i8>
    %499 = llvm.bitcast %498 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %500 = llvm.ptrtoint %499 : !llvm.ptr<i32> to i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.sub %496, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.urem %503, %496  : i64
    %505 = llvm.sub %503, %504  : i64
    %506 = llvm.inttoptr %505 : i64 to !llvm.ptr<i32>
    %507 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %508 = llvm.insertvalue %499, %507[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %506, %508[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.insertvalue %510, %509[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %485, %511[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %486, %512[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %487, %513[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %488, %514[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %491, %515[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %490, %516[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %488, %517[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %489, %518[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%520 : i64)
  ^bb73(%523: i64):  // 2 preds: ^bb72, ^bb83
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(4 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%525 : i64)
  ^bb75(%528: i64):  // 2 preds: ^bb74, ^bb82
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%530 : i64)
  ^bb77(%533: i64):  // 2 preds: ^bb76, ^bb81
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%535 : i64)
  ^bb79(%538: i64):  // 2 preds: ^bb78, ^bb80
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %540 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.mlir.constant(16 : index) : i64
    %542 = llvm.mul %523, %541  : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mul %528, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.mlir.constant(2 : index) : i64
    %547 = llvm.mul %533, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.add %548, %538  : i64
    %550 = llvm.getelementptr %540[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %551 = llvm.load %550 : !llvm.ptr<i32>
    %552 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.mlir.constant(16 : index) : i64
    %554 = llvm.mul %523, %553  : i64
    %555 = llvm.mlir.constant(4 : index) : i64
    %556 = llvm.mul %528, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.mlir.constant(2 : index) : i64
    %559 = llvm.mul %533, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.add %560, %538  : i64
    %562 = llvm.getelementptr %552[%561] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %563 = llvm.load %562 : !llvm.ptr<i32>
    %564 = llvm.icmp "sgt" %551, %563 : i32
    %565 = llvm.select %564, %551, %563 : i1, i32
    %566 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(16 : index) : i64
    %568 = llvm.mul %523, %567  : i64
    %569 = llvm.mlir.constant(4 : index) : i64
    %570 = llvm.mul %528, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mul %533, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.add %574, %538  : i64
    %576 = llvm.getelementptr %566[%575] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %565, %576 : !llvm.ptr<i32>
    %577 = llvm.add %538, %537  : i64
    llvm.br ^bb79(%577 : i64)
  ^bb81:  // pred: ^bb79
    %578 = llvm.add %533, %532  : i64
    llvm.br ^bb77(%578 : i64)
  ^bb82:  // pred: ^bb77
    %579 = llvm.add %528, %527  : i64
    llvm.br ^bb75(%579 : i64)
  ^bb83:  // pred: ^bb75
    %580 = llvm.add %523, %522  : i64
    llvm.br ^bb73(%580 : i64)
  ^bb84:  // pred: ^bb73
    %581 = llvm.mlir.constant(2 : index) : i64
    %582 = llvm.mlir.constant(4 : index) : i64
    %583 = llvm.mlir.constant(2 : index) : i64
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mlir.constant(16 : index) : i64
    %588 = llvm.mlir.constant(32 : index) : i64
    %589 = llvm.mlir.null : !llvm.ptr<i1>
    %590 = llvm.getelementptr %589[%588] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %591 = llvm.ptrtoint %590 : !llvm.ptr<i1> to i64
    %592 = llvm.mlir.constant(16 : index) : i64
    %593 = llvm.add %591, %592  : i64
    %594 = llvm.call @malloc(%593) : (i64) -> !llvm.ptr<i8>
    %595 = llvm.bitcast %594 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %596 = llvm.ptrtoint %595 : !llvm.ptr<i1> to i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.sub %592, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.urem %599, %592  : i64
    %601 = llvm.sub %599, %600  : i64
    %602 = llvm.inttoptr %601 : i64 to !llvm.ptr<i1>
    %603 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %604 = llvm.insertvalue %595, %603[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.insertvalue %602, %604[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.insertvalue %606, %605[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %581, %607[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %582, %608[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %583, %609[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %584, %610[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %587, %611[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %586, %612[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %584, %613[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %585, %614[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(2 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%616 : i64)
  ^bb85(%619: i64):  // 2 preds: ^bb84, ^bb95
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %621 = llvm.mlir.constant(0 : index) : i64
    %622 = llvm.mlir.constant(4 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%621 : i64)
  ^bb87(%624: i64):  // 2 preds: ^bb86, ^bb94
    %625 = llvm.icmp "slt" %624, %622 : i64
    llvm.cond_br %625, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %626 = llvm.mlir.constant(0 : index) : i64
    %627 = llvm.mlir.constant(2 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%626 : i64)
  ^bb89(%629: i64):  // 2 preds: ^bb88, ^bb93
    %630 = llvm.icmp "slt" %629, %627 : i64
    llvm.cond_br %630, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.mlir.constant(2 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%631 : i64)
  ^bb91(%634: i64):  // 2 preds: ^bb90, ^bb92
    %635 = llvm.icmp "slt" %634, %632 : i64
    llvm.cond_br %635, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %636 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.mlir.constant(16 : index) : i64
    %638 = llvm.mul %619, %637  : i64
    %639 = llvm.mlir.constant(4 : index) : i64
    %640 = llvm.mul %624, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.mlir.constant(2 : index) : i64
    %643 = llvm.mul %629, %642  : i64
    %644 = llvm.add %641, %643  : i64
    %645 = llvm.add %644, %634  : i64
    %646 = llvm.getelementptr %636[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %647 = llvm.load %646 : !llvm.ptr<i32>
    %648 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.mlir.constant(16 : index) : i64
    %650 = llvm.mul %619, %649  : i64
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mul %624, %651  : i64
    %653 = llvm.add %650, %652  : i64
    %654 = llvm.mlir.constant(2 : index) : i64
    %655 = llvm.mul %629, %654  : i64
    %656 = llvm.add %653, %655  : i64
    %657 = llvm.add %656, %634  : i64
    %658 = llvm.getelementptr %648[%657] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %659 = llvm.load %658 : !llvm.ptr<i32>
    %660 = llvm.icmp "eq" %647, %659 : i32
    %661 = llvm.extractvalue %615[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.mlir.constant(16 : index) : i64
    %663 = llvm.mul %619, %662  : i64
    %664 = llvm.mlir.constant(4 : index) : i64
    %665 = llvm.mul %624, %664  : i64
    %666 = llvm.add %663, %665  : i64
    %667 = llvm.mlir.constant(2 : index) : i64
    %668 = llvm.mul %629, %667  : i64
    %669 = llvm.add %666, %668  : i64
    %670 = llvm.add %669, %634  : i64
    %671 = llvm.getelementptr %661[%670] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %660, %671 : !llvm.ptr<i1>
    %672 = llvm.add %634, %633  : i64
    llvm.br ^bb91(%672 : i64)
  ^bb93:  // pred: ^bb91
    %673 = llvm.add %629, %628  : i64
    llvm.br ^bb89(%673 : i64)
  ^bb94:  // pred: ^bb89
    %674 = llvm.add %624, %623  : i64
    llvm.br ^bb87(%674 : i64)
  ^bb95:  // pred: ^bb87
    %675 = llvm.add %619, %618  : i64
    llvm.br ^bb85(%675 : i64)
  ^bb96:  // pred: ^bb85
    llvm.return %615 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v11_0", "v3_0", "v5_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %30, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %104, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %105 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.mlir.constant(8 : i64) : i64
    %108 = llvm.call @malloc(%107) : (i64) -> !llvm.ptr<i8>
    %109 = llvm.bitcast %108 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %110 = llvm.mlir.constant(4 : i64) : i64
    %111 = llvm.call @omTensorCreateUntyped(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.extractvalue %105[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.bitcast %113 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %115 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%111, %112, %114, %116) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %117 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%111, %117) : (!llvm.ptr<i8>, i64) -> ()
    %118 = llvm.call @omTensorGetShape(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.call @omTensorGetStrides(%111) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.extractvalue %105[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %118[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %105[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %119[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %105[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %118[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %105[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %119[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(2 : i64) : i64
    %131 = llvm.extractvalue %105[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %118[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %105[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %119[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(3 : i64) : i64
    %136 = llvm.extractvalue %105[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %118[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %105[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %119[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(0 : i64) : i64
    %141 = llvm.getelementptr %109[%140] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %111, %141 : !llvm.ptr<ptr<i8>>
    %142 = llvm.call @omTensorListCreate(%109, %106, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %142 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<201 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<201 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


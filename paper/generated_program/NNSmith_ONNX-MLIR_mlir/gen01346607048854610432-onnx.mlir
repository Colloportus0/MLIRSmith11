module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_9(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_8(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v8_0", "v0_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %67 = llvm.bitcast %66 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.insertvalue %67, %68[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(4 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x i64>>
    %89 = llvm.bitcast %88 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %91 = llvm.insertvalue %89, %90[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %95 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
    %96 = llvm.bitcast %95 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(4 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %107 = llvm.bitcast %106 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %108 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.insertvalue %113, %112[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.insertvalue %115, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.insertvalue %117, %116[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.insertvalue %119, %118[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.insertvalue %121, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.insertvalue %123, %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.insertvalue %125, %124[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.insertvalue %127, %126[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(4 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.null : !llvm.ptr<i64>
    %132 = llvm.getelementptr %131[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<i64> to i64
    %134 = llvm.mlir.constant(16 : index) : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.call @malloc(%135) : (i64) -> !llvm.ptr<i8>
    %137 = llvm.bitcast %136 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i64> to i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.sub %134, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.urem %141, %134  : i64
    %143 = llvm.sub %141, %142  : i64
    %144 = llvm.inttoptr %143 : i64 to !llvm.ptr<i64>
    %145 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %146 = llvm.insertvalue %137, %145[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %144, %146[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.insertvalue %148, %147[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.insertvalue %129, %149[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %130, %150[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(4 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%152 : i64)
  ^bb1(%155: i64):  // 2 preds: ^bb0, ^bb2
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %157 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.getelementptr %157[%155] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %158 : !llvm.ptr<i64>
    %159 = llvm.add %155, %154  : i64
    llvm.br ^bb1(%159 : i64)
  ^bb3:  // pred: ^bb1
    %160 = llvm.mlir.constant(4 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.null : !llvm.ptr<i64>
    %163 = llvm.getelementptr %162[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.ptrtoint %163 : !llvm.ptr<i64> to i64
    %165 = llvm.mlir.constant(16 : index) : i64
    %166 = llvm.add %164, %165  : i64
    %167 = llvm.call @malloc(%166) : (i64) -> !llvm.ptr<i8>
    %168 = llvm.bitcast %167 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<i64> to i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.sub %165, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.urem %172, %165  : i64
    %174 = llvm.sub %172, %173  : i64
    %175 = llvm.inttoptr %174 : i64 to !llvm.ptr<i64>
    %176 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %177 = llvm.insertvalue %168, %176[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.insertvalue %175, %177[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.insertvalue %179, %178[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %160, %180[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.insertvalue %161, %181[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.mlir.constant(4 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%183 : i64)
  ^bb4(%186: i64):  // 2 preds: ^bb3, ^bb5
    %187 = llvm.icmp "slt" %186, %184 : i64
    llvm.cond_br %187, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %188 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.getelementptr %188[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %190 = llvm.load %189 : !llvm.ptr<i64>
    %191 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.mul %190, %192  : i64
    %194 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.getelementptr %194[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %195 : !llvm.ptr<i64>
    %196 = llvm.add %186, %185  : i64
    llvm.br ^bb4(%196 : i64)
  ^bb6:  // pred: ^bb4
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.null : !llvm.ptr<i1>
    %200 = llvm.getelementptr %199[%197] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i1> to i64
    %202 = llvm.mlir.constant(16 : index) : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i1> to i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.sub %202, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.urem %209, %202  : i64
    %211 = llvm.sub %209, %210  : i64
    %212 = llvm.inttoptr %211 : i64 to !llvm.ptr<i1>
    %213 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %214 = llvm.insertvalue %205, %213[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %197, %217[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %198, %218[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%220 : i64)
  ^bb7(%223: i64):  // 2 preds: ^bb6, ^bb8
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %225 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.getelementptr %225[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %227 = llvm.load %226 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %182[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %228[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %230 = llvm.load %229 : !llvm.ptr<i64>
    %231 = llvm.icmp "eq" %227, %230 : i64
    %232 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.getelementptr %232[%223] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %231, %233 : !llvm.ptr<i1>
    %234 = llvm.add %223, %222  : i64
    llvm.br ^bb7(%234 : i64)
  ^bb9:  // pred: ^bb7
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.null : !llvm.ptr<i64>
    %238 = llvm.getelementptr %237[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i64> to i64
    %240 = llvm.mlir.constant(16 : index) : i64
    %241 = llvm.add %239, %240  : i64
    %242 = llvm.call @malloc(%241) : (i64) -> !llvm.ptr<i8>
    %243 = llvm.bitcast %242 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %244 = llvm.ptrtoint %243 : !llvm.ptr<i64> to i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.sub %240, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.urem %247, %240  : i64
    %249 = llvm.sub %247, %248  : i64
    %250 = llvm.inttoptr %249 : i64 to !llvm.ptr<i64>
    %251 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %252 = llvm.insertvalue %243, %251[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %250, %252[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.insertvalue %254, %253[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %235, %255[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %236, %256[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%258 : i64)
  ^bb10(%261: i64):  // 2 preds: ^bb9, ^bb11
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %263 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%261] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %265 = llvm.load %264 : !llvm.ptr<i1>
    %266 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.load %267 : !llvm.ptr<i64>
    %269 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %271 = llvm.load %270 : !llvm.ptr<i64>
    %272 = llvm.select %265, %268, %271 : i1, i64
    %273 = llvm.extractvalue %257[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %274 = llvm.getelementptr %273[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %272, %274 : !llvm.ptr<i64>
    %275 = llvm.add %261, %260  : i64
    llvm.br ^bb10(%275 : i64)
  ^bb12:  // pred: ^bb10
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.null : !llvm.ptr<i32>
    %282 = llvm.getelementptr %281[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i32> to i64
    %284 = llvm.mlir.constant(16 : index) : i64
    %285 = llvm.add %283, %284  : i64
    %286 = llvm.call @malloc(%285) : (i64) -> !llvm.ptr<i8>
    %287 = llvm.bitcast %286 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i32> to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %284, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %284  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr<i32>
    %295 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %276, %299[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %277, %300[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %278, %301[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %279, %302[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %278, %304[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %279, %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %280, %306[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%308 : i64)
  ^bb13(%311: i64):  // 2 preds: ^bb12, ^bb23
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%313 : i64)
  ^bb15(%316: i64):  // 2 preds: ^bb14, ^bb22
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%318 : i64)
  ^bb17(%321: i64):  // 2 preds: ^bb16, ^bb21
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%323 : i64)
  ^bb19(%326: i64):  // 2 preds: ^bb18, ^bb20
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %328 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.add %12, %12  : i64
    %330 = llvm.add %329, %12  : i64
    %331 = llvm.add %330, %12  : i64
    %332 = llvm.getelementptr %328[%331] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %333 = llvm.load %332 : !llvm.ptr<i32>
    %334 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.add %311, %316  : i64
    %336 = llvm.add %335, %321  : i64
    %337 = llvm.add %336, %326  : i64
    %338 = llvm.getelementptr %334[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %333, %338 : !llvm.ptr<i32>
    %339 = llvm.add %326, %325  : i64
    llvm.br ^bb19(%339 : i64)
  ^bb21:  // pred: ^bb19
    %340 = llvm.add %321, %320  : i64
    llvm.br ^bb17(%340 : i64)
  ^bb22:  // pred: ^bb17
    %341 = llvm.add %316, %315  : i64
    llvm.br ^bb15(%341 : i64)
  ^bb23:  // pred: ^bb15
    %342 = llvm.add %311, %310  : i64
    llvm.br ^bb13(%342 : i64)
  ^bb24:  // pred: ^bb13
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.null : !llvm.ptr<i64>
    %346 = llvm.getelementptr %345[%343] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<i64> to i64
    %348 = llvm.mlir.constant(16 : index) : i64
    %349 = llvm.add %347, %348  : i64
    %350 = llvm.call @malloc(%349) : (i64) -> !llvm.ptr<i8>
    %351 = llvm.bitcast %350 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %352 = llvm.ptrtoint %351 : !llvm.ptr<i64> to i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.sub %348, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.urem %355, %348  : i64
    %357 = llvm.sub %355, %356  : i64
    %358 = llvm.inttoptr %357 : i64 to !llvm.ptr<i64>
    %359 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %360 = llvm.insertvalue %351, %359[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %358, %360[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.insertvalue %362, %361[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.insertvalue %343, %363[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.insertvalue %344, %364[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(4 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%366 : i64)
  ^bb25(%369: i64):  // 2 preds: ^bb24, ^bb26
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %371 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.getelementptr %371[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %372 : !llvm.ptr<i64>
    %373 = llvm.add %369, %368  : i64
    llvm.br ^bb25(%373 : i64)
  ^bb27:  // pred: ^bb25
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.null : !llvm.ptr<i64>
    %377 = llvm.getelementptr %376[%374] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %378 = llvm.ptrtoint %377 : !llvm.ptr<i64> to i64
    %379 = llvm.mlir.constant(16 : index) : i64
    %380 = llvm.add %378, %379  : i64
    %381 = llvm.call @malloc(%380) : (i64) -> !llvm.ptr<i8>
    %382 = llvm.bitcast %381 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i64> to i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.sub %379, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.urem %386, %379  : i64
    %388 = llvm.sub %386, %387  : i64
    %389 = llvm.inttoptr %388 : i64 to !llvm.ptr<i64>
    %390 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %391 = llvm.insertvalue %382, %390[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.insertvalue %389, %391[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.insertvalue %393, %392[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.insertvalue %374, %394[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %375, %395[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(4 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%397 : i64)
  ^bb28(%400: i64):  // 2 preds: ^bb27, ^bb29
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %402 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.getelementptr %402[%400] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %404 = llvm.load %403 : !llvm.ptr<i64>
    %405 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %406 = llvm.load %405 : !llvm.ptr<i64>
    %407 = llvm.mul %404, %406  : i64
    %408 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.getelementptr %408[%400] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %407, %409 : !llvm.ptr<i64>
    %410 = llvm.add %400, %399  : i64
    llvm.br ^bb28(%410 : i64)
  ^bb30:  // pred: ^bb28
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.null : !llvm.ptr<i1>
    %414 = llvm.getelementptr %413[%411] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i1> to i64
    %416 = llvm.mlir.constant(16 : index) : i64
    %417 = llvm.add %415, %416  : i64
    %418 = llvm.call @malloc(%417) : (i64) -> !llvm.ptr<i8>
    %419 = llvm.bitcast %418 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %420 = llvm.ptrtoint %419 : !llvm.ptr<i1> to i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.sub %416, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.urem %423, %416  : i64
    %425 = llvm.sub %423, %424  : i64
    %426 = llvm.inttoptr %425 : i64 to !llvm.ptr<i1>
    %427 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %428 = llvm.insertvalue %419, %427[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.insertvalue %426, %428[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.insertvalue %430, %429[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.insertvalue %411, %431[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.insertvalue %412, %432[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(4 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%434 : i64)
  ^bb31(%437: i64):  // 2 preds: ^bb30, ^bb32
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %439 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.getelementptr %439[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %441 = llvm.load %440 : !llvm.ptr<i64>
    %442 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.getelementptr %442[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.load %443 : !llvm.ptr<i64>
    %445 = llvm.icmp "eq" %441, %444 : i64
    %446 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.getelementptr %446[%437] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %445, %447 : !llvm.ptr<i1>
    %448 = llvm.add %437, %436  : i64
    llvm.br ^bb31(%448 : i64)
  ^bb33:  // pred: ^bb31
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.null : !llvm.ptr<i64>
    %452 = llvm.getelementptr %451[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i64> to i64
    %454 = llvm.mlir.constant(16 : index) : i64
    %455 = llvm.add %453, %454  : i64
    %456 = llvm.call @malloc(%455) : (i64) -> !llvm.ptr<i8>
    %457 = llvm.bitcast %456 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i64> to i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.sub %454, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.urem %461, %454  : i64
    %463 = llvm.sub %461, %462  : i64
    %464 = llvm.inttoptr %463 : i64 to !llvm.ptr<i64>
    %465 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %466 = llvm.insertvalue %457, %465[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.insertvalue %464, %466[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.insertvalue %468, %467[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.insertvalue %449, %469[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.insertvalue %450, %470[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%472 : i64)
  ^bb34(%475: i64):  // 2 preds: ^bb33, ^bb35
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %477 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%475] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %479 = llvm.load %478 : !llvm.ptr<i1>
    %480 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.getelementptr %480[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %482 = llvm.load %481 : !llvm.ptr<i64>
    %483 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.getelementptr %483[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %485 = llvm.load %484 : !llvm.ptr<i64>
    %486 = llvm.select %479, %482, %485 : i1, i64
    %487 = llvm.extractvalue %471[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %488 = llvm.getelementptr %487[%475] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %486, %488 : !llvm.ptr<i64>
    %489 = llvm.add %475, %474  : i64
    llvm.br ^bb34(%489 : i64)
  ^bb36:  // pred: ^bb34
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i32>
    %496 = llvm.getelementptr %495[%490] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i32> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i32> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i32>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %490, %513[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %491, %514[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %492, %515[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %493, %516[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %491, %517[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %492, %518[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %493, %519[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %494, %520[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%522 : i64)
  ^bb37(%525: i64):  // 2 preds: ^bb36, ^bb47
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%527 : i64)
  ^bb39(%530: i64):  // 2 preds: ^bb38, ^bb46
    %531 = llvm.icmp "slt" %530, %528 : i64
    llvm.cond_br %531, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%532 : i64)
  ^bb41(%535: i64):  // 2 preds: ^bb40, ^bb45
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%537 : i64)
  ^bb43(%540: i64):  // 2 preds: ^bb42, ^bb44
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %542 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.add %12, %12  : i64
    %544 = llvm.add %543, %12  : i64
    %545 = llvm.add %544, %12  : i64
    %546 = llvm.getelementptr %542[%545] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %547 = llvm.load %546 : !llvm.ptr<i32>
    %548 = llvm.extractvalue %521[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.add %525, %530  : i64
    %550 = llvm.add %549, %535  : i64
    %551 = llvm.add %550, %540  : i64
    %552 = llvm.getelementptr %548[%551] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %547, %552 : !llvm.ptr<i32>
    %553 = llvm.add %540, %539  : i64
    llvm.br ^bb43(%553 : i64)
  ^bb45:  // pred: ^bb43
    %554 = llvm.add %535, %534  : i64
    llvm.br ^bb41(%554 : i64)
  ^bb46:  // pred: ^bb41
    %555 = llvm.add %530, %529  : i64
    llvm.br ^bb39(%555 : i64)
  ^bb47:  // pred: ^bb39
    %556 = llvm.add %525, %524  : i64
    llvm.br ^bb37(%556 : i64)
  ^bb48:  // pred: ^bb37
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.mlir.constant(4 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.constant(4 : index) : i64
    %564 = llvm.mlir.null : !llvm.ptr<i32>
    %565 = llvm.getelementptr %564[%563] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %566 = llvm.ptrtoint %565 : !llvm.ptr<i32> to i64
    %567 = llvm.mlir.constant(16 : index) : i64
    %568 = llvm.add %566, %567  : i64
    %569 = llvm.call @malloc(%568) : (i64) -> !llvm.ptr<i8>
    %570 = llvm.bitcast %569 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %571 = llvm.ptrtoint %570 : !llvm.ptr<i32> to i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.sub %567, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.urem %574, %567  : i64
    %576 = llvm.sub %574, %575  : i64
    %577 = llvm.inttoptr %576 : i64 to !llvm.ptr<i32>
    %578 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %579 = llvm.insertvalue %570, %578[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.insertvalue %577, %579[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mlir.constant(0 : index) : i64
    %582 = llvm.insertvalue %581, %580[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.insertvalue %557, %582[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %558, %583[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %559, %584[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %560, %585[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %562, %586[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %559, %587[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %560, %588[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %561, %589[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%591 : i64)
  ^bb49(%594: i64):  // 2 preds: ^bb48, ^bb59
    %595 = llvm.icmp "slt" %594, %592 : i64
    llvm.cond_br %595, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %596 = llvm.mlir.constant(0 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%596 : i64)
  ^bb51(%599: i64):  // 2 preds: ^bb50, ^bb58
    %600 = llvm.icmp "slt" %599, %597 : i64
    llvm.cond_br %600, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%601 : i64)
  ^bb53(%604: i64):  // 2 preds: ^bb52, ^bb57
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%606 : i64)
  ^bb55(%609: i64):  // 2 preds: ^bb54, ^bb56
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %611 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.add %594, %599  : i64
    %613 = llvm.add %612, %604  : i64
    %614 = llvm.add %613, %609  : i64
    %615 = llvm.getelementptr %611[%614] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %616 = llvm.load %615 : !llvm.ptr<i32>
    %617 = llvm.extractvalue %590[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.mlir.constant(4 : index) : i64
    %619 = llvm.mul %594, %618  : i64
    %620 = llvm.mlir.constant(4 : index) : i64
    %621 = llvm.mul %599, %620  : i64
    %622 = llvm.add %619, %621  : i64
    %623 = llvm.add %622, %604  : i64
    %624 = llvm.add %623, %609  : i64
    %625 = llvm.getelementptr %617[%624] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %616, %625 : !llvm.ptr<i32>
    %626 = llvm.add %609, %608  : i64
    llvm.br ^bb55(%626 : i64)
  ^bb57:  // pred: ^bb55
    %627 = llvm.add %604, %603  : i64
    llvm.br ^bb53(%627 : i64)
  ^bb58:  // pred: ^bb53
    %628 = llvm.add %599, %598  : i64
    llvm.br ^bb51(%628 : i64)
  ^bb59:  // pred: ^bb51
    %629 = llvm.add %594, %593  : i64
    llvm.br ^bb49(%629 : i64)
  ^bb60:  // pred: ^bb49
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%630 : i64)
  ^bb61(%633: i64):  // 2 preds: ^bb60, ^bb71
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%635 : i64)
  ^bb63(%638: i64):  // 2 preds: ^bb62, ^bb70
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%640 : i64)
  ^bb65(%643: i64):  // 2 preds: ^bb64, ^bb69
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%645 : i64)
  ^bb67(%648: i64):  // 2 preds: ^bb66, ^bb68
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %650 = llvm.mlir.constant(1 : index) : i64
    %651 = llvm.add %643, %650  : i64
    %652 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.add %633, %638  : i64
    %654 = llvm.add %653, %643  : i64
    %655 = llvm.add %654, %648  : i64
    %656 = llvm.getelementptr %652[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %657 = llvm.load %656 : !llvm.ptr<i32>
    %658 = llvm.extractvalue %590[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.mlir.constant(4 : index) : i64
    %660 = llvm.mul %633, %659  : i64
    %661 = llvm.mlir.constant(4 : index) : i64
    %662 = llvm.mul %638, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.add %663, %651  : i64
    %665 = llvm.add %664, %648  : i64
    %666 = llvm.getelementptr %658[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %657, %666 : !llvm.ptr<i32>
    %667 = llvm.add %648, %647  : i64
    llvm.br ^bb67(%667 : i64)
  ^bb69:  // pred: ^bb67
    %668 = llvm.add %643, %642  : i64
    llvm.br ^bb65(%668 : i64)
  ^bb70:  // pred: ^bb65
    %669 = llvm.add %638, %637  : i64
    llvm.br ^bb63(%669 : i64)
  ^bb71:  // pred: ^bb63
    %670 = llvm.add %633, %632  : i64
    llvm.br ^bb61(%670 : i64)
  ^bb72:  // pred: ^bb61
    %671 = llvm.mlir.constant(0 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    %673 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%671 : i64)
  ^bb73(%674: i64):  // 2 preds: ^bb72, ^bb83
    %675 = llvm.icmp "slt" %674, %672 : i64
    llvm.cond_br %675, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %676 = llvm.mlir.constant(0 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%676 : i64)
  ^bb75(%679: i64):  // 2 preds: ^bb74, ^bb82
    %680 = llvm.icmp "slt" %679, %677 : i64
    llvm.cond_br %680, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %681 = llvm.mlir.constant(0 : index) : i64
    %682 = llvm.mlir.constant(1 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%681 : i64)
  ^bb77(%684: i64):  // 2 preds: ^bb76, ^bb81
    %685 = llvm.icmp "slt" %684, %682 : i64
    llvm.cond_br %685, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(1 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%686 : i64)
  ^bb79(%689: i64):  // 2 preds: ^bb78, ^bb80
    %690 = llvm.icmp "slt" %689, %687 : i64
    llvm.cond_br %690, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %691 = llvm.mlir.constant(2 : index) : i64
    %692 = llvm.add %684, %691  : i64
    %693 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.add %674, %679  : i64
    %695 = llvm.add %694, %684  : i64
    %696 = llvm.add %695, %689  : i64
    %697 = llvm.getelementptr %693[%696] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %698 = llvm.load %697 : !llvm.ptr<i32>
    %699 = llvm.extractvalue %590[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.mlir.constant(4 : index) : i64
    %701 = llvm.mul %674, %700  : i64
    %702 = llvm.mlir.constant(4 : index) : i64
    %703 = llvm.mul %679, %702  : i64
    %704 = llvm.add %701, %703  : i64
    %705 = llvm.add %704, %692  : i64
    %706 = llvm.add %705, %689  : i64
    %707 = llvm.getelementptr %699[%706] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %698, %707 : !llvm.ptr<i32>
    %708 = llvm.add %689, %688  : i64
    llvm.br ^bb79(%708 : i64)
  ^bb81:  // pred: ^bb79
    %709 = llvm.add %684, %683  : i64
    llvm.br ^bb77(%709 : i64)
  ^bb82:  // pred: ^bb77
    %710 = llvm.add %679, %678  : i64
    llvm.br ^bb75(%710 : i64)
  ^bb83:  // pred: ^bb75
    %711 = llvm.add %674, %673  : i64
    llvm.br ^bb73(%711 : i64)
  ^bb84:  // pred: ^bb73
    %712 = llvm.mlir.constant(0 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%712 : i64)
  ^bb85(%715: i64):  // 2 preds: ^bb84, ^bb95
    %716 = llvm.icmp "slt" %715, %713 : i64
    llvm.cond_br %716, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %717 = llvm.mlir.constant(0 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    %719 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%717 : i64)
  ^bb87(%720: i64):  // 2 preds: ^bb86, ^bb94
    %721 = llvm.icmp "slt" %720, %718 : i64
    llvm.cond_br %721, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %722 = llvm.mlir.constant(0 : index) : i64
    %723 = llvm.mlir.constant(1 : index) : i64
    %724 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%722 : i64)
  ^bb89(%725: i64):  // 2 preds: ^bb88, ^bb93
    %726 = llvm.icmp "slt" %725, %723 : i64
    llvm.cond_br %726, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %727 = llvm.mlir.constant(0 : index) : i64
    %728 = llvm.mlir.constant(1 : index) : i64
    %729 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%727 : i64)
  ^bb91(%730: i64):  // 2 preds: ^bb90, ^bb92
    %731 = llvm.icmp "slt" %730, %728 : i64
    llvm.cond_br %731, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %732 = llvm.mlir.constant(3 : index) : i64
    %733 = llvm.add %725, %732  : i64
    %734 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.add %715, %720  : i64
    %736 = llvm.add %735, %725  : i64
    %737 = llvm.add %736, %730  : i64
    %738 = llvm.getelementptr %734[%737] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %739 = llvm.load %738 : !llvm.ptr<i32>
    %740 = llvm.extractvalue %590[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.mlir.constant(4 : index) : i64
    %742 = llvm.mul %715, %741  : i64
    %743 = llvm.mlir.constant(4 : index) : i64
    %744 = llvm.mul %720, %743  : i64
    %745 = llvm.add %742, %744  : i64
    %746 = llvm.add %745, %733  : i64
    %747 = llvm.add %746, %730  : i64
    %748 = llvm.getelementptr %740[%747] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %739, %748 : !llvm.ptr<i32>
    %749 = llvm.add %730, %729  : i64
    llvm.br ^bb91(%749 : i64)
  ^bb93:  // pred: ^bb91
    %750 = llvm.add %725, %724  : i64
    llvm.br ^bb89(%750 : i64)
  ^bb94:  // pred: ^bb89
    %751 = llvm.add %720, %719  : i64
    llvm.br ^bb87(%751 : i64)
  ^bb95:  // pred: ^bb87
    %752 = llvm.add %715, %714  : i64
    llvm.br ^bb85(%752 : i64)
  ^bb96:  // pred: ^bb85
    %753 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %754 = llvm.insertvalue %24, %753[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %755 = llvm.insertvalue %307, %754[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %756 = llvm.insertvalue %521, %755[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %757 = llvm.insertvalue %590, %756[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %757 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v8_0", "v0_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.extractvalue %44[3] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.mlir.constant(32 : i64) : i64
    %51 = llvm.call @malloc(%50) : (i64) -> !llvm.ptr<i8>
    %52 = llvm.bitcast %51 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.call @omTensorCreateUntyped(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.mlir.constant(0 : i64) : i64
    %56 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %58 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%54, %55, %57, %59) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %60 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%54, %60) : (!llvm.ptr<i8>, i64) -> ()
    %61 = llvm.call @omTensorGetShape(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.call @omTensorGetStrides(%54) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.mlir.constant(0 : i64) : i64
    %64 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %61[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.getelementptr %62[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.getelementptr %52[%68] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %54, %69 : !llvm.ptr<ptr<i8>>
    %70 = llvm.mlir.constant(4 : i64) : i64
    %71 = llvm.call @omTensorCreateUntyped(%70) : (i64) -> !llvm.ptr<i8>
    %72 = llvm.mlir.constant(1 : i64) : i64
    %73 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.bitcast %73 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %75 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.bitcast %75 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%71, %72, %74, %76) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %77 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%71, %77) : (!llvm.ptr<i8>, i64) -> ()
    %78 = llvm.call @omTensorGetShape(%71) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %79 = llvm.call @omTensorGetStrides(%71) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %78[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %79[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %78[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %79[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(2 : i64) : i64
    %91 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %78[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %79[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.mlir.constant(3 : i64) : i64
    %96 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %78[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %79[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.getelementptr %52[%100] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %71, %101 : !llvm.ptr<ptr<i8>>
    %102 = llvm.mlir.constant(4 : i64) : i64
    %103 = llvm.call @omTensorCreateUntyped(%102) : (i64) -> !llvm.ptr<i8>
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.bitcast %105 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %107 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.bitcast %107 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%103, %104, %106, %108) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %109 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%103, %109) : (!llvm.ptr<i8>, i64) -> ()
    %110 = llvm.call @omTensorGetShape(%103) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.call @omTensorGetStrides(%103) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.mlir.constant(0 : i64) : i64
    %113 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %110[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %111[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(1 : i64) : i64
    %118 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %110[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %111[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(2 : i64) : i64
    %123 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %110[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %111[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(3 : i64) : i64
    %128 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %110[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %111[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.getelementptr %52[%132] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %103, %133 : !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(4 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %142[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %143[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(2 : i64) : i64
    %155 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %142[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %143[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(3 : i64) : i64
    %160 = llvm.extractvalue %48[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %142[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %143[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(3 : i64) : i64
    %165 = llvm.getelementptr %52[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.call @omTensorListCreate(%52, %49, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %166 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<269 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<269 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


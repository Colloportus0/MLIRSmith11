module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_10(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_9(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_8(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<-3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(2147483647 : i32) : i32
    %9 = llvm.mlir.constant(3 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(1 : i64) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(4 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
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
    %77 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %84 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %85 = llvm.bitcast %84 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.mlir.constant(4 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
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
    %106 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<1 x i64>>
    %107 = llvm.bitcast %106 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %108 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %109 = llvm.insertvalue %107, %108[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %110 = llvm.insertvalue %107, %109[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.insertvalue %111, %110[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %113 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<4 x i64>>
    %114 = llvm.bitcast %113 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %115 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %116 = llvm.insertvalue %114, %115[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %114, %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.insertvalue %118, %117[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.mlir.constant(4 : index) : i64
    %121 = llvm.insertvalue %120, %119[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.insertvalue %122, %121[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.null : !llvm.ptr<i32>
    %130 = llvm.getelementptr %129[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %148 = llvm.insertvalue %124, %147[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %125, %148[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %126, %149[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %127, %150[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %127, %153[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%156 : i64)
  ^bb1(%159: i64):  // 2 preds: ^bb0, ^bb11
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%161 : i64)
  ^bb3(%164: i64):  // 2 preds: ^bb2, ^bb10
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%166 : i64)
  ^bb5(%169: i64):  // 2 preds: ^bb4, ^bb9
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%171 : i64)
  ^bb7(%174: i64):  // 2 preds: ^bb6, ^bb8
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %176 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.add %169, %174  : i64
    %178 = llvm.getelementptr %176[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %178 : !llvm.ptr<i32>
    %180 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.add %159, %164  : i64
    %182 = llvm.add %181, %169  : i64
    %183 = llvm.add %182, %174  : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %185 = llvm.load %184 : !llvm.ptr<i32>
    %186 = llvm.add %179, %185  : i32
    %187 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.add %159, %164  : i64
    %189 = llvm.add %188, %169  : i64
    %190 = llvm.add %189, %174  : i64
    %191 = llvm.getelementptr %187[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %186, %191 : !llvm.ptr<i32>
    %192 = llvm.add %174, %173  : i64
    llvm.br ^bb7(%192 : i64)
  ^bb9:  // pred: ^bb7
    %193 = llvm.add %169, %168  : i64
    llvm.br ^bb5(%193 : i64)
  ^bb10:  // pred: ^bb5
    %194 = llvm.add %164, %163  : i64
    llvm.br ^bb3(%194 : i64)
  ^bb11:  // pred: ^bb3
    %195 = llvm.add %159, %158  : i64
    llvm.br ^bb1(%195 : i64)
  ^bb12:  // pred: ^bb1
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.null : !llvm.ptr<i64>
    %199 = llvm.getelementptr %198[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i64> to i64
    %201 = llvm.mlir.constant(16 : index) : i64
    %202 = llvm.add %200, %201  : i64
    %203 = llvm.call @malloc(%202) : (i64) -> !llvm.ptr<i8>
    %204 = llvm.bitcast %203 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<i64> to i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.sub %201, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.urem %208, %201  : i64
    %210 = llvm.sub %208, %209  : i64
    %211 = llvm.inttoptr %210 : i64 to !llvm.ptr<i64>
    %212 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %213 = llvm.insertvalue %204, %212[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %211, %213[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.insertvalue %215, %214[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.insertvalue %196, %216[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.insertvalue %197, %217[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%219 : i64)
  ^bb13(%222: i64):  // 2 preds: ^bb12, ^bb14
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %224 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %11, %225 : !llvm.ptr<i64>
    %226 = llvm.add %222, %221  : i64
    llvm.br ^bb13(%226 : i64)
  ^bb15:  // pred: ^bb13
    %227 = llvm.mlir.constant(4 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.null : !llvm.ptr<i64>
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i64> to i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.add %231, %232  : i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr<i8>
    %235 = llvm.bitcast %234 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %236 = llvm.ptrtoint %235 : !llvm.ptr<i64> to i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.sub %232, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.urem %239, %232  : i64
    %241 = llvm.sub %239, %240  : i64
    %242 = llvm.inttoptr %241 : i64 to !llvm.ptr<i64>
    %243 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %244 = llvm.insertvalue %235, %243[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %242, %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.insertvalue %246, %245[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %227, %247[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %228, %248[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%250 : i64)
  ^bb16(%253: i64):  // 2 preds: ^bb15, ^bb17
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %255 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %257 = llvm.load %256 : !llvm.ptr<i64>
    %258 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %259 = llvm.load %258 : !llvm.ptr<i64>
    %260 = llvm.mul %257, %259  : i64
    %261 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %262 : !llvm.ptr<i64>
    %263 = llvm.add %253, %252  : i64
    llvm.br ^bb16(%263 : i64)
  ^bb18:  // pred: ^bb16
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.null : !llvm.ptr<i1>
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i1> to i64
    %269 = llvm.mlir.constant(16 : index) : i64
    %270 = llvm.add %268, %269  : i64
    %271 = llvm.call @malloc(%270) : (i64) -> !llvm.ptr<i8>
    %272 = llvm.bitcast %271 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i1> to i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.sub %269, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.urem %276, %269  : i64
    %278 = llvm.sub %276, %277  : i64
    %279 = llvm.inttoptr %278 : i64 to !llvm.ptr<i1>
    %280 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %272, %280[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %264, %284[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %265, %285[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%287 : i64)
  ^bb19(%290: i64):  // 2 preds: ^bb18, ^bb20
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %292 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.getelementptr %292[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.load %293 : !llvm.ptr<i64>
    %295 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.getelementptr %295[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %297 = llvm.load %296 : !llvm.ptr<i64>
    %298 = llvm.icmp "eq" %294, %297 : i64
    %299 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%290] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %298, %300 : !llvm.ptr<i1>
    %301 = llvm.add %290, %289  : i64
    llvm.br ^bb19(%301 : i64)
  ^bb21:  // pred: ^bb19
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i64>
    %305 = llvm.getelementptr %304[%302] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i64> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i64>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%325 : i64)
  ^bb22(%328: i64):  // 2 preds: ^bb21, ^bb23
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %330 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%328] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %332 = llvm.load %331 : !llvm.ptr<i1>
    %333 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.getelementptr %333[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %335 = llvm.load %334 : !llvm.ptr<i64>
    %336 = llvm.extractvalue %123[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %338 = llvm.load %337 : !llvm.ptr<i64>
    %339 = llvm.select %332, %335, %338 : i1, i64
    %340 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%328] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %339, %341 : !llvm.ptr<i64>
    %342 = llvm.add %328, %327  : i64
    llvm.br ^bb22(%342 : i64)
  ^bb24:  // pred: ^bb22
    %343 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.getelementptr %343[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.load %344 : !llvm.ptr<i64>
    %346 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.getelementptr %346[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %348 = llvm.load %347 : !llvm.ptr<i64>
    %349 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %350 = llvm.getelementptr %349[%10] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %351 = llvm.load %350 : !llvm.ptr<i64>
    %352 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.getelementptr %352[%9] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.load %353 : !llvm.ptr<i64>
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mul %354, %351  : i64
    %357 = llvm.mul %356, %348  : i64
    %358 = llvm.mul %357, %345  : i64
    %359 = llvm.mlir.null : !llvm.ptr<i32>
    %360 = llvm.getelementptr %359[%358] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.ptrtoint %360 : !llvm.ptr<i32> to i64
    %362 = llvm.mlir.constant(16 : index) : i64
    %363 = llvm.add %361, %362  : i64
    %364 = llvm.call @malloc(%363) : (i64) -> !llvm.ptr<i8>
    %365 = llvm.bitcast %364 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %366 = llvm.ptrtoint %365 : !llvm.ptr<i32> to i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.sub %362, %367  : i64
    %369 = llvm.add %366, %368  : i64
    %370 = llvm.urem %369, %362  : i64
    %371 = llvm.sub %369, %370  : i64
    %372 = llvm.inttoptr %371 : i64 to !llvm.ptr<i32>
    %373 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %374 = llvm.insertvalue %365, %373[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %372, %374[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.insertvalue %376, %375[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %345, %377[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %348, %378[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %351, %379[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %357, %381[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %356, %382[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %354, %383[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %355, %384[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%386 : i64)
  ^bb25(%388: i64):  // 2 preds: ^bb24, ^bb35
    %389 = llvm.icmp "slt" %388, %345 : i64
    llvm.cond_br %389, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%390 : i64)
  ^bb27(%392: i64):  // 2 preds: ^bb26, ^bb34
    %393 = llvm.icmp "slt" %392, %348 : i64
    llvm.cond_br %393, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%394 : i64)
  ^bb29(%396: i64):  // 2 preds: ^bb28, ^bb33
    %397 = llvm.icmp "slt" %396, %351 : i64
    llvm.cond_br %397, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%398 : i64)
  ^bb31(%400: i64):  // 2 preds: ^bb30, ^bb32
    %401 = llvm.icmp "slt" %400, %354 : i64
    llvm.cond_br %401, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %402 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.add %12, %12  : i64
    %404 = llvm.add %403, %12  : i64
    %405 = llvm.add %404, %12  : i64
    %406 = llvm.getelementptr %402[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %407 = llvm.load %406 : !llvm.ptr<i32>
    %408 = llvm.extractvalue %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.extractvalue %385[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mul %388, %409  : i64
    %411 = llvm.extractvalue %385[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mul %392, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.extractvalue %385[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mul %396, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.add %416, %400  : i64
    %418 = llvm.getelementptr %408[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %407, %418 : !llvm.ptr<i32>
    %419 = llvm.add %400, %399  : i64
    llvm.br ^bb31(%419 : i64)
  ^bb33:  // pred: ^bb31
    %420 = llvm.add %396, %395  : i64
    llvm.br ^bb29(%420 : i64)
  ^bb34:  // pred: ^bb29
    %421 = llvm.add %392, %391  : i64
    llvm.br ^bb27(%421 : i64)
  ^bb35:  // pred: ^bb27
    %422 = llvm.add %388, %387  : i64
    llvm.br ^bb25(%422 : i64)
  ^bb36:  // pred: ^bb25
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.null : !llvm.ptr<i64>
    %426 = llvm.getelementptr %425[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<i64> to i64
    %428 = llvm.mlir.constant(16 : index) : i64
    %429 = llvm.add %427, %428  : i64
    %430 = llvm.call @malloc(%429) : (i64) -> !llvm.ptr<i8>
    %431 = llvm.bitcast %430 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<i64> to i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.sub %428, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.urem %435, %428  : i64
    %437 = llvm.sub %435, %436  : i64
    %438 = llvm.inttoptr %437 : i64 to !llvm.ptr<i64>
    %439 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %440 = llvm.insertvalue %431, %439[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.insertvalue %438, %440[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.insertvalue %442, %441[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.insertvalue %423, %443[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.insertvalue %424, %444[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%446 : i64)
  ^bb37(%449: i64):  // 2 preds: ^bb36, ^bb38
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %451 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %11, %452 : !llvm.ptr<i64>
    %453 = llvm.add %449, %448  : i64
    llvm.br ^bb37(%453 : i64)
  ^bb39:  // pred: ^bb37
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.null : !llvm.ptr<i64>
    %457 = llvm.getelementptr %456[%454] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i64> to i64
    %459 = llvm.mlir.constant(16 : index) : i64
    %460 = llvm.add %458, %459  : i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr<i8>
    %462 = llvm.bitcast %461 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i64> to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %459, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.urem %466, %459  : i64
    %468 = llvm.sub %466, %467  : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr<i64>
    %470 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.insertvalue %454, %474[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %455, %475[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%477 : i64)
  ^bb40(%480: i64):  // 2 preds: ^bb39, ^bb41
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %482 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.getelementptr %482[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %484 = llvm.load %483 : !llvm.ptr<i64>
    %485 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %486 = llvm.load %485 : !llvm.ptr<i64>
    %487 = llvm.mul %484, %486  : i64
    %488 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.getelementptr %488[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %487, %489 : !llvm.ptr<i64>
    %490 = llvm.add %480, %479  : i64
    llvm.br ^bb40(%490 : i64)
  ^bb42:  // pred: ^bb40
    %491 = llvm.mlir.constant(4 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.null : !llvm.ptr<i1>
    %494 = llvm.getelementptr %493[%491] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %495 = llvm.ptrtoint %494 : !llvm.ptr<i1> to i64
    %496 = llvm.mlir.constant(16 : index) : i64
    %497 = llvm.add %495, %496  : i64
    %498 = llvm.call @malloc(%497) : (i64) -> !llvm.ptr<i8>
    %499 = llvm.bitcast %498 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %500 = llvm.ptrtoint %499 : !llvm.ptr<i1> to i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.sub %496, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.urem %503, %496  : i64
    %505 = llvm.sub %503, %504  : i64
    %506 = llvm.inttoptr %505 : i64 to !llvm.ptr<i1>
    %507 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %508 = llvm.insertvalue %499, %507[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.insertvalue %506, %508[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.insertvalue %510, %509[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.insertvalue %491, %511[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.insertvalue %492, %512[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%514 : i64)
  ^bb43(%517: i64):  // 2 preds: ^bb42, ^bb44
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %519 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.getelementptr %519[%517] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %521 = llvm.load %520 : !llvm.ptr<i64>
    %522 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%517] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %524 = llvm.load %523 : !llvm.ptr<i64>
    %525 = llvm.icmp "eq" %521, %524 : i64
    %526 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.getelementptr %526[%517] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %525, %527 : !llvm.ptr<i1>
    %528 = llvm.add %517, %516  : i64
    llvm.br ^bb43(%528 : i64)
  ^bb45:  // pred: ^bb43
    %529 = llvm.mlir.constant(4 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.null : !llvm.ptr<i64>
    %532 = llvm.getelementptr %531[%529] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %533 = llvm.ptrtoint %532 : !llvm.ptr<i64> to i64
    %534 = llvm.mlir.constant(16 : index) : i64
    %535 = llvm.add %533, %534  : i64
    %536 = llvm.call @malloc(%535) : (i64) -> !llvm.ptr<i8>
    %537 = llvm.bitcast %536 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %538 = llvm.ptrtoint %537 : !llvm.ptr<i64> to i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.sub %534, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.urem %541, %534  : i64
    %543 = llvm.sub %541, %542  : i64
    %544 = llvm.inttoptr %543 : i64 to !llvm.ptr<i64>
    %545 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %546 = llvm.insertvalue %537, %545[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.insertvalue %544, %546[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.insertvalue %548, %547[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.insertvalue %529, %549[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %551 = llvm.insertvalue %530, %550[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.mlir.constant(4 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%552 : i64)
  ^bb46(%555: i64):  // 2 preds: ^bb45, ^bb47
    %556 = llvm.icmp "slt" %555, %553 : i64
    llvm.cond_br %556, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %557 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %558 = llvm.getelementptr %557[%555] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %559 = llvm.load %558 : !llvm.ptr<i1>
    %560 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.getelementptr %560[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %562 = llvm.load %561 : !llvm.ptr<i64>
    %563 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.getelementptr %563[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %565 = llvm.load %564 : !llvm.ptr<i64>
    %566 = llvm.select %559, %562, %565 : i1, i64
    %567 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.getelementptr %567[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %566, %568 : !llvm.ptr<i64>
    %569 = llvm.add %555, %554  : i64
    llvm.br ^bb46(%569 : i64)
  ^bb48:  // pred: ^bb46
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.null : !llvm.ptr<i32>
    %576 = llvm.getelementptr %575[%570] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %577 = llvm.ptrtoint %576 : !llvm.ptr<i32> to i64
    %578 = llvm.mlir.constant(16 : index) : i64
    %579 = llvm.add %577, %578  : i64
    %580 = llvm.call @malloc(%579) : (i64) -> !llvm.ptr<i8>
    %581 = llvm.bitcast %580 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %582 = llvm.ptrtoint %581 : !llvm.ptr<i32> to i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.sub %578, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.urem %585, %578  : i64
    %587 = llvm.sub %585, %586  : i64
    %588 = llvm.inttoptr %587 : i64 to !llvm.ptr<i32>
    %589 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %590 = llvm.insertvalue %581, %589[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %588, %590[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.insertvalue %592, %591[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %570, %593[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %571, %594[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %572, %595[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %573, %596[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %571, %597[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %572, %598[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.insertvalue %573, %599[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.insertvalue %574, %600[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %602 = llvm.icmp "sgt" %345, %13 : i64
    %603 = llvm.icmp "sgt" %348, %13 : i64
    %604 = llvm.icmp "sgt" %351, %13 : i64
    %605 = llvm.icmp "sgt" %354, %13 : i64
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%606 : i64)
  ^bb49(%609: i64):  // 2 preds: ^bb48, ^bb59
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%611 : i64)
  ^bb51(%614: i64):  // 2 preds: ^bb50, ^bb58
    %615 = llvm.icmp "slt" %614, %612 : i64
    llvm.cond_br %615, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%616 : i64)
  ^bb53(%619: i64):  // 2 preds: ^bb52, ^bb57
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %621 = llvm.mlir.constant(0 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%621 : i64)
  ^bb55(%624: i64):  // 2 preds: ^bb54, ^bb56
    %625 = llvm.icmp "slt" %624, %622 : i64
    llvm.cond_br %625, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %626 = llvm.select %602, %609, %12 : i1, i64
    %627 = llvm.select %603, %614, %12 : i1, i64
    %628 = llvm.select %604, %619, %12 : i1, i64
    %629 = llvm.select %605, %624, %12 : i1, i64
    %630 = llvm.extractvalue %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.extractvalue %385[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.mul %626, %631  : i64
    %633 = llvm.extractvalue %385[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.mul %627, %633  : i64
    %635 = llvm.add %632, %634  : i64
    %636 = llvm.extractvalue %385[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.mul %628, %636  : i64
    %638 = llvm.add %635, %637  : i64
    %639 = llvm.add %638, %629  : i64
    %640 = llvm.getelementptr %630[%639] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %641 = llvm.load %640 : !llvm.ptr<i32>
    %642 = llvm.extractvalue %601[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.add %609, %614  : i64
    %644 = llvm.add %643, %619  : i64
    %645 = llvm.add %644, %624  : i64
    %646 = llvm.getelementptr %642[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %641, %646 : !llvm.ptr<i32>
    %647 = llvm.add %624, %623  : i64
    llvm.br ^bb55(%647 : i64)
  ^bb57:  // pred: ^bb55
    %648 = llvm.add %619, %618  : i64
    llvm.br ^bb53(%648 : i64)
  ^bb58:  // pred: ^bb53
    %649 = llvm.add %614, %613  : i64
    llvm.br ^bb51(%649 : i64)
  ^bb59:  // pred: ^bb51
    %650 = llvm.add %609, %608  : i64
    llvm.br ^bb49(%650 : i64)
  ^bb60:  // pred: ^bb49
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.null : !llvm.ptr<i64>
    %654 = llvm.getelementptr %653[%651] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %655 = llvm.ptrtoint %654 : !llvm.ptr<i64> to i64
    %656 = llvm.mlir.constant(16 : index) : i64
    %657 = llvm.add %655, %656  : i64
    %658 = llvm.call @malloc(%657) : (i64) -> !llvm.ptr<i8>
    %659 = llvm.bitcast %658 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %660 = llvm.ptrtoint %659 : !llvm.ptr<i64> to i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.sub %656, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.urem %663, %656  : i64
    %665 = llvm.sub %663, %664  : i64
    %666 = llvm.inttoptr %665 : i64 to !llvm.ptr<i64>
    %667 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %668 = llvm.insertvalue %659, %667[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %669 = llvm.insertvalue %666, %668[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.insertvalue %670, %669[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %672 = llvm.insertvalue %651, %671[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %673 = llvm.insertvalue %652, %672[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %674 = llvm.mlir.constant(0 : index) : i64
    %675 = llvm.mlir.constant(4 : index) : i64
    %676 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%674 : i64)
  ^bb61(%677: i64):  // 2 preds: ^bb60, ^bb62
    %678 = llvm.icmp "slt" %677, %675 : i64
    llvm.cond_br %678, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %679 = llvm.extractvalue %673[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %680 = llvm.getelementptr %679[%677] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %11, %680 : !llvm.ptr<i64>
    %681 = llvm.add %677, %676  : i64
    llvm.br ^bb61(%681 : i64)
  ^bb63:  // pred: ^bb61
    %682 = llvm.mlir.constant(4 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    %684 = llvm.mlir.null : !llvm.ptr<i64>
    %685 = llvm.getelementptr %684[%682] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %686 = llvm.ptrtoint %685 : !llvm.ptr<i64> to i64
    %687 = llvm.mlir.constant(16 : index) : i64
    %688 = llvm.add %686, %687  : i64
    %689 = llvm.call @malloc(%688) : (i64) -> !llvm.ptr<i8>
    %690 = llvm.bitcast %689 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %691 = llvm.ptrtoint %690 : !llvm.ptr<i64> to i64
    %692 = llvm.mlir.constant(1 : index) : i64
    %693 = llvm.sub %687, %692  : i64
    %694 = llvm.add %691, %693  : i64
    %695 = llvm.urem %694, %687  : i64
    %696 = llvm.sub %694, %695  : i64
    %697 = llvm.inttoptr %696 : i64 to !llvm.ptr<i64>
    %698 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %699 = llvm.insertvalue %690, %698[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %700 = llvm.insertvalue %697, %699[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %701 = llvm.mlir.constant(0 : index) : i64
    %702 = llvm.insertvalue %701, %700[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %703 = llvm.insertvalue %682, %702[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %704 = llvm.insertvalue %683, %703[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %705 = llvm.mlir.constant(0 : index) : i64
    %706 = llvm.mlir.constant(4 : index) : i64
    %707 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%705 : i64)
  ^bb64(%708: i64):  // 2 preds: ^bb63, ^bb65
    %709 = llvm.icmp "slt" %708, %706 : i64
    llvm.cond_br %709, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %710 = llvm.extractvalue %673[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %711 = llvm.getelementptr %710[%708] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %712 = llvm.load %711 : !llvm.ptr<i64>
    %713 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %714 = llvm.load %713 : !llvm.ptr<i64>
    %715 = llvm.mul %712, %714  : i64
    %716 = llvm.extractvalue %704[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %717 = llvm.getelementptr %716[%708] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %715, %717 : !llvm.ptr<i64>
    %718 = llvm.add %708, %707  : i64
    llvm.br ^bb64(%718 : i64)
  ^bb66:  // pred: ^bb64
    %719 = llvm.mlir.constant(4 : index) : i64
    %720 = llvm.mlir.constant(1 : index) : i64
    %721 = llvm.mlir.null : !llvm.ptr<i1>
    %722 = llvm.getelementptr %721[%719] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %723 = llvm.ptrtoint %722 : !llvm.ptr<i1> to i64
    %724 = llvm.mlir.constant(16 : index) : i64
    %725 = llvm.add %723, %724  : i64
    %726 = llvm.call @malloc(%725) : (i64) -> !llvm.ptr<i8>
    %727 = llvm.bitcast %726 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %728 = llvm.ptrtoint %727 : !llvm.ptr<i1> to i64
    %729 = llvm.mlir.constant(1 : index) : i64
    %730 = llvm.sub %724, %729  : i64
    %731 = llvm.add %728, %730  : i64
    %732 = llvm.urem %731, %724  : i64
    %733 = llvm.sub %731, %732  : i64
    %734 = llvm.inttoptr %733 : i64 to !llvm.ptr<i1>
    %735 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %736 = llvm.insertvalue %727, %735[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %737 = llvm.insertvalue %734, %736[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %738 = llvm.mlir.constant(0 : index) : i64
    %739 = llvm.insertvalue %738, %737[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %740 = llvm.insertvalue %719, %739[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %741 = llvm.insertvalue %720, %740[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %742 = llvm.mlir.constant(0 : index) : i64
    %743 = llvm.mlir.constant(4 : index) : i64
    %744 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%742 : i64)
  ^bb67(%745: i64):  // 2 preds: ^bb66, ^bb68
    %746 = llvm.icmp "slt" %745, %743 : i64
    llvm.cond_br %746, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %747 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %748 = llvm.getelementptr %747[%745] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %749 = llvm.load %748 : !llvm.ptr<i64>
    %750 = llvm.extractvalue %704[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %751 = llvm.getelementptr %750[%745] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %752 = llvm.load %751 : !llvm.ptr<i64>
    %753 = llvm.icmp "eq" %749, %752 : i64
    %754 = llvm.extractvalue %741[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %755 = llvm.getelementptr %754[%745] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %753, %755 : !llvm.ptr<i1>
    %756 = llvm.add %745, %744  : i64
    llvm.br ^bb67(%756 : i64)
  ^bb69:  // pred: ^bb67
    %757 = llvm.mlir.constant(4 : index) : i64
    %758 = llvm.mlir.constant(1 : index) : i64
    %759 = llvm.mlir.null : !llvm.ptr<i64>
    %760 = llvm.getelementptr %759[%757] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %761 = llvm.ptrtoint %760 : !llvm.ptr<i64> to i64
    %762 = llvm.mlir.constant(16 : index) : i64
    %763 = llvm.add %761, %762  : i64
    %764 = llvm.call @malloc(%763) : (i64) -> !llvm.ptr<i8>
    %765 = llvm.bitcast %764 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %766 = llvm.ptrtoint %765 : !llvm.ptr<i64> to i64
    %767 = llvm.mlir.constant(1 : index) : i64
    %768 = llvm.sub %762, %767  : i64
    %769 = llvm.add %766, %768  : i64
    %770 = llvm.urem %769, %762  : i64
    %771 = llvm.sub %769, %770  : i64
    %772 = llvm.inttoptr %771 : i64 to !llvm.ptr<i64>
    %773 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %774 = llvm.insertvalue %765, %773[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %775 = llvm.insertvalue %772, %774[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %776 = llvm.mlir.constant(0 : index) : i64
    %777 = llvm.insertvalue %776, %775[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %778 = llvm.insertvalue %757, %777[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %779 = llvm.insertvalue %758, %778[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %780 = llvm.mlir.constant(0 : index) : i64
    %781 = llvm.mlir.constant(4 : index) : i64
    %782 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%780 : i64)
  ^bb70(%783: i64):  // 2 preds: ^bb69, ^bb71
    %784 = llvm.icmp "slt" %783, %781 : i64
    llvm.cond_br %784, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %785 = llvm.extractvalue %741[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %786 = llvm.getelementptr %785[%783] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %787 = llvm.load %786 : !llvm.ptr<i1>
    %788 = llvm.extractvalue %673[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %789 = llvm.getelementptr %788[%783] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %790 = llvm.load %789 : !llvm.ptr<i64>
    %791 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %792 = llvm.getelementptr %791[%783] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %793 = llvm.load %792 : !llvm.ptr<i64>
    %794 = llvm.select %787, %790, %793 : i1, i64
    %795 = llvm.extractvalue %779[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %796 = llvm.getelementptr %795[%783] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %794, %796 : !llvm.ptr<i64>
    %797 = llvm.add %783, %782  : i64
    llvm.br ^bb70(%797 : i64)
  ^bb72:  // pred: ^bb70
    %798 = llvm.extractvalue %779[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %799 = llvm.getelementptr %798[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %800 = llvm.load %799 : !llvm.ptr<i64>
    %801 = llvm.extractvalue %779[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %802 = llvm.getelementptr %801[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %803 = llvm.load %802 : !llvm.ptr<i64>
    %804 = llvm.extractvalue %779[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %805 = llvm.getelementptr %804[%10] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %806 = llvm.load %805 : !llvm.ptr<i64>
    %807 = llvm.extractvalue %779[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %808 = llvm.getelementptr %807[%9] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %809 = llvm.load %808 : !llvm.ptr<i64>
    %810 = llvm.icmp "sgt" %345, %800 : i64
    %811 = llvm.select %810, %345, %800 : i1, i64
    %812 = llvm.icmp "sgt" %348, %803 : i64
    %813 = llvm.select %812, %348, %803 : i1, i64
    %814 = llvm.icmp "sgt" %351, %806 : i64
    %815 = llvm.select %814, %351, %806 : i1, i64
    %816 = llvm.icmp "sgt" %354, %809 : i64
    %817 = llvm.select %816, %354, %809 : i1, i64
    %818 = llvm.mlir.constant(1 : index) : i64
    %819 = llvm.mul %817, %815  : i64
    %820 = llvm.mul %819, %813  : i64
    %821 = llvm.mul %820, %811  : i64
    %822 = llvm.mlir.null : !llvm.ptr<i32>
    %823 = llvm.getelementptr %822[%821] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %824 = llvm.ptrtoint %823 : !llvm.ptr<i32> to i64
    %825 = llvm.mlir.constant(16 : index) : i64
    %826 = llvm.add %824, %825  : i64
    %827 = llvm.call @malloc(%826) : (i64) -> !llvm.ptr<i8>
    %828 = llvm.bitcast %827 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %829 = llvm.ptrtoint %828 : !llvm.ptr<i32> to i64
    %830 = llvm.mlir.constant(1 : index) : i64
    %831 = llvm.sub %825, %830  : i64
    %832 = llvm.add %829, %831  : i64
    %833 = llvm.urem %832, %825  : i64
    %834 = llvm.sub %832, %833  : i64
    %835 = llvm.inttoptr %834 : i64 to !llvm.ptr<i32>
    %836 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %837 = llvm.insertvalue %828, %836[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %838 = llvm.insertvalue %835, %837[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %839 = llvm.mlir.constant(0 : index) : i64
    %840 = llvm.insertvalue %839, %838[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %841 = llvm.insertvalue %811, %840[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %842 = llvm.insertvalue %813, %841[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %843 = llvm.insertvalue %815, %842[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %844 = llvm.insertvalue %817, %843[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %845 = llvm.insertvalue %820, %844[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %846 = llvm.insertvalue %819, %845[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %847 = llvm.insertvalue %817, %846[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %848 = llvm.insertvalue %818, %847[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %849 = llvm.icmp "sgt" %345, %13 : i64
    %850 = llvm.icmp "sgt" %348, %13 : i64
    %851 = llvm.icmp "sgt" %351, %13 : i64
    %852 = llvm.icmp "sgt" %354, %13 : i64
    %853 = llvm.mlir.constant(0 : index) : i64
    %854 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%853 : i64)
  ^bb73(%855: i64):  // 2 preds: ^bb72, ^bb83
    %856 = llvm.icmp "slt" %855, %811 : i64
    llvm.cond_br %856, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %857 = llvm.mlir.constant(0 : index) : i64
    %858 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%857 : i64)
  ^bb75(%859: i64):  // 2 preds: ^bb74, ^bb82
    %860 = llvm.icmp "slt" %859, %813 : i64
    llvm.cond_br %860, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %861 = llvm.mlir.constant(0 : index) : i64
    %862 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%861 : i64)
  ^bb77(%863: i64):  // 2 preds: ^bb76, ^bb81
    %864 = llvm.icmp "slt" %863, %815 : i64
    llvm.cond_br %864, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %865 = llvm.mlir.constant(0 : index) : i64
    %866 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%865 : i64)
  ^bb79(%867: i64):  // 2 preds: ^bb78, ^bb80
    %868 = llvm.icmp "slt" %867, %817 : i64
    llvm.cond_br %868, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %869 = llvm.select %849, %855, %12 : i1, i64
    %870 = llvm.select %850, %859, %12 : i1, i64
    %871 = llvm.select %851, %863, %12 : i1, i64
    %872 = llvm.select %852, %867, %12 : i1, i64
    %873 = llvm.extractvalue %385[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %874 = llvm.extractvalue %385[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %875 = llvm.mul %869, %874  : i64
    %876 = llvm.extractvalue %385[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %877 = llvm.mul %870, %876  : i64
    %878 = llvm.add %875, %877  : i64
    %879 = llvm.extractvalue %385[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %880 = llvm.mul %871, %879  : i64
    %881 = llvm.add %878, %880  : i64
    %882 = llvm.add %881, %872  : i64
    %883 = llvm.getelementptr %873[%882] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %884 = llvm.load %883 : !llvm.ptr<i32>
    %885 = llvm.extractvalue %848[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %886 = llvm.extractvalue %848[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %887 = llvm.mul %855, %886  : i64
    %888 = llvm.extractvalue %848[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %889 = llvm.mul %859, %888  : i64
    %890 = llvm.add %887, %889  : i64
    %891 = llvm.extractvalue %848[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %892 = llvm.mul %863, %891  : i64
    %893 = llvm.add %890, %892  : i64
    %894 = llvm.add %893, %867  : i64
    %895 = llvm.getelementptr %885[%894] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %884, %895 : !llvm.ptr<i32>
    %896 = llvm.add %867, %866  : i64
    llvm.br ^bb79(%896 : i64)
  ^bb81:  // pred: ^bb79
    %897 = llvm.add %863, %862  : i64
    llvm.br ^bb77(%897 : i64)
  ^bb82:  // pred: ^bb77
    %898 = llvm.add %859, %858  : i64
    llvm.br ^bb75(%898 : i64)
  ^bb83:  // pred: ^bb75
    %899 = llvm.add %855, %854  : i64
    llvm.br ^bb73(%899 : i64)
  ^bb84:  // pred: ^bb73
    %900 = llvm.mlir.constant(1 : index) : i64
    %901 = llvm.mlir.constant(1 : index) : i64
    %902 = llvm.mlir.constant(1 : index) : i64
    %903 = llvm.mlir.constant(1 : index) : i64
    %904 = llvm.mlir.null : !llvm.ptr<i32>
    %905 = llvm.getelementptr %904[%900] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %906 = llvm.ptrtoint %905 : !llvm.ptr<i32> to i64
    %907 = llvm.mlir.constant(16 : index) : i64
    %908 = llvm.add %906, %907  : i64
    %909 = llvm.call @malloc(%908) : (i64) -> !llvm.ptr<i8>
    %910 = llvm.bitcast %909 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %911 = llvm.ptrtoint %910 : !llvm.ptr<i32> to i64
    %912 = llvm.mlir.constant(1 : index) : i64
    %913 = llvm.sub %907, %912  : i64
    %914 = llvm.add %911, %913  : i64
    %915 = llvm.urem %914, %907  : i64
    %916 = llvm.sub %914, %915  : i64
    %917 = llvm.inttoptr %916 : i64 to !llvm.ptr<i32>
    %918 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %919 = llvm.insertvalue %910, %918[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %920 = llvm.insertvalue %917, %919[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %921 = llvm.mlir.constant(0 : index) : i64
    %922 = llvm.insertvalue %921, %920[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %923 = llvm.insertvalue %900, %922[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %924 = llvm.insertvalue %901, %923[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %925 = llvm.insertvalue %902, %924[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %926 = llvm.insertvalue %901, %925[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %927 = llvm.insertvalue %902, %926[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %928 = llvm.insertvalue %903, %927[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %929 = llvm.mlir.constant(0 : index) : i64
    %930 = llvm.mlir.constant(1 : index) : i64
    %931 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%929 : i64)
  ^bb85(%932: i64):  // 2 preds: ^bb84, ^bb92
    %933 = llvm.icmp "slt" %932, %930 : i64
    llvm.cond_br %933, ^bb86, ^bb93
  ^bb86:  // pred: ^bb85
    %934 = llvm.mlir.constant(0 : index) : i64
    %935 = llvm.mlir.constant(1 : index) : i64
    %936 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%934 : i64)
  ^bb87(%937: i64):  // 2 preds: ^bb86, ^bb91
    %938 = llvm.icmp "slt" %937, %935 : i64
    llvm.cond_br %938, ^bb88, ^bb92
  ^bb88:  // pred: ^bb87
    %939 = llvm.mlir.constant(0 : index) : i64
    %940 = llvm.mlir.constant(1 : index) : i64
    %941 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%939 : i64)
  ^bb89(%942: i64):  // 2 preds: ^bb88, ^bb90
    %943 = llvm.icmp "slt" %942, %940 : i64
    llvm.cond_br %943, ^bb90, ^bb91
  ^bb90:  // pred: ^bb89
    %944 = llvm.extractvalue %928[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %945 = llvm.add %932, %937  : i64
    %946 = llvm.add %945, %942  : i64
    %947 = llvm.getelementptr %944[%946] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %8, %947 : !llvm.ptr<i32>
    %948 = llvm.add %942, %941  : i64
    llvm.br ^bb89(%948 : i64)
  ^bb91:  // pred: ^bb89
    %949 = llvm.add %937, %936  : i64
    llvm.br ^bb87(%949 : i64)
  ^bb92:  // pred: ^bb87
    %950 = llvm.add %932, %931  : i64
    llvm.br ^bb85(%950 : i64)
  ^bb93:  // pred: ^bb85
    %951 = llvm.mlir.constant(0 : index) : i64
    %952 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%951 : i64)
  ^bb94(%953: i64):  // 2 preds: ^bb93, ^bb104
    %954 = llvm.icmp "slt" %953, %811 : i64
    llvm.cond_br %954, ^bb95, ^bb105
  ^bb95:  // pred: ^bb94
    %955 = llvm.mlir.constant(0 : index) : i64
    %956 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%955 : i64)
  ^bb96(%957: i64):  // 2 preds: ^bb95, ^bb103
    %958 = llvm.icmp "slt" %957, %813 : i64
    llvm.cond_br %958, ^bb97, ^bb104
  ^bb97:  // pred: ^bb96
    %959 = llvm.mlir.constant(0 : index) : i64
    %960 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%959 : i64)
  ^bb98(%961: i64):  // 2 preds: ^bb97, ^bb102
    %962 = llvm.icmp "slt" %961, %815 : i64
    llvm.cond_br %962, ^bb99, ^bb103
  ^bb99:  // pred: ^bb98
    %963 = llvm.mlir.constant(0 : index) : i64
    %964 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%963 : i64)
  ^bb100(%965: i64):  // 2 preds: ^bb99, ^bb101
    %966 = llvm.icmp "slt" %965, %817 : i64
    llvm.cond_br %966, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %967 = llvm.extractvalue %848[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %968 = llvm.extractvalue %848[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %969 = llvm.mul %953, %968  : i64
    %970 = llvm.extractvalue %848[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %971 = llvm.mul %957, %970  : i64
    %972 = llvm.add %969, %971  : i64
    %973 = llvm.extractvalue %848[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %974 = llvm.mul %961, %973  : i64
    %975 = llvm.add %972, %974  : i64
    %976 = llvm.add %975, %965  : i64
    %977 = llvm.getelementptr %967[%976] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %978 = llvm.load %977 : !llvm.ptr<i32>
    %979 = llvm.extractvalue %928[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %980 = llvm.add %953, %957  : i64
    %981 = llvm.add %980, %961  : i64
    %982 = llvm.getelementptr %979[%981] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %983 = llvm.load %982 : !llvm.ptr<i32>
    %984 = llvm.icmp "slt" %983, %978 : i32
    %985 = llvm.select %984, %983, %978 : i1, i32
    %986 = llvm.extractvalue %928[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %987 = llvm.add %953, %957  : i64
    %988 = llvm.add %987, %961  : i64
    %989 = llvm.getelementptr %986[%988] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %985, %989 : !llvm.ptr<i32>
    %990 = llvm.add %965, %964  : i64
    llvm.br ^bb100(%990 : i64)
  ^bb102:  // pred: ^bb100
    %991 = llvm.add %961, %960  : i64
    llvm.br ^bb98(%991 : i64)
  ^bb103:  // pred: ^bb98
    %992 = llvm.add %957, %956  : i64
    llvm.br ^bb96(%992 : i64)
  ^bb104:  // pred: ^bb96
    %993 = llvm.add %953, %952  : i64
    llvm.br ^bb94(%993 : i64)
  ^bb105:  // pred: ^bb94
    %994 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %995 = llvm.insertvalue %601, %994[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %996 = llvm.insertvalue %928, %995[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %996 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %8, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %30 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %33 = llvm.mlir.constant(2 : i64) : i64
    %34 = llvm.mlir.constant(16 : i64) : i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %37 = llvm.mlir.constant(4 : i64) : i64
    %38 = llvm.call @omTensorCreateUntyped(%37) : (i64) -> !llvm.ptr<i8>
    %39 = llvm.mlir.constant(1 : i64) : i64
    %40 = llvm.extractvalue %31[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.bitcast %40 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %42 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.bitcast %42 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%38, %39, %41, %43) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %44 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%38, %44) : (!llvm.ptr<i8>, i64) -> ()
    %45 = llvm.call @omTensorGetShape(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %46 = llvm.call @omTensorGetStrides(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %47 = llvm.mlir.constant(0 : i64) : i64
    %48 = llvm.extractvalue %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.getelementptr %45[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.extractvalue %31[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.getelementptr %46[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.extractvalue %31[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %45[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.extractvalue %31[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.getelementptr %46[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.extractvalue %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %45[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.extractvalue %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %46[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.mlir.constant(3 : i64) : i64
    %63 = llvm.extractvalue %31[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %45[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %31[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %46[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(0 : i64) : i64
    %68 = llvm.getelementptr %36[%67] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %38, %68 : !llvm.ptr<ptr<i8>>
    %69 = llvm.mlir.constant(3 : i64) : i64
    %70 = llvm.call @omTensorCreateUntyped(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.bitcast %72 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %74 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%70, %71, %73, %75) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %76 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%70, %76) : (!llvm.ptr<i8>, i64) -> ()
    %77 = llvm.call @omTensorGetShape(%70) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %78 = llvm.call @omTensorGetStrides(%70) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.extractvalue %32[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.getelementptr %77[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.getelementptr %78[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.extractvalue %32[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.getelementptr %77[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %78[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(2 : i64) : i64
    %90 = llvm.extractvalue %32[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.getelementptr %77[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %78[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.getelementptr %36[%94] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %70, %95 : !llvm.ptr<ptr<i8>>
    %96 = llvm.call @omTensorListCreate(%36, %33, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %96 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<64 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<64 x i8>> to !llvm.ptr<i8>
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


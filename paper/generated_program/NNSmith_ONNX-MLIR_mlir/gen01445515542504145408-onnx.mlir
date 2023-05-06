module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0", "v1_0"]} {
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
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.mlir.constant(0 : i32) : i32
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %80 = llvm.bitcast %79 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %82 = llvm.insertvalue %80, %81[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %86 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %87 = llvm.bitcast %86 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %89 = llvm.insertvalue %87, %88[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %90 = llvm.insertvalue %87, %89[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.insertvalue %91, %90[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.insertvalue %93, %92[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %98 = llvm.bitcast %97 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %99 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %100 = llvm.insertvalue %98, %99[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.insertvalue %106, %105[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.insertvalue %108, %107[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.insertvalue %110, %109[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.insertvalue %112, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.insertvalue %114, %113[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.insertvalue %116, %115[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.insertvalue %118, %117[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.null : !llvm.ptr<i32>
    %126 = llvm.getelementptr %125[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i32> to i64
    %128 = llvm.mlir.constant(16 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i32> to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %128, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %128  : i64
    %137 = llvm.sub %135, %136  : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr<i32>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %120, %143[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %121, %144[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %122, %145[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %123, %146[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %124, %150[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%152 : i64)
  ^bb1(%155: i64):  // 2 preds: ^bb0, ^bb11
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%157 : i64)
  ^bb3(%160: i64):  // 2 preds: ^bb2, ^bb10
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%162 : i64)
  ^bb5(%165: i64):  // 2 preds: ^bb4, ^bb9
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%167 : i64)
  ^bb7(%170: i64):  // 2 preds: ^bb6, ^bb8
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %172 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.add %155, %160  : i64
    %174 = llvm.add %173, %165  : i64
    %175 = llvm.add %174, %170  : i64
    %176 = llvm.getelementptr %172[%175] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %177 = llvm.load %176 : !llvm.ptr<i32>
    %178 = llvm.sub %37, %177  : i32
    %179 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %155, %160  : i64
    %181 = llvm.add %180, %165  : i64
    %182 = llvm.add %181, %170  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %178, %183 : !llvm.ptr<i32>
    %184 = llvm.add %170, %169  : i64
    llvm.br ^bb7(%184 : i64)
  ^bb9:  // pred: ^bb7
    %185 = llvm.add %165, %164  : i64
    llvm.br ^bb5(%185 : i64)
  ^bb10:  // pred: ^bb5
    %186 = llvm.add %160, %159  : i64
    llvm.br ^bb3(%186 : i64)
  ^bb11:  // pred: ^bb3
    %187 = llvm.add %155, %154  : i64
    llvm.br ^bb1(%187 : i64)
  ^bb12:  // pred: ^bb1
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.null : !llvm.ptr<i32>
    %194 = llvm.getelementptr %193[%188] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i32> to i64
    %196 = llvm.mlir.constant(16 : index) : i64
    %197 = llvm.add %195, %196  : i64
    %198 = llvm.call @malloc(%197) : (i64) -> !llvm.ptr<i8>
    %199 = llvm.bitcast %198 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %200 = llvm.ptrtoint %199 : !llvm.ptr<i32> to i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.sub %196, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.urem %203, %196  : i64
    %205 = llvm.sub %203, %204  : i64
    %206 = llvm.inttoptr %205 : i64 to !llvm.ptr<i32>
    %207 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %208 = llvm.insertvalue %199, %207[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %206, %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.insertvalue %210, %209[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %188, %211[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %189, %212[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %190, %213[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %191, %214[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%220 : i64)
  ^bb13(%223: i64):  // 2 preds: ^bb12, ^bb23
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%225 : i64)
  ^bb15(%228: i64):  // 2 preds: ^bb14, ^bb22
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%230 : i64)
  ^bb17(%233: i64):  // 2 preds: ^bb16, ^bb21
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%235 : i64)
  ^bb19(%238: i64):  // 2 preds: ^bb18, ^bb20
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %240 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.add %223, %228  : i64
    %242 = llvm.add %241, %233  : i64
    %243 = llvm.add %242, %238  : i64
    %244 = llvm.getelementptr %240[%243] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %245 = llvm.load %244 : !llvm.ptr<i32>
    %246 = llvm.sub %37, %245  : i32
    %247 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.add %223, %228  : i64
    %249 = llvm.add %248, %233  : i64
    %250 = llvm.add %249, %238  : i64
    %251 = llvm.getelementptr %247[%250] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %246, %251 : !llvm.ptr<i32>
    %252 = llvm.add %238, %237  : i64
    llvm.br ^bb19(%252 : i64)
  ^bb21:  // pred: ^bb19
    %253 = llvm.add %233, %232  : i64
    llvm.br ^bb17(%253 : i64)
  ^bb22:  // pred: ^bb17
    %254 = llvm.add %228, %227  : i64
    llvm.br ^bb15(%254 : i64)
  ^bb23:  // pred: ^bb15
    %255 = llvm.add %223, %222  : i64
    llvm.br ^bb13(%255 : i64)
  ^bb24:  // pred: ^bb13
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
    llvm.br ^bb25(%279 : i64)
  ^bb25(%282: i64):  // 2 preds: ^bb24, ^bb26
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %284 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.getelementptr %284[%282] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %285 : !llvm.ptr<i64>
    %286 = llvm.add %282, %281  : i64
    llvm.br ^bb25(%286 : i64)
  ^bb27:  // pred: ^bb25
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.null : !llvm.ptr<i64>
    %290 = llvm.getelementptr %289[%287] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i64> to i64
    %292 = llvm.mlir.constant(16 : index) : i64
    %293 = llvm.add %291, %292  : i64
    %294 = llvm.call @malloc(%293) : (i64) -> !llvm.ptr<i8>
    %295 = llvm.bitcast %294 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %296 = llvm.ptrtoint %295 : !llvm.ptr<i64> to i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.sub %292, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.urem %299, %292  : i64
    %301 = llvm.sub %299, %300  : i64
    %302 = llvm.inttoptr %301 : i64 to !llvm.ptr<i64>
    %303 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %304 = llvm.insertvalue %295, %303[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %302, %304[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.insertvalue %306, %305[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %287, %307[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %288, %308[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%310 : i64)
  ^bb28(%313: i64):  // 2 preds: ^bb27, ^bb29
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %315 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.getelementptr %315[%313] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %317 = llvm.load %316 : !llvm.ptr<i64>
    %318 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %319 = llvm.load %318 : !llvm.ptr<i64>
    %320 = llvm.mul %317, %319  : i64
    %321 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.getelementptr %321[%313] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %320, %322 : !llvm.ptr<i64>
    %323 = llvm.add %313, %312  : i64
    llvm.br ^bb28(%323 : i64)
  ^bb30:  // pred: ^bb28
    %324 = llvm.mlir.constant(4 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.null : !llvm.ptr<i1>
    %327 = llvm.getelementptr %326[%324] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i1> to i64
    %329 = llvm.mlir.constant(16 : index) : i64
    %330 = llvm.add %328, %329  : i64
    %331 = llvm.call @malloc(%330) : (i64) -> !llvm.ptr<i8>
    %332 = llvm.bitcast %331 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<i1> to i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.sub %329, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.urem %336, %329  : i64
    %338 = llvm.sub %336, %337  : i64
    %339 = llvm.inttoptr %338 : i64 to !llvm.ptr<i1>
    %340 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %341 = llvm.insertvalue %332, %340[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.insertvalue %339, %341[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.insertvalue %343, %342[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.insertvalue %324, %344[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %346 = llvm.insertvalue %325, %345[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%347 : i64)
  ^bb31(%350: i64):  // 2 preds: ^bb30, ^bb32
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %352 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %353 = llvm.getelementptr %352[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.load %353 : !llvm.ptr<i64>
    %355 = llvm.extractvalue %309[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.getelementptr %355[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %357 = llvm.load %356 : !llvm.ptr<i64>
    %358 = llvm.icmp "eq" %354, %357 : i64
    %359 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.getelementptr %359[%350] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %358, %360 : !llvm.ptr<i1>
    %361 = llvm.add %350, %349  : i64
    llvm.br ^bb31(%361 : i64)
  ^bb33:  // pred: ^bb31
    %362 = llvm.mlir.constant(4 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.null : !llvm.ptr<i64>
    %365 = llvm.getelementptr %364[%362] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %366 = llvm.ptrtoint %365 : !llvm.ptr<i64> to i64
    %367 = llvm.mlir.constant(16 : index) : i64
    %368 = llvm.add %366, %367  : i64
    %369 = llvm.call @malloc(%368) : (i64) -> !llvm.ptr<i8>
    %370 = llvm.bitcast %369 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %371 = llvm.ptrtoint %370 : !llvm.ptr<i64> to i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.sub %367, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.urem %374, %367  : i64
    %376 = llvm.sub %374, %375  : i64
    %377 = llvm.inttoptr %376 : i64 to !llvm.ptr<i64>
    %378 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %379 = llvm.insertvalue %370, %378[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.insertvalue %377, %379[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.insertvalue %381, %380[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.insertvalue %362, %382[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.insertvalue %363, %383[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(4 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%385 : i64)
  ^bb34(%388: i64):  // 2 preds: ^bb33, ^bb35
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %390 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.getelementptr %390[%388] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %392 = llvm.load %391 : !llvm.ptr<i1>
    %393 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.getelementptr %393[%388] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.load %394 : !llvm.ptr<i64>
    %396 = llvm.extractvalue %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.getelementptr %396[%388] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %398 = llvm.load %397 : !llvm.ptr<i64>
    %399 = llvm.select %392, %395, %398 : i1, i64
    %400 = llvm.extractvalue %384[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.getelementptr %400[%388] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %399, %401 : !llvm.ptr<i64>
    %402 = llvm.add %388, %387  : i64
    llvm.br ^bb34(%402 : i64)
  ^bb36:  // pred: ^bb34
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.null : !llvm.ptr<i32>
    %409 = llvm.getelementptr %408[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %410 = llvm.ptrtoint %409 : !llvm.ptr<i32> to i64
    %411 = llvm.mlir.constant(16 : index) : i64
    %412 = llvm.add %410, %411  : i64
    %413 = llvm.call @malloc(%412) : (i64) -> !llvm.ptr<i8>
    %414 = llvm.bitcast %413 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i32> to i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.sub %411, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.urem %418, %411  : i64
    %420 = llvm.sub %418, %419  : i64
    %421 = llvm.inttoptr %420 : i64 to !llvm.ptr<i32>
    %422 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %423 = llvm.insertvalue %414, %422[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %421, %423[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.insertvalue %425, %424[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %403, %426[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %404, %427[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %405, %428[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %406, %429[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %405, %431[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %406, %432[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.insertvalue %407, %433[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.mlir.constant(0 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%435 : i64)
  ^bb37(%438: i64):  // 2 preds: ^bb36, ^bb47
    %439 = llvm.icmp "slt" %438, %436 : i64
    llvm.cond_br %439, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%440 : i64)
  ^bb39(%443: i64):  // 2 preds: ^bb38, ^bb46
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%445 : i64)
  ^bb41(%448: i64):  // 2 preds: ^bb40, ^bb45
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%450 : i64)
  ^bb43(%453: i64):  // 2 preds: ^bb42, ^bb44
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %455 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.add %38, %38  : i64
    %457 = llvm.add %456, %38  : i64
    %458 = llvm.add %457, %38  : i64
    %459 = llvm.getelementptr %455[%458] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %460 = llvm.load %459 : !llvm.ptr<i32>
    %461 = llvm.extractvalue %434[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.add %438, %443  : i64
    %463 = llvm.add %462, %448  : i64
    %464 = llvm.add %463, %453  : i64
    %465 = llvm.getelementptr %461[%464] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %460, %465 : !llvm.ptr<i32>
    %466 = llvm.add %453, %452  : i64
    llvm.br ^bb43(%466 : i64)
  ^bb45:  // pred: ^bb43
    %467 = llvm.add %448, %447  : i64
    llvm.br ^bb41(%467 : i64)
  ^bb46:  // pred: ^bb41
    %468 = llvm.add %443, %442  : i64
    llvm.br ^bb39(%468 : i64)
  ^bb47:  // pred: ^bb39
    %469 = llvm.add %438, %437  : i64
    llvm.br ^bb37(%469 : i64)
  ^bb48:  // pred: ^bb37
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(4 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(4 : index) : i64
    %476 = llvm.mlir.constant(4 : index) : i64
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
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%504 : i64)
  ^bb49(%507: i64):  // 2 preds: ^bb48, ^bb59
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%509 : i64)
  ^bb51(%512: i64):  // 2 preds: ^bb50, ^bb58
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%514 : i64)
  ^bb53(%517: i64):  // 2 preds: ^bb52, ^bb57
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%519 : i64)
  ^bb55(%522: i64):  // 2 preds: ^bb54, ^bb56
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %524 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.add %507, %512  : i64
    %526 = llvm.add %525, %517  : i64
    %527 = llvm.add %526, %522  : i64
    %528 = llvm.getelementptr %524[%527] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %529 = llvm.load %528 : !llvm.ptr<i32>
    %530 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.mlir.constant(4 : index) : i64
    %532 = llvm.mul %507, %531  : i64
    %533 = llvm.mlir.constant(4 : index) : i64
    %534 = llvm.mul %512, %533  : i64
    %535 = llvm.add %532, %534  : i64
    %536 = llvm.add %535, %517  : i64
    %537 = llvm.add %536, %522  : i64
    %538 = llvm.getelementptr %530[%537] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %529, %538 : !llvm.ptr<i32>
    %539 = llvm.add %522, %521  : i64
    llvm.br ^bb55(%539 : i64)
  ^bb57:  // pred: ^bb55
    %540 = llvm.add %517, %516  : i64
    llvm.br ^bb53(%540 : i64)
  ^bb58:  // pred: ^bb53
    %541 = llvm.add %512, %511  : i64
    llvm.br ^bb51(%541 : i64)
  ^bb59:  // pred: ^bb51
    %542 = llvm.add %507, %506  : i64
    llvm.br ^bb49(%542 : i64)
  ^bb60:  // pred: ^bb49
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%543 : i64)
  ^bb61(%546: i64):  // 2 preds: ^bb60, ^bb71
    %547 = llvm.icmp "slt" %546, %544 : i64
    llvm.cond_br %547, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%548 : i64)
  ^bb63(%551: i64):  // 2 preds: ^bb62, ^bb70
    %552 = llvm.icmp "slt" %551, %549 : i64
    llvm.cond_br %552, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%553 : i64)
  ^bb65(%556: i64):  // 2 preds: ^bb64, ^bb69
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%558 : i64)
  ^bb67(%561: i64):  // 2 preds: ^bb66, ^bb68
    %562 = llvm.icmp "slt" %561, %559 : i64
    llvm.cond_br %562, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.add %556, %563  : i64
    %565 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.add %546, %551  : i64
    %567 = llvm.add %566, %556  : i64
    %568 = llvm.add %567, %561  : i64
    %569 = llvm.getelementptr %565[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %570 = llvm.load %569 : !llvm.ptr<i32>
    %571 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(4 : index) : i64
    %573 = llvm.mul %546, %572  : i64
    %574 = llvm.mlir.constant(4 : index) : i64
    %575 = llvm.mul %551, %574  : i64
    %576 = llvm.add %573, %575  : i64
    %577 = llvm.add %576, %564  : i64
    %578 = llvm.add %577, %561  : i64
    %579 = llvm.getelementptr %571[%578] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %570, %579 : !llvm.ptr<i32>
    %580 = llvm.add %561, %560  : i64
    llvm.br ^bb67(%580 : i64)
  ^bb69:  // pred: ^bb67
    %581 = llvm.add %556, %555  : i64
    llvm.br ^bb65(%581 : i64)
  ^bb70:  // pred: ^bb65
    %582 = llvm.add %551, %550  : i64
    llvm.br ^bb63(%582 : i64)
  ^bb71:  // pred: ^bb63
    %583 = llvm.add %546, %545  : i64
    llvm.br ^bb61(%583 : i64)
  ^bb72:  // pred: ^bb61
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%584 : i64)
  ^bb73(%587: i64):  // 2 preds: ^bb72, ^bb83
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%589 : i64)
  ^bb75(%592: i64):  // 2 preds: ^bb74, ^bb82
    %593 = llvm.icmp "slt" %592, %590 : i64
    llvm.cond_br %593, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %594 = llvm.mlir.constant(0 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%594 : i64)
  ^bb77(%597: i64):  // 2 preds: ^bb76, ^bb81
    %598 = llvm.icmp "slt" %597, %595 : i64
    llvm.cond_br %598, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %599 = llvm.mlir.constant(0 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%599 : i64)
  ^bb79(%602: i64):  // 2 preds: ^bb78, ^bb80
    %603 = llvm.icmp "slt" %602, %600 : i64
    llvm.cond_br %603, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %604 = llvm.mlir.constant(2 : index) : i64
    %605 = llvm.add %597, %604  : i64
    %606 = llvm.extractvalue %119[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.add %587, %592  : i64
    %608 = llvm.add %607, %597  : i64
    %609 = llvm.add %608, %602  : i64
    %610 = llvm.getelementptr %606[%609] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %611 = llvm.load %610 : !llvm.ptr<i32>
    %612 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.mlir.constant(4 : index) : i64
    %614 = llvm.mul %587, %613  : i64
    %615 = llvm.mlir.constant(4 : index) : i64
    %616 = llvm.mul %592, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.add %617, %605  : i64
    %619 = llvm.add %618, %602  : i64
    %620 = llvm.getelementptr %612[%619] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %611, %620 : !llvm.ptr<i32>
    %621 = llvm.add %602, %601  : i64
    llvm.br ^bb79(%621 : i64)
  ^bb81:  // pred: ^bb79
    %622 = llvm.add %597, %596  : i64
    llvm.br ^bb77(%622 : i64)
  ^bb82:  // pred: ^bb77
    %623 = llvm.add %592, %591  : i64
    llvm.br ^bb75(%623 : i64)
  ^bb83:  // pred: ^bb75
    %624 = llvm.add %587, %586  : i64
    llvm.br ^bb73(%624 : i64)
  ^bb84:  // pred: ^bb73
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%625 : i64)
  ^bb85(%628: i64):  // 2 preds: ^bb84, ^bb95
    %629 = llvm.icmp "slt" %628, %626 : i64
    llvm.cond_br %629, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%630 : i64)
  ^bb87(%633: i64):  // 2 preds: ^bb86, ^bb94
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%635 : i64)
  ^bb89(%638: i64):  // 2 preds: ^bb88, ^bb93
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%640 : i64)
  ^bb91(%643: i64):  // 2 preds: ^bb90, ^bb92
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %645 = llvm.mlir.constant(3 : index) : i64
    %646 = llvm.add %638, %645  : i64
    %647 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.add %628, %633  : i64
    %649 = llvm.add %648, %638  : i64
    %650 = llvm.add %649, %643  : i64
    %651 = llvm.getelementptr %647[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %652 = llvm.load %651 : !llvm.ptr<i32>
    %653 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %654 = llvm.mlir.constant(4 : index) : i64
    %655 = llvm.mul %628, %654  : i64
    %656 = llvm.mlir.constant(4 : index) : i64
    %657 = llvm.mul %633, %656  : i64
    %658 = llvm.add %655, %657  : i64
    %659 = llvm.add %658, %646  : i64
    %660 = llvm.add %659, %643  : i64
    %661 = llvm.getelementptr %653[%660] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %652, %661 : !llvm.ptr<i32>
    %662 = llvm.add %643, %642  : i64
    llvm.br ^bb91(%662 : i64)
  ^bb93:  // pred: ^bb91
    %663 = llvm.add %638, %637  : i64
    llvm.br ^bb89(%663 : i64)
  ^bb94:  // pred: ^bb89
    %664 = llvm.add %633, %632  : i64
    llvm.br ^bb87(%664 : i64)
  ^bb95:  // pred: ^bb87
    %665 = llvm.add %628, %627  : i64
    llvm.br ^bb85(%665 : i64)
  ^bb96:  // pred: ^bb85
    %666 = llvm.mlir.constant(4 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.mlir.null : !llvm.ptr<i64>
    %669 = llvm.getelementptr %668[%666] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %670 = llvm.ptrtoint %669 : !llvm.ptr<i64> to i64
    %671 = llvm.mlir.constant(16 : index) : i64
    %672 = llvm.add %670, %671  : i64
    %673 = llvm.call @malloc(%672) : (i64) -> !llvm.ptr<i8>
    %674 = llvm.bitcast %673 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %675 = llvm.ptrtoint %674 : !llvm.ptr<i64> to i64
    %676 = llvm.mlir.constant(1 : index) : i64
    %677 = llvm.sub %671, %676  : i64
    %678 = llvm.add %675, %677  : i64
    %679 = llvm.urem %678, %671  : i64
    %680 = llvm.sub %678, %679  : i64
    %681 = llvm.inttoptr %680 : i64 to !llvm.ptr<i64>
    %682 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %683 = llvm.insertvalue %674, %682[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %684 = llvm.insertvalue %681, %683[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %685 = llvm.mlir.constant(0 : index) : i64
    %686 = llvm.insertvalue %685, %684[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %687 = llvm.insertvalue %666, %686[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %688 = llvm.insertvalue %667, %687[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %689 = llvm.mlir.constant(0 : index) : i64
    %690 = llvm.mlir.constant(4 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%689 : i64)
  ^bb97(%692: i64):  // 2 preds: ^bb96, ^bb98
    %693 = llvm.icmp "slt" %692, %690 : i64
    llvm.cond_br %693, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %694 = llvm.extractvalue %688[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.getelementptr %694[%692] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %695 : !llvm.ptr<i64>
    %696 = llvm.add %692, %691  : i64
    llvm.br ^bb97(%696 : i64)
  ^bb99:  // pred: ^bb97
    %697 = llvm.mlir.constant(4 : index) : i64
    %698 = llvm.mlir.constant(1 : index) : i64
    %699 = llvm.mlir.null : !llvm.ptr<i64>
    %700 = llvm.getelementptr %699[%697] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %701 = llvm.ptrtoint %700 : !llvm.ptr<i64> to i64
    %702 = llvm.mlir.constant(16 : index) : i64
    %703 = llvm.add %701, %702  : i64
    %704 = llvm.call @malloc(%703) : (i64) -> !llvm.ptr<i8>
    %705 = llvm.bitcast %704 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %706 = llvm.ptrtoint %705 : !llvm.ptr<i64> to i64
    %707 = llvm.mlir.constant(1 : index) : i64
    %708 = llvm.sub %702, %707  : i64
    %709 = llvm.add %706, %708  : i64
    %710 = llvm.urem %709, %702  : i64
    %711 = llvm.sub %709, %710  : i64
    %712 = llvm.inttoptr %711 : i64 to !llvm.ptr<i64>
    %713 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %714 = llvm.insertvalue %705, %713[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %715 = llvm.insertvalue %712, %714[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %716 = llvm.mlir.constant(0 : index) : i64
    %717 = llvm.insertvalue %716, %715[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %718 = llvm.insertvalue %697, %717[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %719 = llvm.insertvalue %698, %718[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %720 = llvm.mlir.constant(0 : index) : i64
    %721 = llvm.mlir.constant(4 : index) : i64
    %722 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%720 : i64)
  ^bb100(%723: i64):  // 2 preds: ^bb99, ^bb101
    %724 = llvm.icmp "slt" %723, %721 : i64
    llvm.cond_br %724, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %725 = llvm.extractvalue %688[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %726 = llvm.getelementptr %725[%723] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %727 = llvm.load %726 : !llvm.ptr<i64>
    %728 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %729 = llvm.load %728 : !llvm.ptr<i64>
    %730 = llvm.mul %727, %729  : i64
    %731 = llvm.extractvalue %719[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %732 = llvm.getelementptr %731[%723] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %730, %732 : !llvm.ptr<i64>
    %733 = llvm.add %723, %722  : i64
    llvm.br ^bb100(%733 : i64)
  ^bb102:  // pred: ^bb100
    %734 = llvm.mlir.constant(4 : index) : i64
    %735 = llvm.mlir.constant(1 : index) : i64
    %736 = llvm.mlir.null : !llvm.ptr<i1>
    %737 = llvm.getelementptr %736[%734] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %738 = llvm.ptrtoint %737 : !llvm.ptr<i1> to i64
    %739 = llvm.mlir.constant(16 : index) : i64
    %740 = llvm.add %738, %739  : i64
    %741 = llvm.call @malloc(%740) : (i64) -> !llvm.ptr<i8>
    %742 = llvm.bitcast %741 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %743 = llvm.ptrtoint %742 : !llvm.ptr<i1> to i64
    %744 = llvm.mlir.constant(1 : index) : i64
    %745 = llvm.sub %739, %744  : i64
    %746 = llvm.add %743, %745  : i64
    %747 = llvm.urem %746, %739  : i64
    %748 = llvm.sub %746, %747  : i64
    %749 = llvm.inttoptr %748 : i64 to !llvm.ptr<i1>
    %750 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %751 = llvm.insertvalue %742, %750[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %752 = llvm.insertvalue %749, %751[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %753 = llvm.mlir.constant(0 : index) : i64
    %754 = llvm.insertvalue %753, %752[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %755 = llvm.insertvalue %734, %754[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %756 = llvm.insertvalue %735, %755[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %757 = llvm.mlir.constant(0 : index) : i64
    %758 = llvm.mlir.constant(4 : index) : i64
    %759 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%757 : i64)
  ^bb103(%760: i64):  // 2 preds: ^bb102, ^bb104
    %761 = llvm.icmp "slt" %760, %758 : i64
    llvm.cond_br %761, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %762 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %763 = llvm.getelementptr %762[%760] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %764 = llvm.load %763 : !llvm.ptr<i64>
    %765 = llvm.extractvalue %719[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %766 = llvm.getelementptr %765[%760] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %767 = llvm.load %766 : !llvm.ptr<i64>
    %768 = llvm.icmp "eq" %764, %767 : i64
    %769 = llvm.extractvalue %756[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %770 = llvm.getelementptr %769[%760] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %768, %770 : !llvm.ptr<i1>
    %771 = llvm.add %760, %759  : i64
    llvm.br ^bb103(%771 : i64)
  ^bb105:  // pred: ^bb103
    %772 = llvm.mlir.constant(4 : index) : i64
    %773 = llvm.mlir.constant(1 : index) : i64
    %774 = llvm.mlir.null : !llvm.ptr<i64>
    %775 = llvm.getelementptr %774[%772] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %776 = llvm.ptrtoint %775 : !llvm.ptr<i64> to i64
    %777 = llvm.mlir.constant(16 : index) : i64
    %778 = llvm.add %776, %777  : i64
    %779 = llvm.call @malloc(%778) : (i64) -> !llvm.ptr<i8>
    %780 = llvm.bitcast %779 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %781 = llvm.ptrtoint %780 : !llvm.ptr<i64> to i64
    %782 = llvm.mlir.constant(1 : index) : i64
    %783 = llvm.sub %777, %782  : i64
    %784 = llvm.add %781, %783  : i64
    %785 = llvm.urem %784, %777  : i64
    %786 = llvm.sub %784, %785  : i64
    %787 = llvm.inttoptr %786 : i64 to !llvm.ptr<i64>
    %788 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %789 = llvm.insertvalue %780, %788[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %790 = llvm.insertvalue %787, %789[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %791 = llvm.mlir.constant(0 : index) : i64
    %792 = llvm.insertvalue %791, %790[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %793 = llvm.insertvalue %772, %792[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %794 = llvm.insertvalue %773, %793[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %795 = llvm.mlir.constant(0 : index) : i64
    %796 = llvm.mlir.constant(4 : index) : i64
    %797 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%795 : i64)
  ^bb106(%798: i64):  // 2 preds: ^bb105, ^bb107
    %799 = llvm.icmp "slt" %798, %796 : i64
    llvm.cond_br %799, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %800 = llvm.extractvalue %756[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %801 = llvm.getelementptr %800[%798] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %802 = llvm.load %801 : !llvm.ptr<i1>
    %803 = llvm.extractvalue %688[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %804 = llvm.getelementptr %803[%798] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %805 = llvm.load %804 : !llvm.ptr<i64>
    %806 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %807 = llvm.getelementptr %806[%798] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %808 = llvm.load %807 : !llvm.ptr<i64>
    %809 = llvm.select %802, %805, %808 : i1, i64
    %810 = llvm.extractvalue %794[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %811 = llvm.getelementptr %810[%798] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %809, %811 : !llvm.ptr<i64>
    %812 = llvm.add %798, %797  : i64
    llvm.br ^bb106(%812 : i64)
  ^bb108:  // pred: ^bb106
    %813 = llvm.mlir.constant(1 : index) : i64
    %814 = llvm.mlir.constant(1 : index) : i64
    %815 = llvm.mlir.constant(4 : index) : i64
    %816 = llvm.mlir.constant(1 : index) : i64
    %817 = llvm.mlir.constant(1 : index) : i64
    %818 = llvm.mlir.constant(4 : index) : i64
    %819 = llvm.mlir.constant(4 : index) : i64
    %820 = llvm.mlir.null : !llvm.ptr<i32>
    %821 = llvm.getelementptr %820[%819] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %822 = llvm.ptrtoint %821 : !llvm.ptr<i32> to i64
    %823 = llvm.mlir.constant(16 : index) : i64
    %824 = llvm.add %822, %823  : i64
    %825 = llvm.call @malloc(%824) : (i64) -> !llvm.ptr<i8>
    %826 = llvm.bitcast %825 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %827 = llvm.ptrtoint %826 : !llvm.ptr<i32> to i64
    %828 = llvm.mlir.constant(1 : index) : i64
    %829 = llvm.sub %823, %828  : i64
    %830 = llvm.add %827, %829  : i64
    %831 = llvm.urem %830, %823  : i64
    %832 = llvm.sub %830, %831  : i64
    %833 = llvm.inttoptr %832 : i64 to !llvm.ptr<i32>
    %834 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %835 = llvm.insertvalue %826, %834[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %836 = llvm.insertvalue %833, %835[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %837 = llvm.mlir.constant(0 : index) : i64
    %838 = llvm.insertvalue %837, %836[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %839 = llvm.insertvalue %813, %838[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %840 = llvm.insertvalue %814, %839[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %841 = llvm.insertvalue %815, %840[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %842 = llvm.insertvalue %816, %841[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %843 = llvm.insertvalue %818, %842[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %844 = llvm.insertvalue %815, %843[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %845 = llvm.insertvalue %816, %844[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %846 = llvm.insertvalue %817, %845[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %847 = llvm.mlir.constant(0 : index) : i64
    %848 = llvm.mlir.constant(1 : index) : i64
    %849 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%847 : i64)
  ^bb109(%850: i64):  // 2 preds: ^bb108, ^bb119
    %851 = llvm.icmp "slt" %850, %848 : i64
    llvm.cond_br %851, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %852 = llvm.mlir.constant(0 : index) : i64
    %853 = llvm.mlir.constant(1 : index) : i64
    %854 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%852 : i64)
  ^bb111(%855: i64):  // 2 preds: ^bb110, ^bb118
    %856 = llvm.icmp "slt" %855, %853 : i64
    llvm.cond_br %856, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %857 = llvm.mlir.constant(0 : index) : i64
    %858 = llvm.mlir.constant(4 : index) : i64
    %859 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%857 : i64)
  ^bb113(%860: i64):  // 2 preds: ^bb112, ^bb117
    %861 = llvm.icmp "slt" %860, %858 : i64
    llvm.cond_br %861, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %862 = llvm.mlir.constant(0 : index) : i64
    %863 = llvm.mlir.constant(1 : index) : i64
    %864 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%862 : i64)
  ^bb115(%865: i64):  // 2 preds: ^bb114, ^bb116
    %866 = llvm.icmp "slt" %865, %863 : i64
    llvm.cond_br %866, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %867 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %868 = llvm.mlir.constant(4 : index) : i64
    %869 = llvm.mul %38, %868  : i64
    %870 = llvm.mlir.constant(4 : index) : i64
    %871 = llvm.mul %38, %870  : i64
    %872 = llvm.add %869, %871  : i64
    %873 = llvm.add %872, %860  : i64
    %874 = llvm.add %873, %38  : i64
    %875 = llvm.getelementptr %867[%874] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %876 = llvm.load %875 : !llvm.ptr<i32>
    %877 = llvm.extractvalue %846[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %878 = llvm.mlir.constant(4 : index) : i64
    %879 = llvm.mul %850, %878  : i64
    %880 = llvm.mlir.constant(4 : index) : i64
    %881 = llvm.mul %855, %880  : i64
    %882 = llvm.add %879, %881  : i64
    %883 = llvm.add %882, %860  : i64
    %884 = llvm.add %883, %865  : i64
    %885 = llvm.getelementptr %877[%884] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %876, %885 : !llvm.ptr<i32>
    %886 = llvm.add %865, %864  : i64
    llvm.br ^bb115(%886 : i64)
  ^bb117:  // pred: ^bb115
    %887 = llvm.add %860, %859  : i64
    llvm.br ^bb113(%887 : i64)
  ^bb118:  // pred: ^bb113
    %888 = llvm.add %855, %854  : i64
    llvm.br ^bb111(%888 : i64)
  ^bb119:  // pred: ^bb111
    %889 = llvm.add %850, %849  : i64
    llvm.br ^bb109(%889 : i64)
  ^bb120:  // pred: ^bb109
    %890 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %891 = llvm.insertvalue %219, %890[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %892 = llvm.insertvalue %434, %891[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %893 = llvm.insertvalue %846, %892[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %893 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0", "v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0", "v1_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.extractvalue %126[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.mlir.constant(24 : i64) : i64
    %132 = llvm.call @malloc(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(4 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %142[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %143[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(2 : i64) : i64
    %155 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %142[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %155, %156 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %143[%154] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.mlir.constant(3 : i64) : i64
    %160 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.getelementptr %142[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %143[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %162, %163 : !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.getelementptr %133[%164] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %165 : !llvm.ptr<ptr<i8>>
    %166 = llvm.mlir.constant(4 : i64) : i64
    %167 = llvm.call @omTensorCreateUntyped(%166) : (i64) -> !llvm.ptr<i8>
    %168 = llvm.mlir.constant(1 : i64) : i64
    %169 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.bitcast %169 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %171 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.bitcast %171 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%167, %168, %170, %172) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %173 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%167, %173) : (!llvm.ptr<i8>, i64) -> ()
    %174 = llvm.call @omTensorGetShape(%167) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %175 = llvm.call @omTensorGetStrides(%167) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.getelementptr %174[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.getelementptr %175[%176] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %179, %180 : !llvm.ptr<i64>
    %181 = llvm.mlir.constant(1 : i64) : i64
    %182 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %174[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %175[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.mlir.constant(2 : i64) : i64
    %187 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %174[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %175[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.mlir.constant(3 : i64) : i64
    %192 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %174[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %175[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.mlir.constant(1 : i64) : i64
    %197 = llvm.getelementptr %133[%196] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %167, %197 : !llvm.ptr<ptr<i8>>
    %198 = llvm.mlir.constant(4 : i64) : i64
    %199 = llvm.call @omTensorCreateUntyped(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.mlir.constant(1 : i64) : i64
    %201 = llvm.extractvalue %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.bitcast %201 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %203 = llvm.extractvalue %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.bitcast %203 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%199, %200, %202, %204) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %205 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%199, %205) : (!llvm.ptr<i8>, i64) -> ()
    %206 = llvm.call @omTensorGetShape(%199) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %207 = llvm.call @omTensorGetStrides(%199) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %208 = llvm.mlir.constant(0 : i64) : i64
    %209 = llvm.extractvalue %129[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %206[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.extractvalue %129[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.getelementptr %207[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %211, %212 : !llvm.ptr<i64>
    %213 = llvm.mlir.constant(1 : i64) : i64
    %214 = llvm.extractvalue %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.getelementptr %206[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %214, %215 : !llvm.ptr<i64>
    %216 = llvm.extractvalue %129[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.getelementptr %207[%213] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %216, %217 : !llvm.ptr<i64>
    %218 = llvm.mlir.constant(2 : i64) : i64
    %219 = llvm.extractvalue %129[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %206[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.extractvalue %129[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.getelementptr %207[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %221, %222 : !llvm.ptr<i64>
    %223 = llvm.mlir.constant(3 : i64) : i64
    %224 = llvm.extractvalue %129[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %206[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.getelementptr %207[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(2 : i64) : i64
    %229 = llvm.getelementptr %133[%228] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %199, %229 : !llvm.ptr<ptr<i8>>
    %230 = llvm.call @omTensorListCreate(%133, %130, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %230 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


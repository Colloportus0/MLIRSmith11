module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [5 , 1 , 2 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<[[5], [3]]> : tensor<2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x i32>>
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<1x1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x array<2 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v4_0", "v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v6_0"]} {
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
    %48 = llvm.mlir.constant(-2147483648 : i32) : i32
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<2 x i32>>>>>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x array<2 x i32>>>>>> to !llvm.ptr<i32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.mlir.constant(4 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<1 x i32>>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<2 x array<1 x i32>>> to !llvm.ptr<i32>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(4 : index) : i64
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.mlir.null : !llvm.ptr<i32>
    %101 = llvm.getelementptr %100[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.ptrtoint %101 : !llvm.ptr<i32> to i64
    %103 = llvm.mlir.constant(16 : index) : i64
    %104 = llvm.add %102, %103  : i64
    %105 = llvm.call @malloc(%104) : (i64) -> !llvm.ptr<i8>
    %106 = llvm.bitcast %105 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %107 = llvm.ptrtoint %106 : !llvm.ptr<i32> to i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.sub %103, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.urem %110, %103  : i64
    %112 = llvm.sub %110, %111  : i64
    %113 = llvm.inttoptr %112 : i64 to !llvm.ptr<i32>
    %114 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %115 = llvm.insertvalue %106, %114[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %113, %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.insertvalue %117, %116[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %92, %118[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %94, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %95, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %98, %122[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %97, %123[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %95, %124[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %96, %125[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%127 : i64)
  ^bb1(%130: i64):  // 2 preds: ^bb0, ^bb11
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%132 : i64)
  ^bb3(%135: i64):  // 2 preds: ^bb2, ^bb10
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%137 : i64)
  ^bb5(%140: i64):  // 2 preds: ^bb4, ^bb9
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%142 : i64)
  ^bb7(%145: i64):  // 2 preds: ^bb6, ^bb8
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %147 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %148 = llvm.add %140, %49  : i64
    %149 = llvm.getelementptr %147[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.load %149 : !llvm.ptr<i32>
    %151 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mul %130, %152  : i64
    %154 = llvm.mlir.constant(4 : index) : i64
    %155 = llvm.mul %135, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %140, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %145  : i64
    %161 = llvm.getelementptr %151[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.icmp "slt" %150, %162 : i32
    %164 = llvm.select %163, %150, %162 : i1, i32
    %165 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(4 : index) : i64
    %167 = llvm.mul %130, %166  : i64
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mul %135, %168  : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mul %140, %171  : i64
    %173 = llvm.add %170, %172  : i64
    %174 = llvm.add %173, %145  : i64
    %175 = llvm.getelementptr %165[%174] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %175 : !llvm.ptr<i32>
    %176 = llvm.add %145, %144  : i64
    llvm.br ^bb7(%176 : i64)
  ^bb9:  // pred: ^bb7
    %177 = llvm.add %140, %139  : i64
    llvm.br ^bb5(%177 : i64)
  ^bb10:  // pred: ^bb5
    %178 = llvm.add %135, %134  : i64
    llvm.br ^bb3(%178 : i64)
  ^bb11:  // pred: ^bb3
    %179 = llvm.add %130, %129  : i64
    llvm.br ^bb1(%179 : i64)
  ^bb12:  // pred: ^bb1
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mlir.constant(4 : index) : i64
    %187 = llvm.mlir.constant(4 : index) : i64
    %188 = llvm.mlir.null : !llvm.ptr<i32>
    %189 = llvm.getelementptr %188[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.ptrtoint %189 : !llvm.ptr<i32> to i64
    %191 = llvm.mlir.constant(16 : index) : i64
    %192 = llvm.add %190, %191  : i64
    %193 = llvm.call @malloc(%192) : (i64) -> !llvm.ptr<i8>
    %194 = llvm.bitcast %193 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %195 = llvm.ptrtoint %194 : !llvm.ptr<i32> to i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.sub %191, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.urem %198, %191  : i64
    %200 = llvm.sub %198, %199  : i64
    %201 = llvm.inttoptr %200 : i64 to !llvm.ptr<i32>
    %202 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %203 = llvm.insertvalue %194, %202[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %201, %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.insertvalue %205, %204[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %180, %206[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %181, %207[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.insertvalue %182, %208[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %183, %209[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %186, %210[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %183, %212[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %184, %213[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%215 : i64)
  ^bb13(%218: i64):  // 2 preds: ^bb12, ^bb23
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%220 : i64)
  ^bb15(%223: i64):  // 2 preds: ^bb14, ^bb22
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%225 : i64)
  ^bb17(%228: i64):  // 2 preds: ^bb16, ^bb21
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%230 : i64)
  ^bb19(%233: i64):  // 2 preds: ^bb18, ^bb20
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %235 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(4 : index) : i64
    %237 = llvm.mul %218, %236  : i64
    %238 = llvm.mlir.constant(4 : index) : i64
    %239 = llvm.mul %223, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mul %228, %241  : i64
    %243 = llvm.add %240, %242  : i64
    %244 = llvm.add %243, %233  : i64
    %245 = llvm.getelementptr %235[%244] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %48, %245 : !llvm.ptr<i32>
    %246 = llvm.add %233, %232  : i64
    llvm.br ^bb19(%246 : i64)
  ^bb21:  // pred: ^bb19
    %247 = llvm.add %228, %227  : i64
    llvm.br ^bb17(%247 : i64)
  ^bb22:  // pred: ^bb17
    %248 = llvm.add %223, %222  : i64
    llvm.br ^bb15(%248 : i64)
  ^bb23:  // pred: ^bb15
    %249 = llvm.add %218, %217  : i64
    llvm.br ^bb13(%249 : i64)
  ^bb24:  // pred: ^bb13
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%250 : i64)
  ^bb25(%253: i64):  // 2 preds: ^bb24, ^bb38
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb26, ^bb39
  ^bb26:  // pred: ^bb25
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%255 : i64)
  ^bb27(%258: i64):  // 2 preds: ^bb26, ^bb37
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb28, ^bb38
  ^bb28:  // pred: ^bb27
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%260 : i64)
  ^bb29(%263: i64):  // 2 preds: ^bb28, ^bb36
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb30, ^bb37
  ^bb30:  // pred: ^bb29
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%265 : i64)
  ^bb31(%268: i64):  // 2 preds: ^bb30, ^bb35
    %269 = llvm.icmp "slt" %268, %266 : i64
    llvm.cond_br %269, ^bb32, ^bb36
  ^bb32:  // pred: ^bb31
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%270 : i64)
  ^bb33(%273: i64):  // 2 preds: ^bb32, ^bb34
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %275 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mul %253, %276  : i64
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mul %258, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mul %263, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %268, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.add %286, %273  : i64
    %288 = llvm.getelementptr %275[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(4 : index) : i64
    %292 = llvm.mul %258, %291  : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mul %263, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mul %268, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.add %298, %273  : i64
    %300 = llvm.getelementptr %290[%299] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %301 = llvm.load %300 : !llvm.ptr<i32>
    %302 = llvm.icmp "sgt" %301, %289 : i32
    %303 = llvm.select %302, %301, %289 : i1, i32
    %304 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mul %258, %305  : i64
    %307 = llvm.mlir.constant(4 : index) : i64
    %308 = llvm.mul %263, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mul %268, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.add %312, %273  : i64
    %314 = llvm.getelementptr %304[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %303, %314 : !llvm.ptr<i32>
    %315 = llvm.add %273, %272  : i64
    llvm.br ^bb33(%315 : i64)
  ^bb35:  // pred: ^bb33
    %316 = llvm.add %268, %267  : i64
    llvm.br ^bb31(%316 : i64)
  ^bb36:  // pred: ^bb31
    %317 = llvm.add %263, %262  : i64
    llvm.br ^bb29(%317 : i64)
  ^bb37:  // pred: ^bb29
    %318 = llvm.add %258, %257  : i64
    llvm.br ^bb27(%318 : i64)
  ^bb38:  // pred: ^bb27
    %319 = llvm.add %253, %252  : i64
    llvm.br ^bb25(%319 : i64)
  ^bb39:  // pred: ^bb25
    %320 = llvm.mlir.constant(5 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(4 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(20 : index) : i64
    %328 = llvm.mlir.null : !llvm.ptr<i32>
    %329 = llvm.getelementptr %328[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i32> to i64
    %331 = llvm.mlir.constant(16 : index) : i64
    %332 = llvm.add %330, %331  : i64
    %333 = llvm.call @malloc(%332) : (i64) -> !llvm.ptr<i8>
    %334 = llvm.bitcast %333 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i32> to i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.sub %331, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.urem %338, %331  : i64
    %340 = llvm.sub %338, %339  : i64
    %341 = llvm.inttoptr %340 : i64 to !llvm.ptr<i32>
    %342 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %343 = llvm.insertvalue %334, %342[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %341, %343[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.insertvalue %345, %344[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %320, %346[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %321, %347[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %323, %349[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %326, %350[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %325, %351[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %323, %352[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %324, %353[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%355 : i64)
  ^bb40(%358: i64):  // 2 preds: ^bb39, ^bb50
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%360 : i64)
  ^bb42(%363: i64):  // 2 preds: ^bb41, ^bb49
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%365 : i64)
  ^bb44(%368: i64):  // 2 preds: ^bb43, ^bb48
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%370 : i64)
  ^bb46(%373: i64):  // 2 preds: ^bb45, ^bb47
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %375 = llvm.extractvalue %214[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mul %358, %376  : i64
    %378 = llvm.mlir.constant(4 : index) : i64
    %379 = llvm.mul %363, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mul %368, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %373  : i64
    %385 = llvm.getelementptr %375[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %386 = llvm.load %385 : !llvm.ptr<i32>
    %387 = llvm.extractvalue %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mul %358, %388  : i64
    %390 = llvm.mlir.constant(4 : index) : i64
    %391 = llvm.mul %363, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %368, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.add %395, %373  : i64
    %397 = llvm.getelementptr %387[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %386, %397 : !llvm.ptr<i32>
    %398 = llvm.add %373, %372  : i64
    llvm.br ^bb46(%398 : i64)
  ^bb48:  // pred: ^bb46
    %399 = llvm.add %368, %367  : i64
    llvm.br ^bb44(%399 : i64)
  ^bb49:  // pred: ^bb44
    %400 = llvm.add %363, %362  : i64
    llvm.br ^bb42(%400 : i64)
  ^bb50:  // pred: ^bb42
    %401 = llvm.add %358, %357  : i64
    llvm.br ^bb40(%401 : i64)
  ^bb51:  // pred: ^bb40
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%402 : i64)
  ^bb52(%405: i64):  // 2 preds: ^bb51, ^bb62
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%407 : i64)
  ^bb54(%410: i64):  // 2 preds: ^bb53, ^bb61
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%412 : i64)
  ^bb56(%415: i64):  // 2 preds: ^bb55, ^bb60
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%417 : i64)
  ^bb58(%420: i64):  // 2 preds: ^bb57, ^bb59
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.add %405, %422  : i64
    %424 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mul %405, %425  : i64
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mul %410, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %415, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.add %432, %420  : i64
    %434 = llvm.getelementptr %424[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.load %434 : !llvm.ptr<i32>
    %436 = llvm.extractvalue %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.mlir.constant(4 : index) : i64
    %438 = llvm.mul %423, %437  : i64
    %439 = llvm.mlir.constant(4 : index) : i64
    %440 = llvm.mul %410, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.mlir.constant(2 : index) : i64
    %443 = llvm.mul %415, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.add %444, %420  : i64
    %446 = llvm.getelementptr %436[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %435, %446 : !llvm.ptr<i32>
    %447 = llvm.add %420, %419  : i64
    llvm.br ^bb58(%447 : i64)
  ^bb60:  // pred: ^bb58
    %448 = llvm.add %415, %414  : i64
    llvm.br ^bb56(%448 : i64)
  ^bb61:  // pred: ^bb56
    %449 = llvm.add %410, %409  : i64
    llvm.br ^bb54(%449 : i64)
  ^bb62:  // pred: ^bb54
    %450 = llvm.add %405, %404  : i64
    llvm.br ^bb52(%450 : i64)
  ^bb63:  // pred: ^bb52
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%451 : i64)
  ^bb64(%454: i64):  // 2 preds: ^bb63, ^bb74
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%456 : i64)
  ^bb66(%459: i64):  // 2 preds: ^bb65, ^bb73
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%461 : i64)
  ^bb68(%464: i64):  // 2 preds: ^bb67, ^bb72
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%466 : i64)
  ^bb70(%469: i64):  // 2 preds: ^bb69, ^bb71
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.add %454, %471  : i64
    %473 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.mlir.constant(4 : index) : i64
    %475 = llvm.mul %454, %474  : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %459, %476  : i64
    %478 = llvm.add %475, %477  : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %464, %479  : i64
    %481 = llvm.add %478, %480  : i64
    %482 = llvm.add %481, %469  : i64
    %483 = llvm.getelementptr %473[%482] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %484 = llvm.load %483 : !llvm.ptr<i32>
    %485 = llvm.extractvalue %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mul %472, %486  : i64
    %488 = llvm.mlir.constant(4 : index) : i64
    %489 = llvm.mul %459, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mul %464, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.add %493, %469  : i64
    %495 = llvm.getelementptr %485[%494] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %484, %495 : !llvm.ptr<i32>
    %496 = llvm.add %469, %468  : i64
    llvm.br ^bb70(%496 : i64)
  ^bb72:  // pred: ^bb70
    %497 = llvm.add %464, %463  : i64
    llvm.br ^bb68(%497 : i64)
  ^bb73:  // pred: ^bb68
    %498 = llvm.add %459, %458  : i64
    llvm.br ^bb66(%498 : i64)
  ^bb74:  // pred: ^bb66
    %499 = llvm.add %454, %453  : i64
    llvm.br ^bb64(%499 : i64)
  ^bb75:  // pred: ^bb64
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%500 : i64)
  ^bb76(%503: i64):  // 2 preds: ^bb75, ^bb86
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%505 : i64)
  ^bb78(%508: i64):  // 2 preds: ^bb77, ^bb85
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%510 : i64)
  ^bb80(%513: i64):  // 2 preds: ^bb79, ^bb84
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%515 : i64)
  ^bb82(%518: i64):  // 2 preds: ^bb81, ^bb83
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %520 = llvm.mlir.constant(3 : index) : i64
    %521 = llvm.add %503, %520  : i64
    %522 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.mlir.constant(4 : index) : i64
    %524 = llvm.mul %503, %523  : i64
    %525 = llvm.mlir.constant(4 : index) : i64
    %526 = llvm.mul %508, %525  : i64
    %527 = llvm.add %524, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %513, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %518  : i64
    %532 = llvm.getelementptr %522[%531] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %533 = llvm.load %532 : !llvm.ptr<i32>
    %534 = llvm.extractvalue %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.mlir.constant(4 : index) : i64
    %536 = llvm.mul %521, %535  : i64
    %537 = llvm.mlir.constant(4 : index) : i64
    %538 = llvm.mul %508, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mul %513, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.add %542, %518  : i64
    %544 = llvm.getelementptr %534[%543] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %533, %544 : !llvm.ptr<i32>
    %545 = llvm.add %518, %517  : i64
    llvm.br ^bb82(%545 : i64)
  ^bb84:  // pred: ^bb82
    %546 = llvm.add %513, %512  : i64
    llvm.br ^bb80(%546 : i64)
  ^bb85:  // pred: ^bb80
    %547 = llvm.add %508, %507  : i64
    llvm.br ^bb78(%547 : i64)
  ^bb86:  // pred: ^bb78
    %548 = llvm.add %503, %502  : i64
    llvm.br ^bb76(%548 : i64)
  ^bb87:  // pred: ^bb76
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%549 : i64)
  ^bb88(%552: i64):  // 2 preds: ^bb87, ^bb98
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%554 : i64)
  ^bb90(%557: i64):  // 2 preds: ^bb89, ^bb97
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %559 = llvm.mlir.constant(0 : index) : i64
    %560 = llvm.mlir.constant(2 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%559 : i64)
  ^bb92(%562: i64):  // 2 preds: ^bb91, ^bb96
    %563 = llvm.icmp "slt" %562, %560 : i64
    llvm.cond_br %563, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %564 = llvm.mlir.constant(0 : index) : i64
    %565 = llvm.mlir.constant(2 : index) : i64
    %566 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%564 : i64)
  ^bb94(%567: i64):  // 2 preds: ^bb93, ^bb95
    %568 = llvm.icmp "slt" %567, %565 : i64
    llvm.cond_br %568, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %569 = llvm.mlir.constant(4 : index) : i64
    %570 = llvm.add %552, %569  : i64
    %571 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(4 : index) : i64
    %573 = llvm.mul %552, %572  : i64
    %574 = llvm.mlir.constant(4 : index) : i64
    %575 = llvm.mul %557, %574  : i64
    %576 = llvm.add %573, %575  : i64
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mul %562, %577  : i64
    %579 = llvm.add %576, %578  : i64
    %580 = llvm.add %579, %567  : i64
    %581 = llvm.getelementptr %571[%580] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %582 = llvm.load %581 : !llvm.ptr<i32>
    %583 = llvm.extractvalue %354[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.mlir.constant(4 : index) : i64
    %585 = llvm.mul %570, %584  : i64
    %586 = llvm.mlir.constant(4 : index) : i64
    %587 = llvm.mul %557, %586  : i64
    %588 = llvm.add %585, %587  : i64
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mul %562, %589  : i64
    %591 = llvm.add %588, %590  : i64
    %592 = llvm.add %591, %567  : i64
    %593 = llvm.getelementptr %583[%592] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %582, %593 : !llvm.ptr<i32>
    %594 = llvm.add %567, %566  : i64
    llvm.br ^bb94(%594 : i64)
  ^bb96:  // pred: ^bb94
    %595 = llvm.add %562, %561  : i64
    llvm.br ^bb92(%595 : i64)
  ^bb97:  // pred: ^bb92
    %596 = llvm.add %557, %556  : i64
    llvm.br ^bb90(%596 : i64)
  ^bb98:  // pred: ^bb90
    %597 = llvm.add %552, %551  : i64
    llvm.br ^bb88(%597 : i64)
  ^bb99:  // pred: ^bb88
    %598 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %599 = llvm.insertvalue %47, %598[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %600 = llvm.insertvalue %354, %599[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %600 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v4_0", "v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v1_0", "v6_0"]} {
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %168 = llvm.extractvalue %167[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.extractvalue %167[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %170 = llvm.mlir.constant(2 : i64) : i64
    %171 = llvm.mlir.constant(16 : i64) : i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %174 = llvm.mlir.constant(4 : i64) : i64
    %175 = llvm.call @omTensorCreateUntyped(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.mlir.constant(0 : i64) : i64
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
    %206 = llvm.mlir.constant(4 : i64) : i64
    %207 = llvm.call @omTensorCreateUntyped(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.mlir.constant(1 : i64) : i64
    %209 = llvm.extractvalue %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.bitcast %209 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %211 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.bitcast %211 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%207, %208, %210, %212) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %213 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%207, %213) : (!llvm.ptr<i8>, i64) -> ()
    %214 = llvm.call @omTensorGetShape(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %215 = llvm.call @omTensorGetStrides(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %216 = llvm.mlir.constant(0 : i64) : i64
    %217 = llvm.extractvalue %169[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.getelementptr %214[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %217, %218 : !llvm.ptr<i64>
    %219 = llvm.extractvalue %169[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %215[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.mlir.constant(1 : i64) : i64
    %222 = llvm.extractvalue %169[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.getelementptr %214[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %223 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %215[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.mlir.constant(2 : i64) : i64
    %227 = llvm.extractvalue %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.getelementptr %214[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %228 : !llvm.ptr<i64>
    %229 = llvm.extractvalue %169[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.getelementptr %215[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.mlir.constant(3 : i64) : i64
    %232 = llvm.extractvalue %169[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.getelementptr %214[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %232, %233 : !llvm.ptr<i64>
    %234 = llvm.extractvalue %169[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.getelementptr %215[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %234, %235 : !llvm.ptr<i64>
    %236 = llvm.mlir.constant(1 : i64) : i64
    %237 = llvm.getelementptr %173[%236] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %207, %237 : !llvm.ptr<ptr<i8>>
    %238 = llvm.call @omTensorListCreate(%173, %170, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %238 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


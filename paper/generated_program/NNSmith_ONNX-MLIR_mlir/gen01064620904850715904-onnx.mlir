module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 5 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<3> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v10_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
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
    %24 = llvm.mlir.constant(0 : i32) : i32
    %25 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
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
    %48 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %72 = llvm.bitcast %71 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(5 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(5 : index) : i64
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
    %119 = llvm.insertvalue %94, %118[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %95, %119[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %96, %120[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %97, %121[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %95, %122[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %96, %123[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %97, %124[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %98, %125[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%137 : i64)
  ^bb5(%140: i64):  // 2 preds: ^bb4, ^bb9
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%142 : i64)
  ^bb7(%145: i64):  // 2 preds: ^bb6, ^bb8
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %147 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.add %130, %135  : i64
    %149 = llvm.add %148, %140  : i64
    %150 = llvm.add %149, %145  : i64
    %151 = llvm.getelementptr %147[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.load %151 : !llvm.ptr<i32>
    %153 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.mlir.constant(5 : index) : i64
    %155 = llvm.mul %130, %154  : i64
    %156 = llvm.add %155, %135  : i64
    %157 = llvm.add %156, %140  : i64
    %158 = llvm.add %157, %145  : i64
    %159 = llvm.getelementptr %153[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %152, %159 : !llvm.ptr<i32>
    %160 = llvm.add %145, %144  : i64
    llvm.br ^bb7(%160 : i64)
  ^bb9:  // pred: ^bb7
    %161 = llvm.add %140, %139  : i64
    llvm.br ^bb5(%161 : i64)
  ^bb10:  // pred: ^bb5
    %162 = llvm.add %135, %134  : i64
    llvm.br ^bb3(%162 : i64)
  ^bb11:  // pred: ^bb3
    %163 = llvm.add %130, %129  : i64
    llvm.br ^bb1(%163 : i64)
  ^bb12:  // pred: ^bb1
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb23
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%169 : i64)
  ^bb15(%172: i64):  // 2 preds: ^bb14, ^bb22
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%174 : i64)
  ^bb17(%177: i64):  // 2 preds: ^bb16, ^bb21
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%179 : i64)
  ^bb19(%182: i64):  // 2 preds: ^bb18, ^bb20
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.add %172, %184  : i64
    %186 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.add %167, %172  : i64
    %188 = llvm.add %187, %177  : i64
    %189 = llvm.add %188, %182  : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(5 : index) : i64
    %194 = llvm.mul %167, %193  : i64
    %195 = llvm.add %194, %185  : i64
    %196 = llvm.add %195, %177  : i64
    %197 = llvm.add %196, %182  : i64
    %198 = llvm.getelementptr %192[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %191, %198 : !llvm.ptr<i32>
    %199 = llvm.add %182, %181  : i64
    llvm.br ^bb19(%199 : i64)
  ^bb21:  // pred: ^bb19
    %200 = llvm.add %177, %176  : i64
    llvm.br ^bb17(%200 : i64)
  ^bb22:  // pred: ^bb17
    %201 = llvm.add %172, %171  : i64
    llvm.br ^bb15(%201 : i64)
  ^bb23:  // pred: ^bb15
    %202 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%202 : i64)
  ^bb24:  // pred: ^bb13
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%203 : i64)
  ^bb25(%206: i64):  // 2 preds: ^bb24, ^bb35
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%208 : i64)
  ^bb27(%211: i64):  // 2 preds: ^bb26, ^bb34
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%213 : i64)
  ^bb29(%216: i64):  // 2 preds: ^bb28, ^bb33
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%218 : i64)
  ^bb31(%221: i64):  // 2 preds: ^bb30, ^bb32
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.add %211, %223  : i64
    %225 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.add %206, %211  : i64
    %227 = llvm.add %226, %216  : i64
    %228 = llvm.add %227, %221  : i64
    %229 = llvm.getelementptr %225[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(5 : index) : i64
    %233 = llvm.mul %206, %232  : i64
    %234 = llvm.add %233, %224  : i64
    %235 = llvm.add %234, %216  : i64
    %236 = llvm.add %235, %221  : i64
    %237 = llvm.getelementptr %231[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %230, %237 : !llvm.ptr<i32>
    %238 = llvm.add %221, %220  : i64
    llvm.br ^bb31(%238 : i64)
  ^bb33:  // pred: ^bb31
    %239 = llvm.add %216, %215  : i64
    llvm.br ^bb29(%239 : i64)
  ^bb34:  // pred: ^bb29
    %240 = llvm.add %211, %210  : i64
    llvm.br ^bb27(%240 : i64)
  ^bb35:  // pred: ^bb27
    %241 = llvm.add %206, %205  : i64
    llvm.br ^bb25(%241 : i64)
  ^bb36:  // pred: ^bb25
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%242 : i64)
  ^bb37(%245: i64):  // 2 preds: ^bb36, ^bb47
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%247 : i64)
  ^bb39(%250: i64):  // 2 preds: ^bb38, ^bb46
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%252 : i64)
  ^bb41(%255: i64):  // 2 preds: ^bb40, ^bb45
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%257 : i64)
  ^bb43(%260: i64):  // 2 preds: ^bb42, ^bb44
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %262 = llvm.mlir.constant(3 : index) : i64
    %263 = llvm.add %250, %262  : i64
    %264 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.add %245, %250  : i64
    %266 = llvm.add %265, %255  : i64
    %267 = llvm.add %266, %260  : i64
    %268 = llvm.getelementptr %264[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %269 = llvm.load %268 : !llvm.ptr<i32>
    %270 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.mlir.constant(5 : index) : i64
    %272 = llvm.mul %245, %271  : i64
    %273 = llvm.add %272, %263  : i64
    %274 = llvm.add %273, %255  : i64
    %275 = llvm.add %274, %260  : i64
    %276 = llvm.getelementptr %270[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %269, %276 : !llvm.ptr<i32>
    %277 = llvm.add %260, %259  : i64
    llvm.br ^bb43(%277 : i64)
  ^bb45:  // pred: ^bb43
    %278 = llvm.add %255, %254  : i64
    llvm.br ^bb41(%278 : i64)
  ^bb46:  // pred: ^bb41
    %279 = llvm.add %250, %249  : i64
    llvm.br ^bb39(%279 : i64)
  ^bb47:  // pred: ^bb39
    %280 = llvm.add %245, %244  : i64
    llvm.br ^bb37(%280 : i64)
  ^bb48:  // pred: ^bb37
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%281 : i64)
  ^bb49(%284: i64):  // 2 preds: ^bb48, ^bb59
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%286 : i64)
  ^bb51(%289: i64):  // 2 preds: ^bb50, ^bb58
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%291 : i64)
  ^bb53(%294: i64):  // 2 preds: ^bb52, ^bb57
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%296 : i64)
  ^bb55(%299: i64):  // 2 preds: ^bb54, ^bb56
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.add %289, %301  : i64
    %303 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.add %284, %289  : i64
    %305 = llvm.add %304, %294  : i64
    %306 = llvm.add %305, %299  : i64
    %307 = llvm.getelementptr %303[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %308 = llvm.load %307 : !llvm.ptr<i32>
    %309 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(5 : index) : i64
    %311 = llvm.mul %284, %310  : i64
    %312 = llvm.add %311, %302  : i64
    %313 = llvm.add %312, %294  : i64
    %314 = llvm.add %313, %299  : i64
    %315 = llvm.getelementptr %309[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %308, %315 : !llvm.ptr<i32>
    %316 = llvm.add %299, %298  : i64
    llvm.br ^bb55(%316 : i64)
  ^bb57:  // pred: ^bb55
    %317 = llvm.add %294, %293  : i64
    llvm.br ^bb53(%317 : i64)
  ^bb58:  // pred: ^bb53
    %318 = llvm.add %289, %288  : i64
    llvm.br ^bb51(%318 : i64)
  ^bb59:  // pred: ^bb51
    %319 = llvm.add %284, %283  : i64
    llvm.br ^bb49(%319 : i64)
  ^bb60:  // pred: ^bb49
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mlir.constant(5 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(10 : index) : i64
    %326 = llvm.mlir.null : !llvm.ptr<i32>
    %327 = llvm.getelementptr %326[%325] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i32> to i64
    %329 = llvm.mlir.constant(16 : index) : i64
    %330 = llvm.add %328, %329  : i64
    %331 = llvm.call @malloc(%330) : (i64) -> !llvm.ptr<i8>
    %332 = llvm.bitcast %331 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<i32> to i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.sub %329, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.urem %336, %329  : i64
    %338 = llvm.sub %336, %337  : i64
    %339 = llvm.inttoptr %338 : i64 to !llvm.ptr<i32>
    %340 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %341 = llvm.insertvalue %332, %340[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %339, %341[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.insertvalue %343, %342[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %320, %344[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %321, %345[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %322, %346[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %323, %347[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %321, %348[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %322, %349[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %323, %350[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %324, %351[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%353 : i64)
  ^bb61(%356: i64):  // 2 preds: ^bb60, ^bb71
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(5 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%358 : i64)
  ^bb63(%361: i64):  // 2 preds: ^bb62, ^bb70
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%363 : i64)
  ^bb65(%366: i64):  // 2 preds: ^bb64, ^bb69
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%368 : i64)
  ^bb67(%371: i64):  // 2 preds: ^bb66, ^bb68
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %373 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(5 : index) : i64
    %375 = llvm.mul %356, %374  : i64
    %376 = llvm.add %375, %361  : i64
    %377 = llvm.add %376, %366  : i64
    %378 = llvm.add %377, %371  : i64
    %379 = llvm.getelementptr %373[%378] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %380 = llvm.load %379 : !llvm.ptr<i32>
    %381 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mlir.constant(5 : index) : i64
    %383 = llvm.mul %356, %382  : i64
    %384 = llvm.add %383, %361  : i64
    %385 = llvm.add %384, %366  : i64
    %386 = llvm.add %385, %371  : i64
    %387 = llvm.getelementptr %381[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %380, %387 : !llvm.ptr<i32>
    %388 = llvm.add %371, %370  : i64
    llvm.br ^bb67(%388 : i64)
  ^bb69:  // pred: ^bb67
    %389 = llvm.add %366, %365  : i64
    llvm.br ^bb65(%389 : i64)
  ^bb70:  // pred: ^bb65
    %390 = llvm.add %361, %360  : i64
    llvm.br ^bb63(%390 : i64)
  ^bb71:  // pred: ^bb63
    %391 = llvm.add %356, %355  : i64
    llvm.br ^bb61(%391 : i64)
  ^bb72:  // pred: ^bb61
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%392 : i64)
  ^bb73(%395: i64):  // 2 preds: ^bb72, ^bb83
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(5 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%397 : i64)
  ^bb75(%400: i64):  // 2 preds: ^bb74, ^bb82
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%402 : i64)
  ^bb77(%405: i64):  // 2 preds: ^bb76, ^bb81
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%407 : i64)
  ^bb79(%410: i64):  // 2 preds: ^bb78, ^bb80
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.add %395, %412  : i64
    %414 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(5 : index) : i64
    %416 = llvm.mul %395, %415  : i64
    %417 = llvm.add %416, %400  : i64
    %418 = llvm.add %417, %405  : i64
    %419 = llvm.add %418, %410  : i64
    %420 = llvm.getelementptr %414[%419] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %421 = llvm.load %420 : !llvm.ptr<i32>
    %422 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(5 : index) : i64
    %424 = llvm.mul %413, %423  : i64
    %425 = llvm.add %424, %400  : i64
    %426 = llvm.add %425, %405  : i64
    %427 = llvm.add %426, %410  : i64
    %428 = llvm.getelementptr %422[%427] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %421, %428 : !llvm.ptr<i32>
    %429 = llvm.add %410, %409  : i64
    llvm.br ^bb79(%429 : i64)
  ^bb81:  // pred: ^bb79
    %430 = llvm.add %405, %404  : i64
    llvm.br ^bb77(%430 : i64)
  ^bb82:  // pred: ^bb77
    %431 = llvm.add %400, %399  : i64
    llvm.br ^bb75(%431 : i64)
  ^bb83:  // pred: ^bb75
    %432 = llvm.add %395, %394  : i64
    llvm.br ^bb73(%432 : i64)
  ^bb84:  // pred: ^bb73
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(5 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mlir.constant(10 : index) : i64
    %440 = llvm.mlir.constant(10 : index) : i64
    %441 = llvm.mlir.null : !llvm.ptr<i32>
    %442 = llvm.getelementptr %441[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.ptrtoint %442 : !llvm.ptr<i32> to i64
    %444 = llvm.mlir.constant(16 : index) : i64
    %445 = llvm.add %443, %444  : i64
    %446 = llvm.call @malloc(%445) : (i64) -> !llvm.ptr<i8>
    %447 = llvm.bitcast %446 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %448 = llvm.ptrtoint %447 : !llvm.ptr<i32> to i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.sub %444, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.urem %451, %444  : i64
    %453 = llvm.sub %451, %452  : i64
    %454 = llvm.inttoptr %453 : i64 to !llvm.ptr<i32>
    %455 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %456 = llvm.insertvalue %447, %455[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %454, %456[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.insertvalue %458, %457[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %433, %459[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %434, %460[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %435, %461[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %436, %462[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %439, %463[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %438, %464[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %436, %465[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %437, %466[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%468 : i64)
  ^bb85(%471: i64):  // 2 preds: ^bb84, ^bb95
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(5 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%473 : i64)
  ^bb87(%476: i64):  // 2 preds: ^bb86, ^bb94
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%478 : i64)
  ^bb89(%481: i64):  // 2 preds: ^bb88, ^bb93
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%483 : i64)
  ^bb91(%486: i64):  // 2 preds: ^bb90, ^bb92
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %488 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mlir.constant(5 : index) : i64
    %490 = llvm.mul %471, %489  : i64
    %491 = llvm.add %490, %476  : i64
    %492 = llvm.add %491, %481  : i64
    %493 = llvm.add %492, %486  : i64
    %494 = llvm.getelementptr %488[%493] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %495 = llvm.load %494 : !llvm.ptr<i32>
    %496 = llvm.extractvalue %467[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(10 : index) : i64
    %498 = llvm.mul %486, %497  : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mul %476, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.mlir.constant(2 : index) : i64
    %503 = llvm.mul %481, %502  : i64
    %504 = llvm.add %501, %503  : i64
    %505 = llvm.add %504, %471  : i64
    %506 = llvm.getelementptr %496[%505] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %495, %506 : !llvm.ptr<i32>
    %507 = llvm.add %486, %485  : i64
    llvm.br ^bb91(%507 : i64)
  ^bb93:  // pred: ^bb91
    %508 = llvm.add %481, %480  : i64
    llvm.br ^bb89(%508 : i64)
  ^bb94:  // pred: ^bb89
    %509 = llvm.add %476, %475  : i64
    llvm.br ^bb87(%509 : i64)
  ^bb95:  // pred: ^bb87
    %510 = llvm.add %471, %470  : i64
    llvm.br ^bb85(%510 : i64)
  ^bb96:  // pred: ^bb85
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(5 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(10 : index) : i64
    %517 = llvm.mlir.null : !llvm.ptr<i32>
    %518 = llvm.getelementptr %517[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %519 = llvm.ptrtoint %518 : !llvm.ptr<i32> to i64
    %520 = llvm.mlir.constant(16 : index) : i64
    %521 = llvm.add %519, %520  : i64
    %522 = llvm.call @malloc(%521) : (i64) -> !llvm.ptr<i8>
    %523 = llvm.bitcast %522 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %524 = llvm.ptrtoint %523 : !llvm.ptr<i32> to i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.sub %520, %525  : i64
    %527 = llvm.add %524, %526  : i64
    %528 = llvm.urem %527, %520  : i64
    %529 = llvm.sub %527, %528  : i64
    %530 = llvm.inttoptr %529 : i64 to !llvm.ptr<i32>
    %531 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %532 = llvm.insertvalue %523, %531[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.insertvalue %530, %532[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.insertvalue %534, %533[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.insertvalue %511, %535[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.insertvalue %512, %536[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.insertvalue %513, %537[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.insertvalue %514, %538[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.insertvalue %512, %539[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %513, %540[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %514, %541[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %515, %542[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%544 : i64)
  ^bb97(%547: i64):  // 2 preds: ^bb96, ^bb107
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(5 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%549 : i64)
  ^bb99(%552: i64):  // 2 preds: ^bb98, ^bb106
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%554 : i64)
  ^bb101(%557: i64):  // 2 preds: ^bb100, ^bb105
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %559 = llvm.mlir.constant(0 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    %561 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%559 : i64)
  ^bb103(%562: i64):  // 2 preds: ^bb102, ^bb104
    %563 = llvm.icmp "slt" %562, %560 : i64
    llvm.cond_br %563, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %564 = llvm.extractvalue %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.mlir.constant(5 : index) : i64
    %566 = llvm.mul %547, %565  : i64
    %567 = llvm.add %566, %552  : i64
    %568 = llvm.add %567, %557  : i64
    %569 = llvm.add %568, %562  : i64
    %570 = llvm.getelementptr %564[%569] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %571 = llvm.load %570 : !llvm.ptr<i32>
    %572 = llvm.sub %24, %571  : i32
    %573 = llvm.extractvalue %543[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.mlir.constant(5 : index) : i64
    %575 = llvm.mul %547, %574  : i64
    %576 = llvm.add %575, %552  : i64
    %577 = llvm.add %576, %557  : i64
    %578 = llvm.add %577, %562  : i64
    %579 = llvm.getelementptr %573[%578] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %572, %579 : !llvm.ptr<i32>
    %580 = llvm.add %562, %561  : i64
    llvm.br ^bb103(%580 : i64)
  ^bb105:  // pred: ^bb103
    %581 = llvm.add %557, %556  : i64
    llvm.br ^bb101(%581 : i64)
  ^bb106:  // pred: ^bb101
    %582 = llvm.add %552, %551  : i64
    llvm.br ^bb99(%582 : i64)
  ^bb107:  // pred: ^bb99
    %583 = llvm.add %547, %546  : i64
    llvm.br ^bb97(%583 : i64)
  ^bb108:  // pred: ^bb97
    %584 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %585 = llvm.insertvalue %467, %584[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %586 = llvm.insertvalue %543, %585[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %586 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v10_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %133[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.getelementptr %91[%154] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %155 : !llvm.ptr<ptr<i8>>
    %156 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %156 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<143 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<143 x i8>> to !llvm.ptr<i8>
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


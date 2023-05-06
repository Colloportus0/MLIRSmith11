module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 3 , 4] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 4] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 4] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v8_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v1_0"]} {
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
    %24 = llvm.mlir.constant(0 : i64) : i64
    %25 = llvm.mlir.constant(-1 : i64) : i64
    %26 = llvm.mlir.constant(0 : i32) : i32
    %27 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.mlir.null : !llvm.ptr<i32>
    %82 = llvm.getelementptr %81[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(16 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.bitcast %86 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %84, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.urem %91, %84  : i64
    %93 = llvm.sub %91, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr<i32>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %79, %103[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %76, %105[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %77, %106[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%108 : i64)
  ^bb1(%111: i64):  // 2 preds: ^bb0, ^bb11
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%113 : i64)
  ^bb3(%116: i64):  // 2 preds: ^bb2, ^bb10
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%118 : i64)
  ^bb5(%121: i64):  // 2 preds: ^bb4, ^bb9
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%123 : i64)
  ^bb7(%126: i64):  // 2 preds: ^bb6, ^bb8
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %128 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.add %111, %116  : i64
    %130 = llvm.add %129, %121  : i64
    %131 = llvm.add %130, %126  : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mul %111, %135  : i64
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mul %116, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mul %121, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.add %142, %126  : i64
    %144 = llvm.getelementptr %134[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %133, %144 : !llvm.ptr<i32>
    %145 = llvm.add %126, %125  : i64
    llvm.br ^bb7(%145 : i64)
  ^bb9:  // pred: ^bb7
    %146 = llvm.add %121, %120  : i64
    llvm.br ^bb5(%146 : i64)
  ^bb10:  // pred: ^bb5
    %147 = llvm.add %116, %115  : i64
    llvm.br ^bb3(%147 : i64)
  ^bb11:  // pred: ^bb3
    %148 = llvm.add %111, %110  : i64
    llvm.br ^bb1(%148 : i64)
  ^bb12:  // pred: ^bb1
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%149 : i64)
  ^bb13(%152: i64):  // 2 preds: ^bb12, ^bb23
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%154 : i64)
  ^bb15(%157: i64):  // 2 preds: ^bb14, ^bb22
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%159 : i64)
  ^bb17(%162: i64):  // 2 preds: ^bb16, ^bb21
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%164 : i64)
  ^bb19(%167: i64):  // 2 preds: ^bb18, ^bb20
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.add %152, %157  : i64
    %173 = llvm.add %172, %162  : i64
    %174 = llvm.add %173, %167  : i64
    %175 = llvm.getelementptr %171[%174] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %176 = llvm.load %175 : !llvm.ptr<i32>
    %177 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mul %152, %178  : i64
    %180 = llvm.mlir.constant(4 : index) : i64
    %181 = llvm.mul %157, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.mlir.constant(4 : index) : i64
    %184 = llvm.mul %162, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %170  : i64
    %187 = llvm.getelementptr %177[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %176, %187 : !llvm.ptr<i32>
    %188 = llvm.add %167, %166  : i64
    llvm.br ^bb19(%188 : i64)
  ^bb21:  // pred: ^bb19
    %189 = llvm.add %162, %161  : i64
    llvm.br ^bb17(%189 : i64)
  ^bb22:  // pred: ^bb17
    %190 = llvm.add %157, %156  : i64
    llvm.br ^bb15(%190 : i64)
  ^bb23:  // pred: ^bb15
    %191 = llvm.add %152, %151  : i64
    llvm.br ^bb13(%191 : i64)
  ^bb24:  // pred: ^bb13
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%192 : i64)
  ^bb25(%195: i64):  // 2 preds: ^bb24, ^bb35
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%197 : i64)
  ^bb27(%200: i64):  // 2 preds: ^bb26, ^bb34
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%202 : i64)
  ^bb29(%205: i64):  // 2 preds: ^bb28, ^bb33
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%207 : i64)
  ^bb31(%210: i64):  // 2 preds: ^bb30, ^bb32
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %212 = llvm.mlir.constant(2 : index) : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.add %195, %200  : i64
    %216 = llvm.add %215, %205  : i64
    %217 = llvm.add %216, %210  : i64
    %218 = llvm.getelementptr %214[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.load %218 : !llvm.ptr<i32>
    %220 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %195, %221  : i64
    %223 = llvm.mlir.constant(4 : index) : i64
    %224 = llvm.mul %200, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mul %205, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %213  : i64
    %230 = llvm.getelementptr %220[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %219, %230 : !llvm.ptr<i32>
    %231 = llvm.add %210, %209  : i64
    llvm.br ^bb31(%231 : i64)
  ^bb33:  // pred: ^bb31
    %232 = llvm.add %205, %204  : i64
    llvm.br ^bb29(%232 : i64)
  ^bb34:  // pred: ^bb29
    %233 = llvm.add %200, %199  : i64
    llvm.br ^bb27(%233 : i64)
  ^bb35:  // pred: ^bb27
    %234 = llvm.add %195, %194  : i64
    llvm.br ^bb25(%234 : i64)
  ^bb36:  // pred: ^bb25
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%235 : i64)
  ^bb37(%238: i64):  // 2 preds: ^bb36, ^bb47
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%240 : i64)
  ^bb39(%243: i64):  // 2 preds: ^bb38, ^bb46
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%245 : i64)
  ^bb41(%248: i64):  // 2 preds: ^bb40, ^bb45
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%250 : i64)
  ^bb43(%253: i64):  // 2 preds: ^bb42, ^bb44
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %255 = llvm.mlir.constant(3 : index) : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.add %238, %243  : i64
    %259 = llvm.add %258, %248  : i64
    %260 = llvm.add %259, %253  : i64
    %261 = llvm.getelementptr %257[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mul %238, %264  : i64
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mul %243, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mul %248, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.add %271, %256  : i64
    %273 = llvm.getelementptr %263[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %262, %273 : !llvm.ptr<i32>
    %274 = llvm.add %253, %252  : i64
    llvm.br ^bb43(%274 : i64)
  ^bb45:  // pred: ^bb43
    %275 = llvm.add %248, %247  : i64
    llvm.br ^bb41(%275 : i64)
  ^bb46:  // pred: ^bb41
    %276 = llvm.add %243, %242  : i64
    llvm.br ^bb39(%276 : i64)
  ^bb47:  // pred: ^bb39
    %277 = llvm.add %238, %237  : i64
    llvm.br ^bb37(%277 : i64)
  ^bb48:  // pred: ^bb37
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.null : !llvm.ptr<i32>
    %287 = llvm.getelementptr %286[%285] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i32> to i64
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr<i8>
    %292 = llvm.bitcast %291 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i32> to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %289, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %289  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr<i32>
    %300 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %278, %304[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %279, %305[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %280, %306[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %284, %308[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %283, %309[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %281, %310[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %282, %311[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%313 : i64)
  ^bb49(%316: i64):  // 2 preds: ^bb48, ^bb59
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%318 : i64)
  ^bb51(%321: i64):  // 2 preds: ^bb50, ^bb58
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%323 : i64)
  ^bb53(%326: i64):  // 2 preds: ^bb52, ^bb57
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%328 : i64)
  ^bb55(%331: i64):  // 2 preds: ^bb54, ^bb56
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %333 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mul %316, %334  : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mul %321, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mul %326, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.add %341, %331  : i64
    %343 = llvm.getelementptr %333[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %344 = llvm.load %343 : !llvm.ptr<i32>
    %345 = llvm.sub %26, %344  : i32
    %346 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mul %316, %347  : i64
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mul %321, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %326, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.add %354, %331  : i64
    %356 = llvm.getelementptr %346[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %345, %356 : !llvm.ptr<i32>
    %357 = llvm.add %331, %330  : i64
    llvm.br ^bb55(%357 : i64)
  ^bb57:  // pred: ^bb55
    %358 = llvm.add %326, %325  : i64
    llvm.br ^bb53(%358 : i64)
  ^bb58:  // pred: ^bb53
    %359 = llvm.add %321, %320  : i64
    llvm.br ^bb51(%359 : i64)
  ^bb59:  // pred: ^bb51
    %360 = llvm.add %316, %315  : i64
    llvm.br ^bb49(%360 : i64)
  ^bb60:  // pred: ^bb49
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(3 : index) : i64
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(12 : index) : i64
    %367 = llvm.mlir.constant(12 : index) : i64
    %368 = llvm.mlir.constant(12 : index) : i64
    %369 = llvm.mlir.null : !llvm.ptr<i32>
    %370 = llvm.getelementptr %369[%368] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %371 = llvm.ptrtoint %370 : !llvm.ptr<i32> to i64
    %372 = llvm.mlir.constant(16 : index) : i64
    %373 = llvm.add %371, %372  : i64
    %374 = llvm.call @malloc(%373) : (i64) -> !llvm.ptr<i8>
    %375 = llvm.bitcast %374 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %376 = llvm.ptrtoint %375 : !llvm.ptr<i32> to i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.sub %372, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.urem %379, %372  : i64
    %381 = llvm.sub %379, %380  : i64
    %382 = llvm.inttoptr %381 : i64 to !llvm.ptr<i32>
    %383 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %384 = llvm.insertvalue %375, %383[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %382, %384[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.insertvalue %386, %385[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %361, %387[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %362, %388[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %363, %389[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %364, %390[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %367, %391[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %364, %393[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %365, %394[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%396 : i64)
  ^bb61(%399: i64):  // 2 preds: ^bb60, ^bb71
    %400 = llvm.icmp "slt" %399, %397 : i64
    llvm.cond_br %400, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%401 : i64)
  ^bb63(%404: i64):  // 2 preds: ^bb62, ^bb70
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%406 : i64)
  ^bb65(%409: i64):  // 2 preds: ^bb64, ^bb69
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%411 : i64)
  ^bb67(%414: i64):  // 2 preds: ^bb66, ^bb68
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %416 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.mul %399, %417  : i64
    %419 = llvm.mlir.constant(4 : index) : i64
    %420 = llvm.mul %404, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %409, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.add %424, %414  : i64
    %426 = llvm.getelementptr %416[%425] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %427 = llvm.load %426 : !llvm.ptr<i32>
    %428 = llvm.extractvalue %395[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(12 : index) : i64
    %430 = llvm.mul %399, %429  : i64
    %431 = llvm.mlir.constant(12 : index) : i64
    %432 = llvm.mul %404, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.mlir.constant(4 : index) : i64
    %435 = llvm.mul %409, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.add %436, %414  : i64
    %438 = llvm.getelementptr %428[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %427, %438 : !llvm.ptr<i32>
    %439 = llvm.add %414, %413  : i64
    llvm.br ^bb67(%439 : i64)
  ^bb69:  // pred: ^bb67
    %440 = llvm.add %409, %408  : i64
    llvm.br ^bb65(%440 : i64)
  ^bb70:  // pred: ^bb65
    %441 = llvm.add %404, %403  : i64
    llvm.br ^bb63(%441 : i64)
  ^bb71:  // pred: ^bb63
    %442 = llvm.add %399, %398  : i64
    llvm.br ^bb61(%442 : i64)
  ^bb72:  // pred: ^bb61
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%443 : i64)
  ^bb73(%446: i64):  // 2 preds: ^bb72, ^bb83
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%448 : i64)
  ^bb75(%451: i64):  // 2 preds: ^bb74, ^bb82
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%453 : i64)
  ^bb77(%456: i64):  // 2 preds: ^bb76, ^bb81
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(4 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%458 : i64)
  ^bb79(%461: i64):  // 2 preds: ^bb78, ^bb80
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.add %456, %463  : i64
    %465 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(4 : index) : i64
    %467 = llvm.mul %446, %466  : i64
    %468 = llvm.mlir.constant(4 : index) : i64
    %469 = llvm.mul %451, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %456, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.add %473, %461  : i64
    %475 = llvm.getelementptr %465[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %476 = llvm.load %475 : !llvm.ptr<i32>
    %477 = llvm.extractvalue %395[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(12 : index) : i64
    %479 = llvm.mul %446, %478  : i64
    %480 = llvm.mlir.constant(12 : index) : i64
    %481 = llvm.mul %451, %480  : i64
    %482 = llvm.add %479, %481  : i64
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %464, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.add %485, %461  : i64
    %487 = llvm.getelementptr %477[%486] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %476, %487 : !llvm.ptr<i32>
    %488 = llvm.add %461, %460  : i64
    llvm.br ^bb79(%488 : i64)
  ^bb81:  // pred: ^bb79
    %489 = llvm.add %456, %455  : i64
    llvm.br ^bb77(%489 : i64)
  ^bb82:  // pred: ^bb77
    %490 = llvm.add %451, %450  : i64
    llvm.br ^bb75(%490 : i64)
  ^bb83:  // pred: ^bb75
    %491 = llvm.add %446, %445  : i64
    llvm.br ^bb73(%491 : i64)
  ^bb84:  // pred: ^bb73
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%492 : i64)
  ^bb85(%495: i64):  // 2 preds: ^bb84, ^bb95
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%497 : i64)
  ^bb87(%500: i64):  // 2 preds: ^bb86, ^bb94
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%502 : i64)
  ^bb89(%505: i64):  // 2 preds: ^bb88, ^bb93
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%507 : i64)
  ^bb91(%510: i64):  // 2 preds: ^bb90, ^bb92
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %512 = llvm.mlir.constant(2 : index) : i64
    %513 = llvm.add %505, %512  : i64
    %514 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.mul %495, %515  : i64
    %517 = llvm.mlir.constant(4 : index) : i64
    %518 = llvm.mul %500, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mul %505, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.add %522, %510  : i64
    %524 = llvm.getelementptr %514[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %525 = llvm.load %524 : !llvm.ptr<i32>
    %526 = llvm.extractvalue %395[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.mlir.constant(12 : index) : i64
    %528 = llvm.mul %495, %527  : i64
    %529 = llvm.mlir.constant(12 : index) : i64
    %530 = llvm.mul %500, %529  : i64
    %531 = llvm.add %528, %530  : i64
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mul %513, %532  : i64
    %534 = llvm.add %531, %533  : i64
    %535 = llvm.add %534, %510  : i64
    %536 = llvm.getelementptr %526[%535] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %525, %536 : !llvm.ptr<i32>
    %537 = llvm.add %510, %509  : i64
    llvm.br ^bb91(%537 : i64)
  ^bb93:  // pred: ^bb91
    %538 = llvm.add %505, %504  : i64
    llvm.br ^bb89(%538 : i64)
  ^bb94:  // pred: ^bb89
    %539 = llvm.add %500, %499  : i64
    llvm.br ^bb87(%539 : i64)
  ^bb95:  // pred: ^bb87
    %540 = llvm.add %495, %494  : i64
    llvm.br ^bb85(%540 : i64)
  ^bb96:  // pred: ^bb85
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.mlir.constant(4 : index) : i64
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mlir.null : !llvm.ptr<i64>
    %548 = llvm.getelementptr %547[%546] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %549 = llvm.ptrtoint %548 : !llvm.ptr<i64> to i64
    %550 = llvm.mlir.constant(16 : index) : i64
    %551 = llvm.add %549, %550  : i64
    %552 = llvm.call @malloc(%551) : (i64) -> !llvm.ptr<i8>
    %553 = llvm.bitcast %552 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %554 = llvm.ptrtoint %553 : !llvm.ptr<i64> to i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.sub %550, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.urem %557, %550  : i64
    %559 = llvm.sub %557, %558  : i64
    %560 = llvm.inttoptr %559 : i64 to !llvm.ptr<i64>
    %561 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %562 = llvm.insertvalue %553, %561[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %563 = llvm.insertvalue %560, %562[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.mlir.constant(0 : index) : i64
    %565 = llvm.insertvalue %564, %563[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.insertvalue %541, %565[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %567 = llvm.insertvalue %542, %566[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.insertvalue %543, %567[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %569 = llvm.insertvalue %545, %568[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.insertvalue %543, %569[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.insertvalue %544, %570[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%572 : i64)
  ^bb97(%575: i64):  // 2 preds: ^bb96, ^bb104
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%577 : i64)
  ^bb99(%580: i64):  // 2 preds: ^bb98, ^bb103
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%582 : i64)
  ^bb101(%585: i64):  // 2 preds: ^bb100, ^bb102
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %587 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %588 = llvm.mlir.constant(4 : index) : i64
    %589 = llvm.mul %575, %588  : i64
    %590 = llvm.mlir.constant(4 : index) : i64
    %591 = llvm.mul %580, %590  : i64
    %592 = llvm.add %589, %591  : i64
    %593 = llvm.add %592, %585  : i64
    %594 = llvm.getelementptr %587[%593] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %594 : !llvm.ptr<i64>
    %595 = llvm.add %585, %584  : i64
    llvm.br ^bb101(%595 : i64)
  ^bb103:  // pred: ^bb101
    %596 = llvm.add %580, %579  : i64
    llvm.br ^bb99(%596 : i64)
  ^bb104:  // pred: ^bb99
    %597 = llvm.add %575, %574  : i64
    llvm.br ^bb97(%597 : i64)
  ^bb105:  // pred: ^bb97
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%598 : i64)
  ^bb106(%601: i64):  // 2 preds: ^bb105, ^bb116
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%603 : i64)
  ^bb108(%606: i64):  // 2 preds: ^bb107, ^bb115
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%608 : i64)
  ^bb110(%611: i64):  // 2 preds: ^bb109, ^bb114
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %613 = llvm.mlir.constant(0 : index) : i64
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%613 : i64)
  ^bb112(%616: i64):  // 2 preds: ^bb111, ^bb113
    %617 = llvm.icmp "slt" %616, %614 : i64
    llvm.cond_br %617, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %618 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.mlir.constant(4 : index) : i64
    %620 = llvm.mul %601, %619  : i64
    %621 = llvm.mlir.constant(4 : index) : i64
    %622 = llvm.mul %606, %621  : i64
    %623 = llvm.add %620, %622  : i64
    %624 = llvm.mlir.constant(4 : index) : i64
    %625 = llvm.mul %611, %624  : i64
    %626 = llvm.add %623, %625  : i64
    %627 = llvm.add %626, %616  : i64
    %628 = llvm.getelementptr %618[%627] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %629 = llvm.load %628 : !llvm.ptr<i32>
    %630 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %631 = llvm.mlir.constant(4 : index) : i64
    %632 = llvm.mul %601, %631  : i64
    %633 = llvm.mlir.constant(4 : index) : i64
    %634 = llvm.mul %611, %633  : i64
    %635 = llvm.add %632, %634  : i64
    %636 = llvm.add %635, %616  : i64
    %637 = llvm.getelementptr %630[%636] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %638 = llvm.load %637 : !llvm.ptr<i64>
    %639 = llvm.icmp "slt" %638, %24 : i64
    %640 = llvm.select %639, %24, %638 : i1, i64
    %641 = llvm.extractvalue %312[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.mlir.constant(4 : index) : i64
    %643 = llvm.mul %601, %642  : i64
    %644 = llvm.mlir.constant(4 : index) : i64
    %645 = llvm.mul %640, %644  : i64
    %646 = llvm.add %643, %645  : i64
    %647 = llvm.mlir.constant(4 : index) : i64
    %648 = llvm.mul %611, %647  : i64
    %649 = llvm.add %646, %648  : i64
    %650 = llvm.add %649, %616  : i64
    %651 = llvm.getelementptr %641[%650] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %652 = llvm.load %651 : !llvm.ptr<i32>
    %653 = llvm.icmp "sgt" %629, %652 : i32
    %654 = llvm.select %653, %606, %640 : i1, i64
    %655 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %656 = llvm.mlir.constant(4 : index) : i64
    %657 = llvm.mul %601, %656  : i64
    %658 = llvm.mlir.constant(4 : index) : i64
    %659 = llvm.mul %611, %658  : i64
    %660 = llvm.add %657, %659  : i64
    %661 = llvm.add %660, %616  : i64
    %662 = llvm.getelementptr %655[%661] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %654, %662 : !llvm.ptr<i64>
    %663 = llvm.add %616, %615  : i64
    llvm.br ^bb112(%663 : i64)
  ^bb114:  // pred: ^bb112
    %664 = llvm.add %611, %610  : i64
    llvm.br ^bb110(%664 : i64)
  ^bb115:  // pred: ^bb110
    %665 = llvm.add %606, %605  : i64
    llvm.br ^bb108(%665 : i64)
  ^bb116:  // pred: ^bb108
    %666 = llvm.add %601, %600  : i64
    llvm.br ^bb106(%666 : i64)
  ^bb117:  // pred: ^bb106
    %667 = llvm.mlir.constant(1 : index) : i64
    %668 = llvm.mlir.constant(1 : index) : i64
    %669 = llvm.mlir.constant(1 : index) : i64
    %670 = llvm.mlir.constant(4 : index) : i64
    %671 = llvm.mlir.constant(1 : index) : i64
    %672 = llvm.mlir.constant(4 : index) : i64
    %673 = llvm.mlir.constant(4 : index) : i64
    %674 = llvm.mlir.constant(4 : index) : i64
    %675 = llvm.mlir.null : !llvm.ptr<f64>
    %676 = llvm.getelementptr %675[%674] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %677 = llvm.ptrtoint %676 : !llvm.ptr<f64> to i64
    %678 = llvm.mlir.constant(16 : index) : i64
    %679 = llvm.add %677, %678  : i64
    %680 = llvm.call @malloc(%679) : (i64) -> !llvm.ptr<i8>
    %681 = llvm.bitcast %680 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %682 = llvm.ptrtoint %681 : !llvm.ptr<f64> to i64
    %683 = llvm.mlir.constant(1 : index) : i64
    %684 = llvm.sub %678, %683  : i64
    %685 = llvm.add %682, %684  : i64
    %686 = llvm.urem %685, %678  : i64
    %687 = llvm.sub %685, %686  : i64
    %688 = llvm.inttoptr %687 : i64 to !llvm.ptr<f64>
    %689 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %690 = llvm.insertvalue %681, %689[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %691 = llvm.insertvalue %688, %690[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %692 = llvm.mlir.constant(0 : index) : i64
    %693 = llvm.insertvalue %692, %691[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %694 = llvm.insertvalue %667, %693[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %695 = llvm.insertvalue %668, %694[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %696 = llvm.insertvalue %669, %695[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.insertvalue %670, %696[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %698 = llvm.insertvalue %673, %697[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %699 = llvm.insertvalue %672, %698[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %670, %699[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.insertvalue %671, %700[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %702 = llvm.mlir.constant(0 : index) : i64
    %703 = llvm.mlir.constant(1 : index) : i64
    %704 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb118(%702 : i64)
  ^bb118(%705: i64):  // 2 preds: ^bb117, ^bb128
    %706 = llvm.icmp "slt" %705, %703 : i64
    llvm.cond_br %706, ^bb119, ^bb129
  ^bb119:  // pred: ^bb118
    %707 = llvm.mlir.constant(0 : index) : i64
    %708 = llvm.mlir.constant(1 : index) : i64
    %709 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb120(%707 : i64)
  ^bb120(%710: i64):  // 2 preds: ^bb119, ^bb127
    %711 = llvm.icmp "slt" %710, %708 : i64
    llvm.cond_br %711, ^bb121, ^bb128
  ^bb121:  // pred: ^bb120
    %712 = llvm.mlir.constant(0 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    %714 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb122(%712 : i64)
  ^bb122(%715: i64):  // 2 preds: ^bb121, ^bb126
    %716 = llvm.icmp "slt" %715, %713 : i64
    llvm.cond_br %716, ^bb123, ^bb127
  ^bb123:  // pred: ^bb122
    %717 = llvm.mlir.constant(0 : index) : i64
    %718 = llvm.mlir.constant(4 : index) : i64
    %719 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb124(%717 : i64)
  ^bb124(%720: i64):  // 2 preds: ^bb123, ^bb125
    %721 = llvm.icmp "slt" %720, %718 : i64
    llvm.cond_br %721, ^bb125, ^bb126
  ^bb125:  // pred: ^bb124
    %722 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.mlir.constant(4 : index) : i64
    %724 = llvm.mul %705, %723  : i64
    %725 = llvm.mlir.constant(4 : index) : i64
    %726 = llvm.mul %710, %725  : i64
    %727 = llvm.add %724, %726  : i64
    %728 = llvm.mlir.constant(4 : index) : i64
    %729 = llvm.mul %715, %728  : i64
    %730 = llvm.add %727, %729  : i64
    %731 = llvm.add %730, %720  : i64
    %732 = llvm.getelementptr %722[%731] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %733 = llvm.load %732 : !llvm.ptr<i32>
    %734 = llvm.sitofp %733 : i32 to f64
    %735 = llvm.extractvalue %701[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.mlir.constant(4 : index) : i64
    %737 = llvm.mul %705, %736  : i64
    %738 = llvm.mlir.constant(4 : index) : i64
    %739 = llvm.mul %710, %738  : i64
    %740 = llvm.add %737, %739  : i64
    %741 = llvm.mlir.constant(4 : index) : i64
    %742 = llvm.mul %715, %741  : i64
    %743 = llvm.add %740, %742  : i64
    %744 = llvm.add %743, %720  : i64
    %745 = llvm.getelementptr %735[%744] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %734, %745 : !llvm.ptr<f64>
    %746 = llvm.add %720, %719  : i64
    llvm.br ^bb124(%746 : i64)
  ^bb126:  // pred: ^bb124
    %747 = llvm.add %715, %714  : i64
    llvm.br ^bb122(%747 : i64)
  ^bb127:  // pred: ^bb122
    %748 = llvm.add %710, %709  : i64
    llvm.br ^bb120(%748 : i64)
  ^bb128:  // pred: ^bb120
    %749 = llvm.add %705, %704  : i64
    llvm.br ^bb118(%749 : i64)
  ^bb129:  // pred: ^bb118
    %750 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %751 = llvm.insertvalue %395, %750[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %752 = llvm.insertvalue %571, %751[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %753 = llvm.insertvalue %701, %752[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %753 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(4 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %101[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %102[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(0 : i64) : i64
    %124 = llvm.getelementptr %92[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.mlir.constant(3 : i64) : i64
    %126 = llvm.call @omTensorCreateUntyped(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %130 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.bitcast %130 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%126, %127, %129, %131) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %132 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%126, %132) : (!llvm.ptr<i8>, i64) -> ()
    %133 = llvm.call @omTensorGetShape(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.call @omTensorGetStrides(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.getelementptr %133[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.getelementptr %134[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(1 : i64) : i64
    %141 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.getelementptr %133[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.getelementptr %134[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(2 : i64) : i64
    %146 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.getelementptr %133[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.getelementptr %134[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.getelementptr %92[%150] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %126, %151 : !llvm.ptr<ptr<i8>>
    %152 = llvm.mlir.constant(4 : i64) : i64
    %153 = llvm.call @omTensorCreateUntyped(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.bitcast %155 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %157 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%153, %154, %156, %158) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %159 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%153, %159) : (!llvm.ptr<i8>, i64) -> ()
    %160 = llvm.call @omTensorGetShape(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %161 = llvm.call @omTensorGetStrides(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.mlir.constant(0 : i64) : i64
    %163 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %160[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %161[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %160[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %161[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(2 : i64) : i64
    %173 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %160[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %161[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(3 : i64) : i64
    %178 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %160[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %161[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(2 : i64) : i64
    %183 = llvm.getelementptr %92[%182] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %153, %183 : !llvm.ptr<ptr<i8>>
    %184 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %184 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


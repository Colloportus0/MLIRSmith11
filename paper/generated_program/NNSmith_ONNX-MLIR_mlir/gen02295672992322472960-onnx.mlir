module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[1, 1, 2]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 2]> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %41 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<3 x i64>>
    %42 = llvm.bitcast %41 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(3 : index) : i64
    %49 = llvm.insertvalue %48, %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %59 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<3 x i64>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(3 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mlir.null : !llvm.ptr<i32>
    %79 = llvm.getelementptr %78[%77] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %80 = llvm.ptrtoint %79 : !llvm.ptr<i32> to i64
    %81 = llvm.mlir.constant(16 : index) : i64
    %82 = llvm.add %80, %81  : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<i32> to i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.sub %81, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.urem %88, %81  : i64
    %90 = llvm.sub %88, %89  : i64
    %91 = llvm.inttoptr %90 : i64 to !llvm.ptr<i32>
    %92 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %93 = llvm.insertvalue %84, %92[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %91, %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.insertvalue %95, %94[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %70, %96[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %72, %98[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %76, %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %73, %102[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %74, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%105 : i64)
  ^bb1(%108: i64):  // 2 preds: ^bb0, ^bb11
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %110 = llvm.mlir.constant(0 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%110 : i64)
  ^bb3(%113: i64):  // 2 preds: ^bb2, ^bb10
    %114 = llvm.icmp "slt" %113, %111 : i64
    llvm.cond_br %114, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%115 : i64)
  ^bb5(%118: i64):  // 2 preds: ^bb4, ^bb9
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%120 : i64)
  ^bb7(%123: i64):  // 2 preds: ^bb6, ^bb8
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %125 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.add %108, %113  : i64
    %127 = llvm.add %126, %118  : i64
    %128 = llvm.add %127, %123  : i64
    %129 = llvm.getelementptr %125[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %108, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %113, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %118, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.add %139, %123  : i64
    %141 = llvm.getelementptr %131[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %130, %141 : !llvm.ptr<i32>
    %142 = llvm.add %123, %122  : i64
    llvm.br ^bb7(%142 : i64)
  ^bb9:  // pred: ^bb7
    %143 = llvm.add %118, %117  : i64
    llvm.br ^bb5(%143 : i64)
  ^bb10:  // pred: ^bb5
    %144 = llvm.add %113, %112  : i64
    llvm.br ^bb3(%144 : i64)
  ^bb11:  // pred: ^bb3
    %145 = llvm.add %108, %107  : i64
    llvm.br ^bb1(%145 : i64)
  ^bb12:  // pred: ^bb1
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%146 : i64)
  ^bb13(%149: i64):  // 2 preds: ^bb12, ^bb23
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%151 : i64)
  ^bb15(%154: i64):  // 2 preds: ^bb14, ^bb22
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%156 : i64)
  ^bb17(%159: i64):  // 2 preds: ^bb16, ^bb21
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%161 : i64)
  ^bb19(%164: i64):  // 2 preds: ^bb18, ^bb20
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %149, %154  : i64
    %170 = llvm.add %169, %159  : i64
    %171 = llvm.add %170, %164  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.load %172 : !llvm.ptr<i32>
    %174 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %149, %175  : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mul %154, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %159, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.add %182, %167  : i64
    %184 = llvm.getelementptr %174[%183] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %184 : !llvm.ptr<i32>
    %185 = llvm.add %164, %163  : i64
    llvm.br ^bb19(%185 : i64)
  ^bb21:  // pred: ^bb19
    %186 = llvm.add %159, %158  : i64
    llvm.br ^bb17(%186 : i64)
  ^bb22:  // pred: ^bb17
    %187 = llvm.add %154, %153  : i64
    llvm.br ^bb15(%187 : i64)
  ^bb23:  // pred: ^bb15
    %188 = llvm.add %149, %148  : i64
    llvm.br ^bb13(%188 : i64)
  ^bb24:  // pred: ^bb13
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.null : !llvm.ptr<i64>
    %198 = llvm.getelementptr %197[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(16 : index) : i64
    %201 = llvm.add %199, %200  : i64
    %202 = llvm.call @malloc(%201) : (i64) -> !llvm.ptr<i8>
    %203 = llvm.bitcast %202 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %204 = llvm.ptrtoint %203 : !llvm.ptr<i64> to i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.sub %200, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.urem %207, %200  : i64
    %209 = llvm.sub %207, %208  : i64
    %210 = llvm.inttoptr %209 : i64 to !llvm.ptr<i64>
    %211 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %212 = llvm.insertvalue %203, %211[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %210, %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.insertvalue %214, %213[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %190, %216[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %195, %219[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %194, %220[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %192, %221[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %193, %222[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%239 : i64)
  ^bb31(%242: i64):  // 2 preds: ^bb30, ^bb32
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %244 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %227, %245  : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %232, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mul %237, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.add %252, %242  : i64
    %254 = llvm.getelementptr %244[%253] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %255 = llvm.load %254 : !llvm.ptr<i32>
    %256 = llvm.sext %255 : i32 to i64
    %257 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %227, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %232, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %237, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %242  : i64
    %267 = llvm.getelementptr %257[%266] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %256, %267 : !llvm.ptr<i64>
    %268 = llvm.add %242, %241  : i64
    llvm.br ^bb31(%268 : i64)
  ^bb33:  // pred: ^bb31
    %269 = llvm.add %237, %236  : i64
    llvm.br ^bb29(%269 : i64)
  ^bb34:  // pred: ^bb29
    %270 = llvm.add %232, %231  : i64
    llvm.br ^bb27(%270 : i64)
  ^bb35:  // pred: ^bb27
    %271 = llvm.add %227, %226  : i64
    llvm.br ^bb25(%271 : i64)
  ^bb36:  // pred: ^bb25
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(2 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(2 : index) : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mlir.null : !llvm.ptr<i64>
    %279 = llvm.getelementptr %278[%277] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i64> to i64
    %281 = llvm.mlir.constant(16 : index) : i64
    %282 = llvm.add %280, %281  : i64
    %283 = llvm.call @malloc(%282) : (i64) -> !llvm.ptr<i8>
    %284 = llvm.bitcast %283 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i64> to i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.sub %281, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.urem %288, %281  : i64
    %290 = llvm.sub %288, %289  : i64
    %291 = llvm.inttoptr %290 : i64 to !llvm.ptr<i64>
    %292 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %293 = llvm.insertvalue %284, %292[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %294 = llvm.insertvalue %291, %293[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.insertvalue %295, %294[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.insertvalue %272, %296[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %298 = llvm.insertvalue %273, %297[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %299 = llvm.insertvalue %274, %298[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %300 = llvm.insertvalue %276, %299[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.insertvalue %274, %300[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.insertvalue %275, %301[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%303 : i64)
  ^bb37(%306: i64):  // 2 preds: ^bb36, ^bb44
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%308 : i64)
  ^bb39(%311: i64):  // 2 preds: ^bb38, ^bb43
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%313 : i64)
  ^bb41(%316: i64):  // 2 preds: ^bb40, ^bb42
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %318 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mul %306, %319  : i64
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mul %311, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.add %323, %316  : i64
    %325 = llvm.getelementptr %318[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %325 : !llvm.ptr<i64>
    %326 = llvm.add %316, %315  : i64
    llvm.br ^bb41(%326 : i64)
  ^bb43:  // pred: ^bb41
    %327 = llvm.add %311, %310  : i64
    llvm.br ^bb39(%327 : i64)
  ^bb44:  // pred: ^bb39
    %328 = llvm.add %306, %305  : i64
    llvm.br ^bb37(%328 : i64)
  ^bb45:  // pred: ^bb37
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%329 : i64)
  ^bb46(%332: i64):  // 2 preds: ^bb45, ^bb56
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%334 : i64)
  ^bb48(%337: i64):  // 2 preds: ^bb47, ^bb55
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%339 : i64)
  ^bb50(%342: i64):  // 2 preds: ^bb49, ^bb54
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%344 : i64)
  ^bb52(%347: i64):  // 2 preds: ^bb51, ^bb53
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %349 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mul %332, %350  : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mul %337, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mul %342, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.add %357, %347  : i64
    %359 = llvm.getelementptr %349[%358] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %360 = llvm.load %359 : !llvm.ptr<i64>
    %361 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %332, %362  : i64
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mul %337, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.add %366, %347  : i64
    %368 = llvm.getelementptr %361[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %369 = llvm.load %368 : !llvm.ptr<i64>
    %370 = llvm.add %369, %360  : i64
    %371 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %332, %372  : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mul %337, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.add %376, %347  : i64
    %378 = llvm.getelementptr %371[%377] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %370, %378 : !llvm.ptr<i64>
    %379 = llvm.add %347, %346  : i64
    llvm.br ^bb52(%379 : i64)
  ^bb54:  // pred: ^bb52
    %380 = llvm.add %342, %341  : i64
    llvm.br ^bb50(%380 : i64)
  ^bb55:  // pred: ^bb50
    %381 = llvm.add %337, %336  : i64
    llvm.br ^bb48(%381 : i64)
  ^bb56:  // pred: ^bb48
    %382 = llvm.add %332, %331  : i64
    llvm.br ^bb46(%382 : i64)
  ^bb57:  // pred: ^bb46
    %383 = llvm.mlir.constant(3 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.null : !llvm.ptr<i64>
    %386 = llvm.getelementptr %385[%383] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i64> to i64
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.call @malloc(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.bitcast %390 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i64> to i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.sub %388, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.urem %395, %388  : i64
    %397 = llvm.sub %395, %396  : i64
    %398 = llvm.inttoptr %397 : i64 to !llvm.ptr<i64>
    %399 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %400 = llvm.insertvalue %391, %399[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.insertvalue %398, %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.insertvalue %402, %401[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.insertvalue %383, %403[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.insertvalue %384, %404[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(3 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%406 : i64)
  ^bb58(%409: i64):  // 2 preds: ^bb57, ^bb59
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %411 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.getelementptr %411[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %412 : !llvm.ptr<i64>
    %413 = llvm.add %409, %408  : i64
    llvm.br ^bb58(%413 : i64)
  ^bb60:  // pred: ^bb58
    %414 = llvm.mlir.constant(3 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.null : !llvm.ptr<i64>
    %417 = llvm.getelementptr %416[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %418 = llvm.ptrtoint %417 : !llvm.ptr<i64> to i64
    %419 = llvm.mlir.constant(16 : index) : i64
    %420 = llvm.add %418, %419  : i64
    %421 = llvm.call @malloc(%420) : (i64) -> !llvm.ptr<i8>
    %422 = llvm.bitcast %421 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %423 = llvm.ptrtoint %422 : !llvm.ptr<i64> to i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.sub %419, %424  : i64
    %426 = llvm.add %423, %425  : i64
    %427 = llvm.urem %426, %419  : i64
    %428 = llvm.sub %426, %427  : i64
    %429 = llvm.inttoptr %428 : i64 to !llvm.ptr<i64>
    %430 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %431 = llvm.insertvalue %422, %430[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.insertvalue %429, %431[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.insertvalue %433, %432[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.insertvalue %414, %434[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.insertvalue %415, %435[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(3 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%437 : i64)
  ^bb61(%440: i64):  // 2 preds: ^bb60, ^bb62
    %441 = llvm.icmp "slt" %440, %438 : i64
    llvm.cond_br %441, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %442 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.getelementptr %442[%440] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.load %443 : !llvm.ptr<i64>
    %445 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %446 = llvm.load %445 : !llvm.ptr<i64>
    %447 = llvm.mul %444, %446  : i64
    %448 = llvm.extractvalue %436[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %449 = llvm.getelementptr %448[%440] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %447, %449 : !llvm.ptr<i64>
    %450 = llvm.add %440, %439  : i64
    llvm.br ^bb61(%450 : i64)
  ^bb63:  // pred: ^bb61
    %451 = llvm.mlir.constant(3 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.null : !llvm.ptr<i1>
    %454 = llvm.getelementptr %453[%451] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %455 = llvm.ptrtoint %454 : !llvm.ptr<i1> to i64
    %456 = llvm.mlir.constant(16 : index) : i64
    %457 = llvm.add %455, %456  : i64
    %458 = llvm.call @malloc(%457) : (i64) -> !llvm.ptr<i8>
    %459 = llvm.bitcast %458 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %460 = llvm.ptrtoint %459 : !llvm.ptr<i1> to i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.sub %456, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.urem %463, %456  : i64
    %465 = llvm.sub %463, %464  : i64
    %466 = llvm.inttoptr %465 : i64 to !llvm.ptr<i1>
    %467 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %468 = llvm.insertvalue %459, %467[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.insertvalue %466, %468[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.insertvalue %470, %469[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.insertvalue %451, %471[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.insertvalue %452, %472[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.mlir.constant(0 : index) : i64
    %475 = llvm.mlir.constant(3 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%474 : i64)
  ^bb64(%477: i64):  // 2 preds: ^bb63, ^bb65
    %478 = llvm.icmp "slt" %477, %475 : i64
    llvm.cond_br %478, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %479 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.getelementptr %479[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %481 = llvm.load %480 : !llvm.ptr<i64>
    %482 = llvm.extractvalue %436[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.getelementptr %482[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %484 = llvm.load %483 : !llvm.ptr<i64>
    %485 = llvm.icmp "eq" %481, %484 : i64
    %486 = llvm.extractvalue %473[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %487 = llvm.getelementptr %486[%477] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %485, %487 : !llvm.ptr<i1>
    %488 = llvm.add %477, %476  : i64
    llvm.br ^bb64(%488 : i64)
  ^bb66:  // pred: ^bb64
    %489 = llvm.mlir.constant(3 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.null : !llvm.ptr<i64>
    %492 = llvm.getelementptr %491[%489] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i64> to i64
    %494 = llvm.mlir.constant(16 : index) : i64
    %495 = llvm.add %493, %494  : i64
    %496 = llvm.call @malloc(%495) : (i64) -> !llvm.ptr<i8>
    %497 = llvm.bitcast %496 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %498 = llvm.ptrtoint %497 : !llvm.ptr<i64> to i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.sub %494, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.urem %501, %494  : i64
    %503 = llvm.sub %501, %502  : i64
    %504 = llvm.inttoptr %503 : i64 to !llvm.ptr<i64>
    %505 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %506 = llvm.insertvalue %497, %505[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.insertvalue %504, %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.insertvalue %508, %507[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.insertvalue %489, %509[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.insertvalue %490, %510[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(3 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%512 : i64)
  ^bb67(%515: i64):  // 2 preds: ^bb66, ^bb68
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %517 = llvm.extractvalue %473[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.getelementptr %517[%515] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %519 = llvm.load %518 : !llvm.ptr<i1>
    %520 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %521 = llvm.getelementptr %520[%515] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %522 = llvm.load %521 : !llvm.ptr<i64>
    %523 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %524 = llvm.getelementptr %523[%515] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %525 = llvm.load %524 : !llvm.ptr<i64>
    %526 = llvm.select %519, %522, %525 : i1, i64
    %527 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.getelementptr %527[%515] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %526, %528 : !llvm.ptr<i64>
    %529 = llvm.add %515, %514  : i64
    llvm.br ^bb67(%529 : i64)
  ^bb69:  // pred: ^bb67
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(2 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mlir.constant(2 : index) : i64
    %536 = llvm.mlir.null : !llvm.ptr<i64>
    %537 = llvm.getelementptr %536[%535] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %538 = llvm.ptrtoint %537 : !llvm.ptr<i64> to i64
    %539 = llvm.mlir.constant(16 : index) : i64
    %540 = llvm.add %538, %539  : i64
    %541 = llvm.call @malloc(%540) : (i64) -> !llvm.ptr<i8>
    %542 = llvm.bitcast %541 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %543 = llvm.ptrtoint %542 : !llvm.ptr<i64> to i64
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.sub %539, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.urem %546, %539  : i64
    %548 = llvm.sub %546, %547  : i64
    %549 = llvm.inttoptr %548 : i64 to !llvm.ptr<i64>
    %550 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %551 = llvm.insertvalue %542, %550[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %552 = llvm.insertvalue %549, %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.insertvalue %553, %552[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %555 = llvm.insertvalue %530, %554[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %556 = llvm.insertvalue %531, %555[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %557 = llvm.insertvalue %532, %556[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %558 = llvm.insertvalue %534, %557[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %559 = llvm.insertvalue %532, %558[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %560 = llvm.insertvalue %533, %559[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%561 : i64)
  ^bb70(%564: i64):  // 2 preds: ^bb69, ^bb77
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%566 : i64)
  ^bb72(%569: i64):  // 2 preds: ^bb71, ^bb76
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%571 : i64)
  ^bb74(%574: i64):  // 2 preds: ^bb73, ^bb75
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %576 = llvm.extractvalue %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mul %26, %577  : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mul %26, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.add %581, %574  : i64
    %583 = llvm.getelementptr %576[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %584 = llvm.load %583 : !llvm.ptr<i64>
    %585 = llvm.extractvalue %560[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mul %564, %586  : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mul %569, %588  : i64
    %590 = llvm.add %587, %589  : i64
    %591 = llvm.add %590, %574  : i64
    %592 = llvm.getelementptr %585[%591] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %584, %592 : !llvm.ptr<i64>
    %593 = llvm.add %574, %573  : i64
    llvm.br ^bb74(%593 : i64)
  ^bb76:  // pred: ^bb74
    %594 = llvm.add %569, %568  : i64
    llvm.br ^bb72(%594 : i64)
  ^bb77:  // pred: ^bb72
    %595 = llvm.add %564, %563  : i64
    llvm.br ^bb70(%595 : i64)
  ^bb78:  // pred: ^bb70
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mlir.constant(2 : index) : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mlir.null : !llvm.ptr<i32>
    %605 = llvm.getelementptr %604[%603] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %606 = llvm.ptrtoint %605 : !llvm.ptr<i32> to i64
    %607 = llvm.mlir.constant(16 : index) : i64
    %608 = llvm.add %606, %607  : i64
    %609 = llvm.call @malloc(%608) : (i64) -> !llvm.ptr<i8>
    %610 = llvm.bitcast %609 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %611 = llvm.ptrtoint %610 : !llvm.ptr<i32> to i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.sub %607, %612  : i64
    %614 = llvm.add %611, %613  : i64
    %615 = llvm.urem %614, %607  : i64
    %616 = llvm.sub %614, %615  : i64
    %617 = llvm.inttoptr %616 : i64 to !llvm.ptr<i32>
    %618 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %619 = llvm.insertvalue %610, %618[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.insertvalue %617, %619[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.mlir.constant(0 : index) : i64
    %622 = llvm.insertvalue %621, %620[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.insertvalue %596, %622[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %597, %623[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.insertvalue %598, %624[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %626 = llvm.insertvalue %599, %625[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.insertvalue %602, %626[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %601, %627[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.insertvalue %599, %628[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %600, %629[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%631 : i64)
  ^bb79(%634: i64):  // 2 preds: ^bb78, ^bb89
    %635 = llvm.icmp "slt" %634, %632 : i64
    llvm.cond_br %635, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%636 : i64)
  ^bb81(%639: i64):  // 2 preds: ^bb80, ^bb88
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%641 : i64)
  ^bb83(%644: i64):  // 2 preds: ^bb82, ^bb87
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%646 : i64)
  ^bb85(%649: i64):  // 2 preds: ^bb84, ^bb86
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %651 = llvm.extractvalue %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %634, %652  : i64
    %654 = llvm.mlir.constant(2 : index) : i64
    %655 = llvm.mul %639, %654  : i64
    %656 = llvm.add %653, %655  : i64
    %657 = llvm.mlir.constant(2 : index) : i64
    %658 = llvm.mul %644, %657  : i64
    %659 = llvm.add %656, %658  : i64
    %660 = llvm.add %659, %649  : i64
    %661 = llvm.getelementptr %651[%660] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %662 = llvm.load %661 : !llvm.ptr<i32>
    %663 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %664 = llvm.load %663 : !llvm.ptr<i32>
    %665 = llvm.icmp "slt" %662, %664 : i32
    %666 = llvm.select %665, %664, %662 : i1, i32
    %667 = llvm.extractvalue %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %668 = llvm.load %667 : !llvm.ptr<i32>
    %669 = llvm.icmp "slt" %666, %668 : i32
    %670 = llvm.select %669, %666, %668 : i1, i32
    %671 = llvm.extractvalue %630[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.mlir.constant(2 : index) : i64
    %673 = llvm.mul %634, %672  : i64
    %674 = llvm.mlir.constant(2 : index) : i64
    %675 = llvm.mul %639, %674  : i64
    %676 = llvm.add %673, %675  : i64
    %677 = llvm.mlir.constant(2 : index) : i64
    %678 = llvm.mul %644, %677  : i64
    %679 = llvm.add %676, %678  : i64
    %680 = llvm.add %679, %649  : i64
    %681 = llvm.getelementptr %671[%680] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %670, %681 : !llvm.ptr<i32>
    %682 = llvm.add %649, %648  : i64
    llvm.br ^bb85(%682 : i64)
  ^bb87:  // pred: ^bb85
    %683 = llvm.add %644, %643  : i64
    llvm.br ^bb83(%683 : i64)
  ^bb88:  // pred: ^bb83
    %684 = llvm.add %639, %638  : i64
    llvm.br ^bb81(%684 : i64)
  ^bb89:  // pred: ^bb81
    %685 = llvm.add %634, %633  : i64
    llvm.br ^bb79(%685 : i64)
  ^bb90:  // pred: ^bb79
    %686 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %687 = llvm.extractvalue %630[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %688 = llvm.extractvalue %630[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.insertvalue %687, %686[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %690 = llvm.insertvalue %688, %689[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %691 = llvm.mlir.constant(0 : index) : i64
    %692 = llvm.insertvalue %691, %690[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %693 = llvm.mlir.constant(2 : index) : i64
    %694 = llvm.insertvalue %693, %692[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.mlir.constant(1 : index) : i64
    %696 = llvm.insertvalue %695, %694[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %697 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %698 = llvm.insertvalue %560, %697[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %699 = llvm.insertvalue %696, %698[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %699 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(3 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(0 : i64) : i64
    %118 = llvm.getelementptr %91[%117] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %118 : !llvm.ptr<ptr<i8>>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.call @omTensorCreateUntyped(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %124 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%120, %121, %123, %125) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %126 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%120, %126) : (!llvm.ptr<i8>, i64) -> ()
    %127 = llvm.call @omTensorGetShape(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %128 = llvm.call @omTensorGetStrides(%120) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.getelementptr %127[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.getelementptr %128[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.getelementptr %91[%134] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %120, %135 : !llvm.ptr<ptr<i8>>
    %136 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %136 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<125 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<125 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22f64\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_12(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.addressof @constant_12 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.null : !llvm.ptr<i32>
    %73 = llvm.getelementptr %72[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<i32> to i64
    %75 = llvm.mlir.constant(16 : index) : i64
    %76 = llvm.add %74, %75  : i64
    %77 = llvm.call @malloc(%76) : (i64) -> !llvm.ptr<i8>
    %78 = llvm.bitcast %77 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %79 = llvm.ptrtoint %78 : !llvm.ptr<i32> to i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.sub %75, %80  : i64
    %82 = llvm.add %79, %81  : i64
    %83 = llvm.urem %82, %75  : i64
    %84 = llvm.sub %82, %83  : i64
    %85 = llvm.inttoptr %84 : i64 to !llvm.ptr<i32>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %87 = llvm.insertvalue %78, %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %66, %90[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %67, %91[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %68, %92[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %69, %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %67, %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %68, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %69, %96[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %70, %97[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%99 : i64)
  ^bb1(%102: i64):  // 2 preds: ^bb0, ^bb11
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%104 : i64)
  ^bb3(%107: i64):  // 2 preds: ^bb2, ^bb10
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%109 : i64)
  ^bb5(%112: i64):  // 2 preds: ^bb4, ^bb9
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%114 : i64)
  ^bb7(%117: i64):  // 2 preds: ^bb6, ^bb8
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %119 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.add %102, %107  : i64
    %121 = llvm.add %120, %112  : i64
    %122 = llvm.add %121, %117  : i64
    %123 = llvm.getelementptr %119[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %124 = llvm.load %123 : !llvm.ptr<i32>
    %125 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mul %102, %126  : i64
    %128 = llvm.add %127, %107  : i64
    %129 = llvm.add %128, %112  : i64
    %130 = llvm.add %129, %117  : i64
    %131 = llvm.getelementptr %125[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %124, %131 : !llvm.ptr<i32>
    %132 = llvm.add %117, %116  : i64
    llvm.br ^bb7(%132 : i64)
  ^bb9:  // pred: ^bb7
    %133 = llvm.add %112, %111  : i64
    llvm.br ^bb5(%133 : i64)
  ^bb10:  // pred: ^bb5
    %134 = llvm.add %107, %106  : i64
    llvm.br ^bb3(%134 : i64)
  ^bb11:  // pred: ^bb3
    %135 = llvm.add %102, %101  : i64
    llvm.br ^bb1(%135 : i64)
  ^bb12:  // pred: ^bb1
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%136 : i64)
  ^bb13(%139: i64):  // 2 preds: ^bb12, ^bb23
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%141 : i64)
  ^bb15(%144: i64):  // 2 preds: ^bb14, ^bb22
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%146 : i64)
  ^bb17(%149: i64):  // 2 preds: ^bb16, ^bb21
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%151 : i64)
  ^bb19(%154: i64):  // 2 preds: ^bb18, ^bb20
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.add %144, %156  : i64
    %158 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.add %139, %144  : i64
    %160 = llvm.add %159, %149  : i64
    %161 = llvm.add %160, %154  : i64
    %162 = llvm.getelementptr %158[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %139, %165  : i64
    %167 = llvm.add %166, %157  : i64
    %168 = llvm.add %167, %149  : i64
    %169 = llvm.add %168, %154  : i64
    %170 = llvm.getelementptr %164[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %163, %170 : !llvm.ptr<i32>
    %171 = llvm.add %154, %153  : i64
    llvm.br ^bb19(%171 : i64)
  ^bb21:  // pred: ^bb19
    %172 = llvm.add %149, %148  : i64
    llvm.br ^bb17(%172 : i64)
  ^bb22:  // pred: ^bb17
    %173 = llvm.add %144, %143  : i64
    llvm.br ^bb15(%173 : i64)
  ^bb23:  // pred: ^bb15
    %174 = llvm.add %139, %138  : i64
    llvm.br ^bb13(%174 : i64)
  ^bb24:  // pred: ^bb13
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mlir.null : !llvm.ptr<i32>
    %182 = llvm.getelementptr %181[%180] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<i32> to i64
    %184 = llvm.mlir.constant(16 : index) : i64
    %185 = llvm.add %183, %184  : i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr<i8>
    %187 = llvm.bitcast %186 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %188 = llvm.ptrtoint %187 : !llvm.ptr<i32> to i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.sub %184, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.urem %191, %184  : i64
    %193 = llvm.sub %191, %192  : i64
    %194 = llvm.inttoptr %193 : i64 to !llvm.ptr<i32>
    %195 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %196 = llvm.insertvalue %187, %195[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %194, %196[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.insertvalue %198, %197[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %175, %199[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %176, %200[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %177, %201[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %178, %202[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %176, %203[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %177, %204[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %178, %205[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %179, %206[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%208 : i64)
  ^bb25(%211: i64):  // 2 preds: ^bb24, ^bb35
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%213 : i64)
  ^bb27(%216: i64):  // 2 preds: ^bb26, ^bb34
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%218 : i64)
  ^bb29(%221: i64):  // 2 preds: ^bb28, ^bb33
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%223 : i64)
  ^bb31(%226: i64):  // 2 preds: ^bb30, ^bb32
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %228 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mul %211, %229  : i64
    %231 = llvm.add %230, %216  : i64
    %232 = llvm.add %231, %221  : i64
    %233 = llvm.add %232, %226  : i64
    %234 = llvm.getelementptr %228[%233] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %235 = llvm.load %234 : !llvm.ptr<i32>
    %236 = llvm.extractvalue %207[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mul %211, %237  : i64
    %239 = llvm.add %238, %216  : i64
    %240 = llvm.add %239, %221  : i64
    %241 = llvm.add %240, %226  : i64
    %242 = llvm.getelementptr %236[%241] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %235, %242 : !llvm.ptr<i32>
    %243 = llvm.add %226, %225  : i64
    llvm.br ^bb31(%243 : i64)
  ^bb33:  // pred: ^bb31
    %244 = llvm.add %221, %220  : i64
    llvm.br ^bb29(%244 : i64)
  ^bb34:  // pred: ^bb29
    %245 = llvm.add %216, %215  : i64
    llvm.br ^bb27(%245 : i64)
  ^bb35:  // pred: ^bb27
    %246 = llvm.add %211, %210  : i64
    llvm.br ^bb25(%246 : i64)
  ^bb36:  // pred: ^bb25
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.null : !llvm.ptr<i32>
    %254 = llvm.getelementptr %253[%252] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i32> to i64
    %256 = llvm.mlir.constant(16 : index) : i64
    %257 = llvm.add %255, %256  : i64
    %258 = llvm.call @malloc(%257) : (i64) -> !llvm.ptr<i8>
    %259 = llvm.bitcast %258 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i32> to i64
    %261 = llvm.mlir.constant(1 : index) : i64
    %262 = llvm.sub %256, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.urem %263, %256  : i64
    %265 = llvm.sub %263, %264  : i64
    %266 = llvm.inttoptr %265 : i64 to !llvm.ptr<i32>
    %267 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %268 = llvm.insertvalue %259, %267[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %266, %268[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.insertvalue %270, %269[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %247, %271[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %248, %272[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %249, %273[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %250, %274[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %248, %275[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %249, %276[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %250, %277[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %251, %278[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%280 : i64)
  ^bb37(%283: i64):  // 2 preds: ^bb36, ^bb47
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%285 : i64)
  ^bb39(%288: i64):  // 2 preds: ^bb38, ^bb46
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%290 : i64)
  ^bb41(%293: i64):  // 2 preds: ^bb40, ^bb45
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%295 : i64)
  ^bb43(%298: i64):  // 2 preds: ^bb42, ^bb44
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %300 = llvm.extractvalue %207[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %283, %301  : i64
    %303 = llvm.add %302, %288  : i64
    %304 = llvm.add %303, %293  : i64
    %305 = llvm.add %304, %298  : i64
    %306 = llvm.getelementptr %300[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.load %306 : !llvm.ptr<i32>
    %308 = llvm.extractvalue %279[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mul %283, %309  : i64
    %311 = llvm.add %310, %288  : i64
    %312 = llvm.add %311, %293  : i64
    %313 = llvm.add %312, %298  : i64
    %314 = llvm.getelementptr %308[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %307, %314 : !llvm.ptr<i32>
    %315 = llvm.add %298, %297  : i64
    llvm.br ^bb43(%315 : i64)
  ^bb45:  // pred: ^bb43
    %316 = llvm.add %293, %292  : i64
    llvm.br ^bb41(%316 : i64)
  ^bb46:  // pred: ^bb41
    %317 = llvm.add %288, %287  : i64
    llvm.br ^bb39(%317 : i64)
  ^bb47:  // pred: ^bb39
    %318 = llvm.add %283, %282  : i64
    llvm.br ^bb37(%318 : i64)
  ^bb48:  // pred: ^bb37
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(2 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<f64>
    %326 = llvm.getelementptr %325[%324] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<f64> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<f64> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<f64>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %319, %343[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %320, %344[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %321, %345[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %322, %346[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %320, %347[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %321, %348[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %322, %349[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %323, %350[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%352 : i64)
  ^bb49(%355: i64):  // 2 preds: ^bb48, ^bb59
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(2 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%357 : i64)
  ^bb51(%360: i64):  // 2 preds: ^bb50, ^bb58
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%362 : i64)
  ^bb53(%365: i64):  // 2 preds: ^bb52, ^bb57
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%367 : i64)
  ^bb55(%370: i64):  // 2 preds: ^bb54, ^bb56
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %372 = llvm.extractvalue %207[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mul %355, %373  : i64
    %375 = llvm.add %374, %360  : i64
    %376 = llvm.add %375, %365  : i64
    %377 = llvm.add %376, %370  : i64
    %378 = llvm.getelementptr %372[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %379 = llvm.load %378 : !llvm.ptr<i32>
    %380 = llvm.sitofp %379 : i32 to f64
    %381 = llvm.extractvalue %351[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %355, %382  : i64
    %384 = llvm.add %383, %360  : i64
    %385 = llvm.add %384, %365  : i64
    %386 = llvm.add %385, %370  : i64
    %387 = llvm.getelementptr %381[%386] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %380, %387 : !llvm.ptr<f64>
    %388 = llvm.add %370, %369  : i64
    llvm.br ^bb55(%388 : i64)
  ^bb57:  // pred: ^bb55
    %389 = llvm.add %365, %364  : i64
    llvm.br ^bb53(%389 : i64)
  ^bb58:  // pred: ^bb53
    %390 = llvm.add %360, %359  : i64
    llvm.br ^bb51(%390 : i64)
  ^bb59:  // pred: ^bb51
    %391 = llvm.add %355, %354  : i64
    llvm.br ^bb49(%391 : i64)
  ^bb60:  // pred: ^bb49
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.null : !llvm.ptr<i64>
    %395 = llvm.getelementptr %394[%392] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<i64> to i64
    %397 = llvm.mlir.constant(16 : index) : i64
    %398 = llvm.add %396, %397  : i64
    %399 = llvm.call @malloc(%398) : (i64) -> !llvm.ptr<i8>
    %400 = llvm.bitcast %399 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %401 = llvm.ptrtoint %400 : !llvm.ptr<i64> to i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.sub %397, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.urem %404, %397  : i64
    %406 = llvm.sub %404, %405  : i64
    %407 = llvm.inttoptr %406 : i64 to !llvm.ptr<i64>
    %408 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %409 = llvm.insertvalue %400, %408[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %392, %412[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %393, %413[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(4 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%415 : i64)
  ^bb61(%418: i64):  // 2 preds: ^bb60, ^bb62
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %420 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.getelementptr %420[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %421 : !llvm.ptr<i64>
    %422 = llvm.add %418, %417  : i64
    llvm.br ^bb61(%422 : i64)
  ^bb63:  // pred: ^bb61
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
    llvm.br ^bb64(%446 : i64)
  ^bb64(%449: i64):  // 2 preds: ^bb63, ^bb65
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %451 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %453 = llvm.load %452 : !llvm.ptr<i64>
    %454 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %455 = llvm.load %454 : !llvm.ptr<i64>
    %456 = llvm.mul %453, %455  : i64
    %457 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.getelementptr %457[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %456, %458 : !llvm.ptr<i64>
    %459 = llvm.add %449, %448  : i64
    llvm.br ^bb64(%459 : i64)
  ^bb66:  // pred: ^bb64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.null : !llvm.ptr<i1>
    %463 = llvm.getelementptr %462[%460] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %464 = llvm.ptrtoint %463 : !llvm.ptr<i1> to i64
    %465 = llvm.mlir.constant(16 : index) : i64
    %466 = llvm.add %464, %465  : i64
    %467 = llvm.call @malloc(%466) : (i64) -> !llvm.ptr<i8>
    %468 = llvm.bitcast %467 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %469 = llvm.ptrtoint %468 : !llvm.ptr<i1> to i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.sub %465, %470  : i64
    %472 = llvm.add %469, %471  : i64
    %473 = llvm.urem %472, %465  : i64
    %474 = llvm.sub %472, %473  : i64
    %475 = llvm.inttoptr %474 : i64 to !llvm.ptr<i1>
    %476 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %477 = llvm.insertvalue %468, %476[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.insertvalue %475, %477[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.insertvalue %479, %478[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.insertvalue %460, %480[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.insertvalue %461, %481[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%483 : i64)
  ^bb67(%486: i64):  // 2 preds: ^bb66, ^bb68
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %488 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.getelementptr %488[%486] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %490 = llvm.load %489 : !llvm.ptr<i64>
    %491 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.getelementptr %491[%486] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %493 = llvm.load %492 : !llvm.ptr<i64>
    %494 = llvm.icmp "eq" %490, %493 : i64
    %495 = llvm.extractvalue %482[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.getelementptr %495[%486] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %494, %496 : !llvm.ptr<i1>
    %497 = llvm.add %486, %485  : i64
    llvm.br ^bb67(%497 : i64)
  ^bb69:  // pred: ^bb67
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.null : !llvm.ptr<i64>
    %501 = llvm.getelementptr %500[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i64> to i64
    %503 = llvm.mlir.constant(16 : index) : i64
    %504 = llvm.add %502, %503  : i64
    %505 = llvm.call @malloc(%504) : (i64) -> !llvm.ptr<i8>
    %506 = llvm.bitcast %505 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %507 = llvm.ptrtoint %506 : !llvm.ptr<i64> to i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.sub %503, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.urem %510, %503  : i64
    %512 = llvm.sub %510, %511  : i64
    %513 = llvm.inttoptr %512 : i64 to !llvm.ptr<i64>
    %514 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %515 = llvm.insertvalue %506, %514[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.insertvalue %513, %515[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.insertvalue %517, %516[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.insertvalue %498, %518[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.insertvalue %499, %519[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(4 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%521 : i64)
  ^bb70(%524: i64):  // 2 preds: ^bb69, ^bb71
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %526 = llvm.extractvalue %482[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.getelementptr %526[%524] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %528 = llvm.load %527 : !llvm.ptr<i1>
    %529 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.getelementptr %529[%524] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %531 = llvm.load %530 : !llvm.ptr<i64>
    %532 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %533 = llvm.getelementptr %532[%524] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %534 = llvm.load %533 : !llvm.ptr<i64>
    %535 = llvm.select %528, %531, %534 : i1, i64
    %536 = llvm.extractvalue %520[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.getelementptr %536[%524] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %535, %537 : !llvm.ptr<i64>
    %538 = llvm.add %524, %523  : i64
    llvm.br ^bb70(%538 : i64)
  ^bb72:  // pred: ^bb70
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.null : !llvm.ptr<f64>
    %546 = llvm.getelementptr %545[%544] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %547 = llvm.ptrtoint %546 : !llvm.ptr<f64> to i64
    %548 = llvm.mlir.constant(16 : index) : i64
    %549 = llvm.add %547, %548  : i64
    %550 = llvm.call @malloc(%549) : (i64) -> !llvm.ptr<i8>
    %551 = llvm.bitcast %550 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %552 = llvm.ptrtoint %551 : !llvm.ptr<f64> to i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.sub %548, %553  : i64
    %555 = llvm.add %552, %554  : i64
    %556 = llvm.urem %555, %548  : i64
    %557 = llvm.sub %555, %556  : i64
    %558 = llvm.inttoptr %557 : i64 to !llvm.ptr<f64>
    %559 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %560 = llvm.insertvalue %551, %559[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %558, %560[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.insertvalue %562, %561[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %564 = llvm.insertvalue %539, %563[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %565 = llvm.insertvalue %540, %564[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %541, %565[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %542, %566[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.insertvalue %540, %567[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.insertvalue %541, %568[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %542, %569[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %543, %570[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%572 : i64)
  ^bb73(%575: i64):  // 2 preds: ^bb72, ^bb83
    %576 = llvm.icmp "slt" %575, %573 : i64
    llvm.cond_br %576, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(2 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%577 : i64)
  ^bb75(%580: i64):  // 2 preds: ^bb74, ^bb82
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%582 : i64)
  ^bb77(%585: i64):  // 2 preds: ^bb76, ^bb81
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%587 : i64)
  ^bb79(%590: i64):  // 2 preds: ^bb78, ^bb80
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %592 = llvm.extractvalue %351[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.mlir.constant(2 : index) : i64
    %594 = llvm.mul %13, %593  : i64
    %595 = llvm.add %594, %580  : i64
    %596 = llvm.add %595, %13  : i64
    %597 = llvm.add %596, %13  : i64
    %598 = llvm.getelementptr %592[%597] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %599 = llvm.load %598 : !llvm.ptr<f64>
    %600 = llvm.extractvalue %571[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mul %575, %601  : i64
    %603 = llvm.add %602, %580  : i64
    %604 = llvm.add %603, %585  : i64
    %605 = llvm.add %604, %590  : i64
    %606 = llvm.getelementptr %600[%605] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %599, %606 : !llvm.ptr<f64>
    %607 = llvm.add %590, %589  : i64
    llvm.br ^bb79(%607 : i64)
  ^bb81:  // pred: ^bb79
    %608 = llvm.add %585, %584  : i64
    llvm.br ^bb77(%608 : i64)
  ^bb82:  // pred: ^bb77
    %609 = llvm.add %580, %579  : i64
    llvm.br ^bb75(%609 : i64)
  ^bb83:  // pred: ^bb75
    %610 = llvm.add %575, %574  : i64
    llvm.br ^bb73(%610 : i64)
  ^bb84:  // pred: ^bb73
    %611 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %612 = llvm.insertvalue %279, %611[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %613 = llvm.insertvalue %571, %612[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %613 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


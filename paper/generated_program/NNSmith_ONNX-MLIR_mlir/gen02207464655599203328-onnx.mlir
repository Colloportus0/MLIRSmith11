module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.constant(3 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(1 : i64) : i64
    %16 = llvm.mlir.constant(0 : i32) : i32
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(4 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
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
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.null : !llvm.ptr<i32>
    %54 = llvm.getelementptr %53[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i32> to i64
    %56 = llvm.mlir.constant(16 : index) : i64
    %57 = llvm.add %55, %56  : i64
    %58 = llvm.call @malloc(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.bitcast %58 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %56, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.urem %63, %56  : i64
    %65 = llvm.sub %63, %64  : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr<i32>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %51, %74[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%80 : i64)
  ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb11
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%85 : i64)
  ^bb3(%88: i64):  // 2 preds: ^bb2, ^bb10
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%90 : i64)
  ^bb5(%93: i64):  // 2 preds: ^bb4, ^bb9
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%95 : i64)
  ^bb7(%98: i64):  // 2 preds: ^bb6, ^bb8
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %100 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.add %83, %88  : i64
    %102 = llvm.add %101, %93  : i64
    %103 = llvm.add %102, %98  : i64
    %104 = llvm.getelementptr %100[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %105 = llvm.load %104 : !llvm.ptr<i32>
    %106 = llvm.sub %16, %105  : i32
    %107 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.add %83, %88  : i64
    %109 = llvm.add %108, %93  : i64
    %110 = llvm.add %109, %98  : i64
    %111 = llvm.getelementptr %107[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %106, %111 : !llvm.ptr<i32>
    %112 = llvm.add %98, %97  : i64
    llvm.br ^bb7(%112 : i64)
  ^bb9:  // pred: ^bb7
    %113 = llvm.add %93, %92  : i64
    llvm.br ^bb5(%113 : i64)
  ^bb10:  // pred: ^bb5
    %114 = llvm.add %88, %87  : i64
    llvm.br ^bb3(%114 : i64)
  ^bb11:  // pred: ^bb3
    %115 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%115 : i64)
  ^bb12:  // pred: ^bb1
    %116 = llvm.mlir.constant(4 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.null : !llvm.ptr<i64>
    %119 = llvm.getelementptr %118[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %120 = llvm.ptrtoint %119 : !llvm.ptr<i64> to i64
    %121 = llvm.mlir.constant(16 : index) : i64
    %122 = llvm.add %120, %121  : i64
    %123 = llvm.call @malloc(%122) : (i64) -> !llvm.ptr<i8>
    %124 = llvm.bitcast %123 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %125 = llvm.ptrtoint %124 : !llvm.ptr<i64> to i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.sub %121, %126  : i64
    %128 = llvm.add %125, %127  : i64
    %129 = llvm.urem %128, %121  : i64
    %130 = llvm.sub %128, %129  : i64
    %131 = llvm.inttoptr %130 : i64 to !llvm.ptr<i64>
    %132 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %133 = llvm.insertvalue %124, %132[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.insertvalue %131, %133[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.insertvalue %135, %134[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %116, %136[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.insertvalue %117, %137[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%139 : i64)
  ^bb13(%142: i64):  // 2 preds: ^bb12, ^bb14
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %144 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.getelementptr %144[%142] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %145 : !llvm.ptr<i64>
    %146 = llvm.add %142, %141  : i64
    llvm.br ^bb13(%146 : i64)
  ^bb15:  // pred: ^bb13
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.null : !llvm.ptr<i64>
    %150 = llvm.getelementptr %149[%147] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i64> to i64
    %152 = llvm.mlir.constant(16 : index) : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.bitcast %154 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i64> to i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.sub %152, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.urem %159, %152  : i64
    %161 = llvm.sub %159, %160  : i64
    %162 = llvm.inttoptr %161 : i64 to !llvm.ptr<i64>
    %163 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %164 = llvm.insertvalue %155, %163[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %147, %167[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %148, %168[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%170 : i64)
  ^bb16(%173: i64):  // 2 preds: ^bb15, ^bb17
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %175 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.getelementptr %175[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.load %176 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %179 = llvm.load %178 : !llvm.ptr<i64>
    %180 = llvm.mul %177, %179  : i64
    %181 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.getelementptr %181[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %182 : !llvm.ptr<i64>
    %183 = llvm.add %173, %172  : i64
    llvm.br ^bb16(%183 : i64)
  ^bb18:  // pred: ^bb16
    %184 = llvm.mlir.constant(4 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.null : !llvm.ptr<i1>
    %187 = llvm.getelementptr %186[%184] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %188 = llvm.ptrtoint %187 : !llvm.ptr<i1> to i64
    %189 = llvm.mlir.constant(16 : index) : i64
    %190 = llvm.add %188, %189  : i64
    %191 = llvm.call @malloc(%190) : (i64) -> !llvm.ptr<i8>
    %192 = llvm.bitcast %191 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %193 = llvm.ptrtoint %192 : !llvm.ptr<i1> to i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.sub %189, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.urem %196, %189  : i64
    %198 = llvm.sub %196, %197  : i64
    %199 = llvm.inttoptr %198 : i64 to !llvm.ptr<i1>
    %200 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %201 = llvm.insertvalue %192, %200[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %199, %201[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.insertvalue %203, %202[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %205 = llvm.insertvalue %184, %204[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.insertvalue %185, %205[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(4 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%207 : i64)
  ^bb19(%210: i64):  // 2 preds: ^bb18, ^bb20
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %212 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.getelementptr %212[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.load %213 : !llvm.ptr<i64>
    %215 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.getelementptr %215[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %217 = llvm.load %216 : !llvm.ptr<i64>
    %218 = llvm.icmp "eq" %214, %217 : i64
    %219 = llvm.extractvalue %206[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.getelementptr %219[%210] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %218, %220 : !llvm.ptr<i1>
    %221 = llvm.add %210, %209  : i64
    llvm.br ^bb19(%221 : i64)
  ^bb21:  // pred: ^bb19
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.null : !llvm.ptr<i64>
    %225 = llvm.getelementptr %224[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %226 = llvm.ptrtoint %225 : !llvm.ptr<i64> to i64
    %227 = llvm.mlir.constant(16 : index) : i64
    %228 = llvm.add %226, %227  : i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr<i8>
    %230 = llvm.bitcast %229 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i64> to i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.sub %227, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.urem %234, %227  : i64
    %236 = llvm.sub %234, %235  : i64
    %237 = llvm.inttoptr %236 : i64 to !llvm.ptr<i64>
    %238 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %239 = llvm.insertvalue %230, %238[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %222, %242[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.insertvalue %223, %243[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%245 : i64)
  ^bb22(%248: i64):  // 2 preds: ^bb21, ^bb23
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %250 = llvm.extractvalue %206[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%248] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %252 = llvm.load %251 : !llvm.ptr<i1>
    %253 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%248] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %255 = llvm.load %254 : !llvm.ptr<i64>
    %256 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.getelementptr %256[%248] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %258 = llvm.load %257 : !llvm.ptr<i64>
    %259 = llvm.select %252, %255, %258 : i1, i64
    %260 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %261 = llvm.getelementptr %260[%248] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %259, %261 : !llvm.ptr<i64>
    %262 = llvm.add %248, %247  : i64
    llvm.br ^bb22(%262 : i64)
  ^bb24:  // pred: ^bb22
    %263 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %265 = llvm.load %264 : !llvm.ptr<i64>
    %266 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.load %267 : !llvm.ptr<i64>
    %269 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %271 = llvm.load %270 : !llvm.ptr<i64>
    %272 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mul %274, %271  : i64
    %277 = llvm.mul %276, %268  : i64
    %278 = llvm.mul %277, %265  : i64
    %279 = llvm.mlir.null : !llvm.ptr<i32>
    %280 = llvm.getelementptr %279[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i32> to i64
    %282 = llvm.mlir.constant(16 : index) : i64
    %283 = llvm.add %281, %282  : i64
    %284 = llvm.call @malloc(%283) : (i64) -> !llvm.ptr<i8>
    %285 = llvm.bitcast %284 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i32> to i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.sub %282, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.urem %289, %282  : i64
    %291 = llvm.sub %289, %290  : i64
    %292 = llvm.inttoptr %291 : i64 to !llvm.ptr<i32>
    %293 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %294 = llvm.insertvalue %285, %293[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %292, %294[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.insertvalue %296, %295[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %265, %297[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %268, %298[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %271, %299[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %277, %301[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %274, %303[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %275, %304[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%306 : i64)
  ^bb25(%308: i64):  // 2 preds: ^bb24, ^bb35
    %309 = llvm.icmp "slt" %308, %265 : i64
    llvm.cond_br %309, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%310 : i64)
  ^bb27(%312: i64):  // 2 preds: ^bb26, ^bb34
    %313 = llvm.icmp "slt" %312, %268 : i64
    llvm.cond_br %313, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%314 : i64)
  ^bb29(%316: i64):  // 2 preds: ^bb28, ^bb33
    %317 = llvm.icmp "slt" %316, %271 : i64
    llvm.cond_br %317, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%318 : i64)
  ^bb31(%320: i64):  // 2 preds: ^bb30, ^bb32
    %321 = llvm.icmp "slt" %320, %274 : i64
    llvm.cond_br %321, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %322 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.add %17, %17  : i64
    %324 = llvm.add %323, %17  : i64
    %325 = llvm.add %324, %17  : i64
    %326 = llvm.getelementptr %322[%325] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %327 = llvm.load %326 : !llvm.ptr<i32>
    %328 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.extractvalue %305[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mul %308, %329  : i64
    %331 = llvm.extractvalue %305[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mul %312, %331  : i64
    %333 = llvm.add %330, %332  : i64
    %334 = llvm.extractvalue %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mul %316, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.add %336, %320  : i64
    %338 = llvm.getelementptr %328[%337] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %327, %338 : !llvm.ptr<i32>
    %339 = llvm.add %320, %319  : i64
    llvm.br ^bb31(%339 : i64)
  ^bb33:  // pred: ^bb31
    %340 = llvm.add %316, %315  : i64
    llvm.br ^bb29(%340 : i64)
  ^bb34:  // pred: ^bb29
    %341 = llvm.add %312, %311  : i64
    llvm.br ^bb27(%341 : i64)
  ^bb35:  // pred: ^bb27
    %342 = llvm.add %308, %307  : i64
    llvm.br ^bb25(%342 : i64)
  ^bb36:  // pred: ^bb25
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.null : !llvm.ptr<i32>
    %349 = llvm.getelementptr %348[%343] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<i32> to i64
    %351 = llvm.mlir.constant(16 : index) : i64
    %352 = llvm.add %350, %351  : i64
    %353 = llvm.call @malloc(%352) : (i64) -> !llvm.ptr<i8>
    %354 = llvm.bitcast %353 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %355 = llvm.ptrtoint %354 : !llvm.ptr<i32> to i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.sub %351, %356  : i64
    %358 = llvm.add %355, %357  : i64
    %359 = llvm.urem %358, %351  : i64
    %360 = llvm.sub %358, %359  : i64
    %361 = llvm.inttoptr %360 : i64 to !llvm.ptr<i32>
    %362 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %363 = llvm.insertvalue %354, %362[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %361, %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.insertvalue %365, %364[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %343, %366[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %344, %367[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %345, %368[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %346, %369[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %345, %371[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %346, %372[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %347, %373[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.icmp "sgt" %265, %18 : i64
    %376 = llvm.icmp "sgt" %268, %18 : i64
    %377 = llvm.icmp "sgt" %271, %18 : i64
    %378 = llvm.icmp "sgt" %274, %18 : i64
    %379 = llvm.icmp "sgt" %265, %18 : i64
    %380 = llvm.icmp "sgt" %268, %18 : i64
    %381 = llvm.icmp "sgt" %271, %18 : i64
    %382 = llvm.icmp "sgt" %274, %18 : i64
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%383 : i64)
  ^bb37(%386: i64):  // 2 preds: ^bb36, ^bb47
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%388 : i64)
  ^bb39(%391: i64):  // 2 preds: ^bb38, ^bb46
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%393 : i64)
  ^bb41(%396: i64):  // 2 preds: ^bb40, ^bb45
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%398 : i64)
  ^bb43(%401: i64):  // 2 preds: ^bb42, ^bb44
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %403 = llvm.select %375, %386, %17 : i1, i64
    %404 = llvm.select %376, %391, %17 : i1, i64
    %405 = llvm.select %377, %396, %17 : i1, i64
    %406 = llvm.select %378, %401, %17 : i1, i64
    %407 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.extractvalue %305[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mul %403, %408  : i64
    %410 = llvm.extractvalue %305[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.mul %404, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.extractvalue %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.mul %405, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.add %415, %406  : i64
    %417 = llvm.getelementptr %407[%416] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %418 = llvm.load %417 : !llvm.ptr<i32>
    %419 = llvm.select %379, %386, %17 : i1, i64
    %420 = llvm.select %380, %391, %17 : i1, i64
    %421 = llvm.select %381, %396, %17 : i1, i64
    %422 = llvm.select %382, %401, %17 : i1, i64
    %423 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.extractvalue %305[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mul %419, %424  : i64
    %426 = llvm.extractvalue %305[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mul %420, %426  : i64
    %428 = llvm.add %425, %427  : i64
    %429 = llvm.extractvalue %305[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mul %421, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.add %431, %422  : i64
    %433 = llvm.getelementptr %423[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %434 = llvm.load %433 : !llvm.ptr<i32>
    %435 = llvm.icmp "slt" %418, %434 : i32
    %436 = llvm.select %435, %418, %434 : i1, i32
    %437 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.add %386, %391  : i64
    %439 = llvm.add %438, %396  : i64
    %440 = llvm.add %439, %401  : i64
    %441 = llvm.getelementptr %437[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %436, %441 : !llvm.ptr<i32>
    %442 = llvm.add %401, %400  : i64
    llvm.br ^bb43(%442 : i64)
  ^bb45:  // pred: ^bb43
    %443 = llvm.add %396, %395  : i64
    llvm.br ^bb41(%443 : i64)
  ^bb46:  // pred: ^bb41
    %444 = llvm.add %391, %390  : i64
    llvm.br ^bb39(%444 : i64)
  ^bb47:  // pred: ^bb39
    %445 = llvm.add %386, %385  : i64
    llvm.br ^bb37(%445 : i64)
  ^bb48:  // pred: ^bb37
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.null : !llvm.ptr<i32>
    %451 = llvm.getelementptr %450[%446] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i32> to i64
    %453 = llvm.mlir.constant(16 : index) : i64
    %454 = llvm.add %452, %453  : i64
    %455 = llvm.call @malloc(%454) : (i64) -> !llvm.ptr<i8>
    %456 = llvm.bitcast %455 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %457 = llvm.ptrtoint %456 : !llvm.ptr<i32> to i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.sub %453, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.urem %460, %453  : i64
    %462 = llvm.sub %460, %461  : i64
    %463 = llvm.inttoptr %462 : i64 to !llvm.ptr<i32>
    %464 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %465 = llvm.insertvalue %456, %464[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.insertvalue %463, %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.insertvalue %467, %466[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %469 = llvm.insertvalue %446, %468[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.insertvalue %447, %469[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.insertvalue %448, %470[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.insertvalue %447, %471[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.insertvalue %448, %472[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.insertvalue %449, %473[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%475 : i64)
  ^bb49(%478: i64):  // 2 preds: ^bb48, ^bb56
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%480 : i64)
  ^bb51(%483: i64):  // 2 preds: ^bb50, ^bb55
    %484 = llvm.icmp "slt" %483, %481 : i64
    llvm.cond_br %484, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%485 : i64)
  ^bb53(%488: i64):  // 2 preds: ^bb52, ^bb54
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %490 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %491 = llvm.add %478, %483  : i64
    %492 = llvm.add %491, %488  : i64
    %493 = llvm.getelementptr %490[%492] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %493 : !llvm.ptr<i32>
    %494 = llvm.add %488, %487  : i64
    llvm.br ^bb53(%494 : i64)
  ^bb55:  // pred: ^bb53
    %495 = llvm.add %483, %482  : i64
    llvm.br ^bb51(%495 : i64)
  ^bb56:  // pred: ^bb51
    %496 = llvm.add %478, %477  : i64
    llvm.br ^bb49(%496 : i64)
  ^bb57:  // pred: ^bb49
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%497 : i64)
  ^bb58(%500: i64):  // 2 preds: ^bb57, ^bb68
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%502 : i64)
  ^bb60(%505: i64):  // 2 preds: ^bb59, ^bb67
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%507 : i64)
  ^bb62(%510: i64):  // 2 preds: ^bb61, ^bb66
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%512 : i64)
  ^bb64(%515: i64):  // 2 preds: ^bb63, ^bb65
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %517 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.add %500, %505  : i64
    %519 = llvm.add %518, %510  : i64
    %520 = llvm.add %519, %515  : i64
    %521 = llvm.getelementptr %517[%520] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %522 = llvm.load %521 : !llvm.ptr<i32>
    %523 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %524 = llvm.add %500, %505  : i64
    %525 = llvm.add %524, %510  : i64
    %526 = llvm.getelementptr %523[%525] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %527 = llvm.load %526 : !llvm.ptr<i32>
    %528 = llvm.icmp "slt" %527, %522 : i32
    %529 = llvm.select %528, %527, %522 : i1, i32
    %530 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %531 = llvm.add %500, %505  : i64
    %532 = llvm.add %531, %510  : i64
    %533 = llvm.getelementptr %530[%532] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %529, %533 : !llvm.ptr<i32>
    %534 = llvm.add %515, %514  : i64
    llvm.br ^bb64(%534 : i64)
  ^bb66:  // pred: ^bb64
    %535 = llvm.add %510, %509  : i64
    llvm.br ^bb62(%535 : i64)
  ^bb67:  // pred: ^bb62
    %536 = llvm.add %505, %504  : i64
    llvm.br ^bb60(%536 : i64)
  ^bb68:  // pred: ^bb60
    %537 = llvm.add %500, %499  : i64
    llvm.br ^bb58(%537 : i64)
  ^bb69:  // pred: ^bb58
    %538 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %539 = llvm.extractvalue %474[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %540 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %541 = llvm.insertvalue %539, %538[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.insertvalue %540, %541[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.insertvalue %543, %542[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %545 = llvm.mlir.constant(1 : index) : i64
    %546 = llvm.insertvalue %545, %544[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.insertvalue %547, %546[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %550 = llvm.insertvalue %374, %549[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %551 = llvm.insertvalue %548, %550[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %551 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
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
    %83 = llvm.mlir.constant(1 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.getelementptr %50[%98] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %99 : !llvm.ptr<ptr<i8>>
    %100 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %100 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


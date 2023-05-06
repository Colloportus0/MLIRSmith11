module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(3 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.mlir.constant(2147483647 : i32) : i32
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %50 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(4 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %68 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
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
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.null : !llvm.ptr<i32>
    %85 = llvm.getelementptr %84[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i32> to i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.add %86, %87  : i64
    %89 = llvm.call @malloc(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %91 = llvm.ptrtoint %90 : !llvm.ptr<i32> to i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.sub %87, %92  : i64
    %94 = llvm.add %91, %93  : i64
    %95 = llvm.urem %94, %87  : i64
    %96 = llvm.sub %94, %95  : i64
    %97 = llvm.inttoptr %96 : i64 to !llvm.ptr<i32>
    %98 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %99 = llvm.insertvalue %90, %98[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %79, %102[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %80, %103[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %81, %104[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %82, %105[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %80, %106[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %81, %107[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %82, %108[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%111 : i64)
  ^bb1(%114: i64):  // 2 preds: ^bb0, ^bb11
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%116 : i64)
  ^bb3(%119: i64):  // 2 preds: ^bb2, ^bb10
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%121 : i64)
  ^bb5(%124: i64):  // 2 preds: ^bb4, ^bb9
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%126 : i64)
  ^bb7(%129: i64):  // 2 preds: ^bb6, ^bb8
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %131 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.add %114, %119  : i64
    %133 = llvm.add %132, %124  : i64
    %134 = llvm.add %133, %129  : i64
    %135 = llvm.getelementptr %131[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %20, %135 : !llvm.ptr<i32>
    %136 = llvm.add %129, %128  : i64
    llvm.br ^bb7(%136 : i64)
  ^bb9:  // pred: ^bb7
    %137 = llvm.add %124, %123  : i64
    llvm.br ^bb5(%137 : i64)
  ^bb10:  // pred: ^bb5
    %138 = llvm.add %119, %118  : i64
    llvm.br ^bb3(%138 : i64)
  ^bb11:  // pred: ^bb3
    %139 = llvm.add %114, %113  : i64
    llvm.br ^bb1(%139 : i64)
  ^bb12:  // pred: ^bb1
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%140 : i64)
  ^bb13(%143: i64):  // 2 preds: ^bb12, ^bb26
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%145 : i64)
  ^bb15(%148: i64):  // 2 preds: ^bb14, ^bb25
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%150 : i64)
  ^bb17(%153: i64):  // 2 preds: ^bb16, ^bb24
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%155 : i64)
  ^bb19(%158: i64):  // 2 preds: ^bb18, ^bb23
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%160 : i64)
  ^bb21(%163: i64):  // 2 preds: ^bb20, ^bb22
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %165 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %166 = llvm.add %143, %148  : i64
    %167 = llvm.add %166, %153  : i64
    %168 = llvm.add %167, %158  : i64
    %169 = llvm.add %168, %163  : i64
    %170 = llvm.getelementptr %165[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %171 = llvm.load %170 : !llvm.ptr<i32>
    %172 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.add %143, %148  : i64
    %174 = llvm.add %173, %158  : i64
    %175 = llvm.add %174, %163  : i64
    %176 = llvm.getelementptr %172[%175] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %177 = llvm.load %176 : !llvm.ptr<i32>
    %178 = llvm.icmp "slt" %177, %171 : i32
    %179 = llvm.select %178, %177, %171 : i1, i32
    %180 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.add %143, %148  : i64
    %182 = llvm.add %181, %158  : i64
    %183 = llvm.add %182, %163  : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %179, %184 : !llvm.ptr<i32>
    %185 = llvm.add %163, %162  : i64
    llvm.br ^bb21(%185 : i64)
  ^bb23:  // pred: ^bb21
    %186 = llvm.add %158, %157  : i64
    llvm.br ^bb19(%186 : i64)
  ^bb24:  // pred: ^bb19
    %187 = llvm.add %153, %152  : i64
    llvm.br ^bb17(%187 : i64)
  ^bb25:  // pred: ^bb17
    %188 = llvm.add %148, %147  : i64
    llvm.br ^bb15(%188 : i64)
  ^bb26:  // pred: ^bb15
    %189 = llvm.add %143, %142  : i64
    llvm.br ^bb13(%189 : i64)
  ^bb27:  // pred: ^bb13
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i64>
    %193 = llvm.getelementptr %192[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i64>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %190, %210[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %191, %211[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%213 : i64)
  ^bb28(%216: i64):  // 2 preds: ^bb27, ^bb29
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %218 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %19, %219 : !llvm.ptr<i64>
    %220 = llvm.add %216, %215  : i64
    llvm.br ^bb28(%220 : i64)
  ^bb30:  // pred: ^bb28
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.null : !llvm.ptr<i64>
    %224 = llvm.getelementptr %223[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %225 = llvm.ptrtoint %224 : !llvm.ptr<i64> to i64
    %226 = llvm.mlir.constant(16 : index) : i64
    %227 = llvm.add %225, %226  : i64
    %228 = llvm.call @malloc(%227) : (i64) -> !llvm.ptr<i8>
    %229 = llvm.bitcast %228 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %230 = llvm.ptrtoint %229 : !llvm.ptr<i64> to i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.sub %226, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.urem %233, %226  : i64
    %235 = llvm.sub %233, %234  : i64
    %236 = llvm.inttoptr %235 : i64 to !llvm.ptr<i64>
    %237 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %238 = llvm.insertvalue %229, %237[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.insertvalue %236, %238[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.insertvalue %240, %239[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %242 = llvm.insertvalue %221, %241[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %243 = llvm.insertvalue %222, %242[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%244 : i64)
  ^bb31(%247: i64):  // 2 preds: ^bb30, ^bb32
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %249 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.getelementptr %249[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %251 = llvm.load %250 : !llvm.ptr<i64>
    %252 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %253 = llvm.load %252 : !llvm.ptr<i64>
    %254 = llvm.mul %251, %253  : i64
    %255 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %254, %256 : !llvm.ptr<i64>
    %257 = llvm.add %247, %246  : i64
    llvm.br ^bb31(%257 : i64)
  ^bb33:  // pred: ^bb31
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.null : !llvm.ptr<i1>
    %261 = llvm.getelementptr %260[%258] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i1> to i64
    %263 = llvm.mlir.constant(16 : index) : i64
    %264 = llvm.add %262, %263  : i64
    %265 = llvm.call @malloc(%264) : (i64) -> !llvm.ptr<i8>
    %266 = llvm.bitcast %265 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %267 = llvm.ptrtoint %266 : !llvm.ptr<i1> to i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.sub %263, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.urem %270, %263  : i64
    %272 = llvm.sub %270, %271  : i64
    %273 = llvm.inttoptr %272 : i64 to !llvm.ptr<i1>
    %274 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %275 = llvm.insertvalue %266, %274[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.insertvalue %273, %275[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.insertvalue %277, %276[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.insertvalue %258, %278[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.insertvalue %259, %279[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%281 : i64)
  ^bb34(%284: i64):  // 2 preds: ^bb33, ^bb35
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %286 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.getelementptr %286[%284] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %288 = llvm.load %287 : !llvm.ptr<i64>
    %289 = llvm.extractvalue %243[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.getelementptr %289[%284] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %291 = llvm.load %290 : !llvm.ptr<i64>
    %292 = llvm.icmp "eq" %288, %291 : i64
    %293 = llvm.extractvalue %280[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.getelementptr %293[%284] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %292, %294 : !llvm.ptr<i1>
    %295 = llvm.add %284, %283  : i64
    llvm.br ^bb34(%295 : i64)
  ^bb36:  // pred: ^bb34
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.null : !llvm.ptr<i64>
    %299 = llvm.getelementptr %298[%296] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i64> to i64
    %301 = llvm.mlir.constant(16 : index) : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr<i8>
    %304 = llvm.bitcast %303 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i64> to i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.sub %301, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.urem %308, %301  : i64
    %310 = llvm.sub %308, %309  : i64
    %311 = llvm.inttoptr %310 : i64 to !llvm.ptr<i64>
    %312 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %313 = llvm.insertvalue %304, %312[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.insertvalue %311, %313[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.insertvalue %296, %316[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.insertvalue %297, %317[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(4 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%319 : i64)
  ^bb37(%322: i64):  // 2 preds: ^bb36, ^bb38
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %324 = llvm.extractvalue %280[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.getelementptr %324[%322] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %326 = llvm.load %325 : !llvm.ptr<i1>
    %327 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.getelementptr %327[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %329 = llvm.load %328 : !llvm.ptr<i64>
    %330 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.getelementptr %330[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %332 = llvm.load %331 : !llvm.ptr<i64>
    %333 = llvm.select %326, %329, %332 : i1, i64
    %334 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.getelementptr %334[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %333, %335 : !llvm.ptr<i64>
    %336 = llvm.add %322, %321  : i64
    llvm.br ^bb37(%336 : i64)
  ^bb39:  // pred: ^bb37
    %337 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.getelementptr %337[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %339 = llvm.load %338 : !llvm.ptr<i64>
    %340 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %342 = llvm.load %341 : !llvm.ptr<i64>
    %343 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.getelementptr %343[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.load %344 : !llvm.ptr<i64>
    %346 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.getelementptr %346[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %348 = llvm.load %347 : !llvm.ptr<i64>
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mul %348, %345  : i64
    %351 = llvm.mul %350, %342  : i64
    %352 = llvm.mul %351, %339  : i64
    %353 = llvm.mlir.null : !llvm.ptr<i32>
    %354 = llvm.getelementptr %353[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %355 = llvm.ptrtoint %354 : !llvm.ptr<i32> to i64
    %356 = llvm.mlir.constant(16 : index) : i64
    %357 = llvm.add %355, %356  : i64
    %358 = llvm.call @malloc(%357) : (i64) -> !llvm.ptr<i8>
    %359 = llvm.bitcast %358 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i32> to i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.sub %356, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.urem %363, %356  : i64
    %365 = llvm.sub %363, %364  : i64
    %366 = llvm.inttoptr %365 : i64 to !llvm.ptr<i32>
    %367 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %368 = llvm.insertvalue %359, %367[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %366, %368[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.insertvalue %370, %369[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %339, %371[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %342, %372[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %345, %373[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %348, %374[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %351, %375[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %348, %377[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %349, %378[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%380 : i64)
  ^bb40(%382: i64):  // 2 preds: ^bb39, ^bb50
    %383 = llvm.icmp "slt" %382, %339 : i64
    llvm.cond_br %383, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%384 : i64)
  ^bb42(%386: i64):  // 2 preds: ^bb41, ^bb49
    %387 = llvm.icmp "slt" %386, %342 : i64
    llvm.cond_br %387, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%388 : i64)
  ^bb44(%390: i64):  // 2 preds: ^bb43, ^bb48
    %391 = llvm.icmp "slt" %390, %345 : i64
    llvm.cond_br %391, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%392 : i64)
  ^bb46(%394: i64):  // 2 preds: ^bb45, ^bb47
    %395 = llvm.icmp "slt" %394, %348 : i64
    llvm.cond_br %395, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %396 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.add %18, %18  : i64
    %398 = llvm.add %397, %18  : i64
    %399 = llvm.add %398, %18  : i64
    %400 = llvm.getelementptr %396[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %401 = llvm.load %400 : !llvm.ptr<i32>
    %402 = llvm.extractvalue %379[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.extractvalue %379[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mul %382, %403  : i64
    %405 = llvm.extractvalue %379[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mul %386, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.extractvalue %379[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mul %390, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.add %410, %394  : i64
    %412 = llvm.getelementptr %402[%411] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %401, %412 : !llvm.ptr<i32>
    %413 = llvm.add %394, %393  : i64
    llvm.br ^bb46(%413 : i64)
  ^bb48:  // pred: ^bb46
    %414 = llvm.add %390, %389  : i64
    llvm.br ^bb44(%414 : i64)
  ^bb49:  // pred: ^bb44
    %415 = llvm.add %386, %385  : i64
    llvm.br ^bb42(%415 : i64)
  ^bb50:  // pred: ^bb42
    %416 = llvm.add %382, %381  : i64
    llvm.br ^bb40(%416 : i64)
  ^bb51:  // pred: ^bb40
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.null : !llvm.ptr<i32>
    %423 = llvm.getelementptr %422[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i32> to i64
    %425 = llvm.mlir.constant(16 : index) : i64
    %426 = llvm.add %424, %425  : i64
    %427 = llvm.call @malloc(%426) : (i64) -> !llvm.ptr<i8>
    %428 = llvm.bitcast %427 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i32> to i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.sub %425, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.urem %432, %425  : i64
    %434 = llvm.sub %432, %433  : i64
    %435 = llvm.inttoptr %434 : i64 to !llvm.ptr<i32>
    %436 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %437 = llvm.insertvalue %428, %436[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %435, %437[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.insertvalue %439, %438[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %417, %440[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %418, %441[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %419, %442[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %420, %443[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %420, %446[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %421, %447[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%449 : i64)
  ^bb52(%451: i64):  // 2 preds: ^bb51, ^bb62
    %452 = llvm.icmp "slt" %451, %339 : i64
    llvm.cond_br %452, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%453 : i64)
  ^bb54(%455: i64):  // 2 preds: ^bb53, ^bb61
    %456 = llvm.icmp "slt" %455, %342 : i64
    llvm.cond_br %456, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%457 : i64)
  ^bb56(%459: i64):  // 2 preds: ^bb55, ^bb60
    %460 = llvm.icmp "slt" %459, %345 : i64
    llvm.cond_br %460, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%461 : i64)
  ^bb58(%463: i64):  // 2 preds: ^bb57, ^bb59
    %464 = llvm.icmp "slt" %463, %348 : i64
    llvm.cond_br %464, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %465 = llvm.extractvalue %379[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.extractvalue %379[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mul %451, %466  : i64
    %468 = llvm.extractvalue %379[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mul %455, %468  : i64
    %470 = llvm.add %467, %469  : i64
    %471 = llvm.extractvalue %379[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.mul %459, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.add %473, %463  : i64
    %475 = llvm.getelementptr %465[%474] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %476 = llvm.load %475 : !llvm.ptr<i32>
    %477 = llvm.sub %14, %476  : i32
    %478 = llvm.extractvalue %448[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.add %451, %455  : i64
    %480 = llvm.add %479, %459  : i64
    %481 = llvm.add %480, %463  : i64
    %482 = llvm.getelementptr %478[%481] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %477, %482 : !llvm.ptr<i32>
    %483 = llvm.add %463, %462  : i64
    llvm.br ^bb58(%483 : i64)
  ^bb60:  // pred: ^bb58
    %484 = llvm.add %459, %458  : i64
    llvm.br ^bb56(%484 : i64)
  ^bb61:  // pred: ^bb56
    %485 = llvm.add %455, %454  : i64
    llvm.br ^bb54(%485 : i64)
  ^bb62:  // pred: ^bb54
    %486 = llvm.add %451, %450  : i64
    llvm.br ^bb52(%486 : i64)
  ^bb63:  // pred: ^bb52
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.null : !llvm.ptr<i32>
    %493 = llvm.getelementptr %492[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %494 = llvm.ptrtoint %493 : !llvm.ptr<i32> to i64
    %495 = llvm.mlir.constant(16 : index) : i64
    %496 = llvm.add %494, %495  : i64
    %497 = llvm.call @malloc(%496) : (i64) -> !llvm.ptr<i8>
    %498 = llvm.bitcast %497 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %499 = llvm.ptrtoint %498 : !llvm.ptr<i32> to i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.sub %495, %500  : i64
    %502 = llvm.add %499, %501  : i64
    %503 = llvm.urem %502, %495  : i64
    %504 = llvm.sub %502, %503  : i64
    %505 = llvm.inttoptr %504 : i64 to !llvm.ptr<i32>
    %506 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %507 = llvm.insertvalue %498, %506[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %505, %507[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.insertvalue %509, %508[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %487, %510[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %488, %511[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %489, %512[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.insertvalue %490, %513[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.insertvalue %488, %514[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %489, %515[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %490, %516[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %491, %517[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%519 : i64)
  ^bb64(%522: i64):  // 2 preds: ^bb63, ^bb74
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%524 : i64)
  ^bb66(%527: i64):  // 2 preds: ^bb65, ^bb73
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%529 : i64)
  ^bb68(%532: i64):  // 2 preds: ^bb67, ^bb72
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%534 : i64)
  ^bb70(%537: i64):  // 2 preds: ^bb69, ^bb71
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %539 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.add %522, %527  : i64
    %541 = llvm.add %540, %532  : i64
    %542 = llvm.add %541, %537  : i64
    %543 = llvm.getelementptr %539[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.add %522, %527  : i64
    %547 = llvm.add %546, %532  : i64
    %548 = llvm.add %547, %537  : i64
    %549 = llvm.getelementptr %545[%548] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %544, %549 : !llvm.ptr<i32>
    %550 = llvm.add %537, %536  : i64
    llvm.br ^bb70(%550 : i64)
  ^bb72:  // pred: ^bb70
    %551 = llvm.add %532, %531  : i64
    llvm.br ^bb68(%551 : i64)
  ^bb73:  // pred: ^bb68
    %552 = llvm.add %527, %526  : i64
    llvm.br ^bb66(%552 : i64)
  ^bb74:  // pred: ^bb66
    %553 = llvm.add %522, %521  : i64
    llvm.br ^bb64(%553 : i64)
  ^bb75:  // pred: ^bb64
    %554 = llvm.mlir.constant(4 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    %556 = llvm.mlir.null : !llvm.ptr<i64>
    %557 = llvm.getelementptr %556[%554] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i64> to i64
    %559 = llvm.mlir.constant(16 : index) : i64
    %560 = llvm.add %558, %559  : i64
    %561 = llvm.call @malloc(%560) : (i64) -> !llvm.ptr<i8>
    %562 = llvm.bitcast %561 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %563 = llvm.ptrtoint %562 : !llvm.ptr<i64> to i64
    %564 = llvm.mlir.constant(1 : index) : i64
    %565 = llvm.sub %559, %564  : i64
    %566 = llvm.add %563, %565  : i64
    %567 = llvm.urem %566, %559  : i64
    %568 = llvm.sub %566, %567  : i64
    %569 = llvm.inttoptr %568 : i64 to !llvm.ptr<i64>
    %570 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %571 = llvm.insertvalue %562, %570[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %572 = llvm.insertvalue %569, %571[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.insertvalue %573, %572[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %575 = llvm.insertvalue %554, %574[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %576 = llvm.insertvalue %555, %575[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(4 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%577 : i64)
  ^bb76(%580: i64):  // 2 preds: ^bb75, ^bb77
    %581 = llvm.icmp "slt" %580, %578 : i64
    llvm.cond_br %581, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %582 = llvm.extractvalue %576[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %583 = llvm.getelementptr %582[%580] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %19, %583 : !llvm.ptr<i64>
    %584 = llvm.add %580, %579  : i64
    llvm.br ^bb76(%584 : i64)
  ^bb78:  // pred: ^bb76
    %585 = llvm.mlir.constant(4 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    %587 = llvm.mlir.null : !llvm.ptr<i64>
    %588 = llvm.getelementptr %587[%585] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %589 = llvm.ptrtoint %588 : !llvm.ptr<i64> to i64
    %590 = llvm.mlir.constant(16 : index) : i64
    %591 = llvm.add %589, %590  : i64
    %592 = llvm.call @malloc(%591) : (i64) -> !llvm.ptr<i8>
    %593 = llvm.bitcast %592 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %594 = llvm.ptrtoint %593 : !llvm.ptr<i64> to i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.sub %590, %595  : i64
    %597 = llvm.add %594, %596  : i64
    %598 = llvm.urem %597, %590  : i64
    %599 = llvm.sub %597, %598  : i64
    %600 = llvm.inttoptr %599 : i64 to !llvm.ptr<i64>
    %601 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %602 = llvm.insertvalue %593, %601[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %603 = llvm.insertvalue %600, %602[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.insertvalue %604, %603[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %606 = llvm.insertvalue %585, %605[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.insertvalue %586, %606[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(4 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%608 : i64)
  ^bb79(%611: i64):  // 2 preds: ^bb78, ^bb80
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %613 = llvm.extractvalue %576[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.getelementptr %613[%611] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %615 = llvm.load %614 : !llvm.ptr<i64>
    %616 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %617 = llvm.load %616 : !llvm.ptr<i64>
    %618 = llvm.mul %615, %617  : i64
    %619 = llvm.extractvalue %607[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %620 = llvm.getelementptr %619[%611] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %618, %620 : !llvm.ptr<i64>
    %621 = llvm.add %611, %610  : i64
    llvm.br ^bb79(%621 : i64)
  ^bb81:  // pred: ^bb79
    %622 = llvm.mlir.constant(4 : index) : i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.mlir.null : !llvm.ptr<i1>
    %625 = llvm.getelementptr %624[%622] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %626 = llvm.ptrtoint %625 : !llvm.ptr<i1> to i64
    %627 = llvm.mlir.constant(16 : index) : i64
    %628 = llvm.add %626, %627  : i64
    %629 = llvm.call @malloc(%628) : (i64) -> !llvm.ptr<i8>
    %630 = llvm.bitcast %629 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %631 = llvm.ptrtoint %630 : !llvm.ptr<i1> to i64
    %632 = llvm.mlir.constant(1 : index) : i64
    %633 = llvm.sub %627, %632  : i64
    %634 = llvm.add %631, %633  : i64
    %635 = llvm.urem %634, %627  : i64
    %636 = llvm.sub %634, %635  : i64
    %637 = llvm.inttoptr %636 : i64 to !llvm.ptr<i1>
    %638 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %639 = llvm.insertvalue %630, %638[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %640 = llvm.insertvalue %637, %639[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.insertvalue %641, %640[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %643 = llvm.insertvalue %622, %642[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %644 = llvm.insertvalue %623, %643[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(4 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%645 : i64)
  ^bb82(%648: i64):  // 2 preds: ^bb81, ^bb83
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %650 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %651 = llvm.getelementptr %650[%648] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %652 = llvm.load %651 : !llvm.ptr<i64>
    %653 = llvm.extractvalue %607[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %654 = llvm.getelementptr %653[%648] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %655 = llvm.load %654 : !llvm.ptr<i64>
    %656 = llvm.icmp "eq" %652, %655 : i64
    %657 = llvm.extractvalue %644[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %658 = llvm.getelementptr %657[%648] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %656, %658 : !llvm.ptr<i1>
    %659 = llvm.add %648, %647  : i64
    llvm.br ^bb82(%659 : i64)
  ^bb84:  // pred: ^bb82
    %660 = llvm.mlir.constant(4 : index) : i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.mlir.null : !llvm.ptr<i64>
    %663 = llvm.getelementptr %662[%660] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %664 = llvm.ptrtoint %663 : !llvm.ptr<i64> to i64
    %665 = llvm.mlir.constant(16 : index) : i64
    %666 = llvm.add %664, %665  : i64
    %667 = llvm.call @malloc(%666) : (i64) -> !llvm.ptr<i8>
    %668 = llvm.bitcast %667 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %669 = llvm.ptrtoint %668 : !llvm.ptr<i64> to i64
    %670 = llvm.mlir.constant(1 : index) : i64
    %671 = llvm.sub %665, %670  : i64
    %672 = llvm.add %669, %671  : i64
    %673 = llvm.urem %672, %665  : i64
    %674 = llvm.sub %672, %673  : i64
    %675 = llvm.inttoptr %674 : i64 to !llvm.ptr<i64>
    %676 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %677 = llvm.insertvalue %668, %676[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %678 = llvm.insertvalue %675, %677[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %679 = llvm.mlir.constant(0 : index) : i64
    %680 = llvm.insertvalue %679, %678[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %681 = llvm.insertvalue %660, %680[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %682 = llvm.insertvalue %661, %681[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %683 = llvm.mlir.constant(0 : index) : i64
    %684 = llvm.mlir.constant(4 : index) : i64
    %685 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%683 : i64)
  ^bb85(%686: i64):  // 2 preds: ^bb84, ^bb86
    %687 = llvm.icmp "slt" %686, %684 : i64
    llvm.cond_br %687, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %688 = llvm.extractvalue %644[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %689 = llvm.getelementptr %688[%686] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %690 = llvm.load %689 : !llvm.ptr<i1>
    %691 = llvm.extractvalue %576[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %692 = llvm.getelementptr %691[%686] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %693 = llvm.load %692 : !llvm.ptr<i64>
    %694 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %695 = llvm.getelementptr %694[%686] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %696 = llvm.load %695 : !llvm.ptr<i64>
    %697 = llvm.select %690, %693, %696 : i1, i64
    %698 = llvm.extractvalue %682[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %699 = llvm.getelementptr %698[%686] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %697, %699 : !llvm.ptr<i64>
    %700 = llvm.add %686, %685  : i64
    llvm.br ^bb85(%700 : i64)
  ^bb87:  // pred: ^bb85
    %701 = llvm.mlir.constant(1 : index) : i64
    %702 = llvm.mlir.constant(1 : index) : i64
    %703 = llvm.mlir.constant(1 : index) : i64
    %704 = llvm.mlir.constant(1 : index) : i64
    %705 = llvm.mlir.constant(1 : index) : i64
    %706 = llvm.mlir.null : !llvm.ptr<i32>
    %707 = llvm.getelementptr %706[%701] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %708 = llvm.ptrtoint %707 : !llvm.ptr<i32> to i64
    %709 = llvm.mlir.constant(16 : index) : i64
    %710 = llvm.add %708, %709  : i64
    %711 = llvm.call @malloc(%710) : (i64) -> !llvm.ptr<i8>
    %712 = llvm.bitcast %711 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %713 = llvm.ptrtoint %712 : !llvm.ptr<i32> to i64
    %714 = llvm.mlir.constant(1 : index) : i64
    %715 = llvm.sub %709, %714  : i64
    %716 = llvm.add %713, %715  : i64
    %717 = llvm.urem %716, %709  : i64
    %718 = llvm.sub %716, %717  : i64
    %719 = llvm.inttoptr %718 : i64 to !llvm.ptr<i32>
    %720 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %721 = llvm.insertvalue %712, %720[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.insertvalue %719, %721[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.mlir.constant(0 : index) : i64
    %724 = llvm.insertvalue %723, %722[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %725 = llvm.insertvalue %701, %724[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %726 = llvm.insertvalue %702, %725[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %727 = llvm.insertvalue %703, %726[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %728 = llvm.insertvalue %704, %727[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %729 = llvm.insertvalue %702, %728[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %730 = llvm.insertvalue %703, %729[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %731 = llvm.insertvalue %704, %730[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %732 = llvm.insertvalue %705, %731[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %733 = llvm.mlir.constant(0 : index) : i64
    %734 = llvm.mlir.constant(1 : index) : i64
    %735 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%733 : i64)
  ^bb88(%736: i64):  // 2 preds: ^bb87, ^bb98
    %737 = llvm.icmp "slt" %736, %734 : i64
    llvm.cond_br %737, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %738 = llvm.mlir.constant(0 : index) : i64
    %739 = llvm.mlir.constant(1 : index) : i64
    %740 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%738 : i64)
  ^bb90(%741: i64):  // 2 preds: ^bb89, ^bb97
    %742 = llvm.icmp "slt" %741, %739 : i64
    llvm.cond_br %742, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %743 = llvm.mlir.constant(0 : index) : i64
    %744 = llvm.mlir.constant(1 : index) : i64
    %745 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%743 : i64)
  ^bb92(%746: i64):  // 2 preds: ^bb91, ^bb96
    %747 = llvm.icmp "slt" %746, %744 : i64
    llvm.cond_br %747, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %748 = llvm.mlir.constant(0 : index) : i64
    %749 = llvm.mlir.constant(1 : index) : i64
    %750 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%748 : i64)
  ^bb94(%751: i64):  // 2 preds: ^bb93, ^bb95
    %752 = llvm.icmp "slt" %751, %749 : i64
    llvm.cond_br %752, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %753 = llvm.extractvalue %518[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %754 = llvm.add %18, %18  : i64
    %755 = llvm.add %754, %18  : i64
    %756 = llvm.add %755, %18  : i64
    %757 = llvm.getelementptr %753[%756] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %758 = llvm.load %757 : !llvm.ptr<i32>
    %759 = llvm.extractvalue %732[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %760 = llvm.add %736, %741  : i64
    %761 = llvm.add %760, %746  : i64
    %762 = llvm.add %761, %751  : i64
    %763 = llvm.getelementptr %759[%762] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %758, %763 : !llvm.ptr<i32>
    %764 = llvm.add %751, %750  : i64
    llvm.br ^bb94(%764 : i64)
  ^bb96:  // pred: ^bb94
    %765 = llvm.add %746, %745  : i64
    llvm.br ^bb92(%765 : i64)
  ^bb97:  // pred: ^bb92
    %766 = llvm.add %741, %740  : i64
    llvm.br ^bb90(%766 : i64)
  ^bb98:  // pred: ^bb90
    %767 = llvm.add %736, %735  : i64
    llvm.br ^bb88(%767 : i64)
  ^bb99:  // pred: ^bb88
    %768 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %769 = llvm.insertvalue %448, %768[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %770 = llvm.insertvalue %732, %769[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %770 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(4 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.getelementptr %57[%88] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %89 : !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(3 : i64) : i64
    %116 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %98[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %99[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.getelementptr %57[%120] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %121 : !llvm.ptr<ptr<i8>>
    %122 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %122 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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


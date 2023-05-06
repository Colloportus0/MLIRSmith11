module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.mlir.constant(2147483647 : i32) : i32
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(4 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %42 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.mlir.constant(4 : index) : i64
    %61 = llvm.mlir.null : !llvm.ptr<i32>
    %62 = llvm.getelementptr %61[%60] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i32> to i64
    %64 = llvm.mlir.constant(16 : index) : i64
    %65 = llvm.add %63, %64  : i64
    %66 = llvm.call @malloc(%65) : (i64) -> !llvm.ptr<i8>
    %67 = llvm.bitcast %66 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %68 = llvm.ptrtoint %67 : !llvm.ptr<i32> to i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.sub %64, %69  : i64
    %71 = llvm.add %68, %70  : i64
    %72 = llvm.urem %71, %64  : i64
    %73 = llvm.sub %71, %72  : i64
    %74 = llvm.inttoptr %73 : i64 to !llvm.ptr<i32>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %76 = llvm.insertvalue %67, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %74, %76[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.insertvalue %78, %77[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %53, %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %55, %81[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %56, %82[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %59, %83[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %58, %84[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %56, %85[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %57, %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%88 : i64)
  ^bb1(%91: i64):  // 2 preds: ^bb0, ^bb11
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%93 : i64)
  ^bb3(%96: i64):  // 2 preds: ^bb2, ^bb10
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%98 : i64)
  ^bb5(%101: i64):  // 2 preds: ^bb4, ^bb9
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%103 : i64)
  ^bb7(%106: i64):  // 2 preds: ^bb6, ^bb8
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %108 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mul %91, %109  : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %96, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.add %113, %101  : i64
    %115 = llvm.add %114, %22  : i64
    %116 = llvm.getelementptr %108[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %101, %119  : i64
    %121 = llvm.add %120, %106  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.mul %117, %123  : i32
    %125 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mul %91, %126  : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mul %96, %128  : i64
    %130 = llvm.add %127, %129  : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %101, %131  : i64
    %133 = llvm.add %130, %132  : i64
    %134 = llvm.add %133, %106  : i64
    %135 = llvm.getelementptr %125[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %124, %135 : !llvm.ptr<i32>
    %136 = llvm.add %106, %105  : i64
    llvm.br ^bb7(%136 : i64)
  ^bb9:  // pred: ^bb7
    %137 = llvm.add %101, %100  : i64
    llvm.br ^bb5(%137 : i64)
  ^bb10:  // pred: ^bb5
    %138 = llvm.add %96, %95  : i64
    llvm.br ^bb3(%138 : i64)
  ^bb11:  // pred: ^bb3
    %139 = llvm.add %91, %90  : i64
    llvm.br ^bb1(%139 : i64)
  ^bb12:  // pred: ^bb1
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.null : !llvm.ptr<i32>
    %147 = llvm.getelementptr %146[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i32> to i64
    %149 = llvm.mlir.constant(16 : index) : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %153 = llvm.ptrtoint %152 : !llvm.ptr<i32> to i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.sub %149, %154  : i64
    %156 = llvm.add %153, %155  : i64
    %157 = llvm.urem %156, %149  : i64
    %158 = llvm.sub %156, %157  : i64
    %159 = llvm.inttoptr %158 : i64 to !llvm.ptr<i32>
    %160 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %161 = llvm.insertvalue %152, %160[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %162 = llvm.insertvalue %159, %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.insertvalue %163, %162[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %165 = llvm.insertvalue %140, %164[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.insertvalue %141, %165[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.insertvalue %142, %166[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.insertvalue %144, %167[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %142, %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %143, %169[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%171 : i64)
  ^bb13(%174: i64):  // 2 preds: ^bb12, ^bb20
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%176 : i64)
  ^bb15(%179: i64):  // 2 preds: ^bb14, ^bb19
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%181 : i64)
  ^bb17(%184: i64):  // 2 preds: ^bb16, ^bb18
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %186 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %174, %187  : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mul %179, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.add %191, %184  : i64
    %193 = llvm.getelementptr %186[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %21, %193 : !llvm.ptr<i32>
    %194 = llvm.add %184, %183  : i64
    llvm.br ^bb17(%194 : i64)
  ^bb19:  // pred: ^bb17
    %195 = llvm.add %179, %178  : i64
    llvm.br ^bb15(%195 : i64)
  ^bb20:  // pred: ^bb15
    %196 = llvm.add %174, %173  : i64
    llvm.br ^bb13(%196 : i64)
  ^bb21:  // pred: ^bb13
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%197 : i64)
  ^bb22(%200: i64):  // 2 preds: ^bb21, ^bb32
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%202 : i64)
  ^bb24(%205: i64):  // 2 preds: ^bb23, ^bb31
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%207 : i64)
  ^bb26(%210: i64):  // 2 preds: ^bb25, ^bb30
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%212 : i64)
  ^bb28(%215: i64):  // 2 preds: ^bb27, ^bb29
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %217 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mul %200, %218  : i64
    %220 = llvm.mlir.constant(4 : index) : i64
    %221 = llvm.mul %205, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %210, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.add %225, %215  : i64
    %227 = llvm.getelementptr %217[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mul %200, %230  : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mul %205, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.add %234, %210  : i64
    %236 = llvm.getelementptr %229[%235] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.load %236 : !llvm.ptr<i32>
    %238 = llvm.icmp "slt" %237, %228 : i32
    %239 = llvm.select %238, %237, %228 : i1, i32
    %240 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mul %200, %241  : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mul %205, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.add %245, %210  : i64
    %247 = llvm.getelementptr %240[%246] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %239, %247 : !llvm.ptr<i32>
    %248 = llvm.add %215, %214  : i64
    llvm.br ^bb28(%248 : i64)
  ^bb30:  // pred: ^bb28
    %249 = llvm.add %210, %209  : i64
    llvm.br ^bb26(%249 : i64)
  ^bb31:  // pred: ^bb26
    %250 = llvm.add %205, %204  : i64
    llvm.br ^bb24(%250 : i64)
  ^bb32:  // pred: ^bb24
    %251 = llvm.add %200, %199  : i64
    llvm.br ^bb22(%251 : i64)
  ^bb33:  // pred: ^bb22
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mlir.null : !llvm.ptr<i32>
    %259 = llvm.getelementptr %258[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %260 = llvm.ptrtoint %259 : !llvm.ptr<i32> to i64
    %261 = llvm.mlir.constant(16 : index) : i64
    %262 = llvm.add %260, %261  : i64
    %263 = llvm.call @malloc(%262) : (i64) -> !llvm.ptr<i8>
    %264 = llvm.bitcast %263 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %265 = llvm.ptrtoint %264 : !llvm.ptr<i32> to i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.sub %261, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.urem %268, %261  : i64
    %270 = llvm.sub %268, %269  : i64
    %271 = llvm.inttoptr %270 : i64 to !llvm.ptr<i32>
    %272 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %273 = llvm.insertvalue %264, %272[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %274 = llvm.insertvalue %271, %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.insertvalue %275, %274[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.insertvalue %252, %276[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.insertvalue %253, %277[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %279 = llvm.insertvalue %254, %278[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %280 = llvm.insertvalue %256, %279[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.insertvalue %254, %280[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.insertvalue %255, %281[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%283 : i64)
  ^bb34(%286: i64):  // 2 preds: ^bb33, ^bb41
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%288 : i64)
  ^bb36(%291: i64):  // 2 preds: ^bb35, ^bb40
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%293 : i64)
  ^bb38(%296: i64):  // 2 preds: ^bb37, ^bb39
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %298 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %286, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %291, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.add %303, %296  : i64
    %305 = llvm.getelementptr %298[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %308 = llvm.mlir.constant(4 : index) : i64
    %309 = llvm.mul %286, %308  : i64
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %291, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.add %312, %296  : i64
    %314 = llvm.getelementptr %307[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %306, %314 : !llvm.ptr<i32>
    %315 = llvm.add %296, %295  : i64
    llvm.br ^bb38(%315 : i64)
  ^bb40:  // pred: ^bb38
    %316 = llvm.add %291, %290  : i64
    llvm.br ^bb36(%316 : i64)
  ^bb41:  // pred: ^bb36
    %317 = llvm.add %286, %285  : i64
    llvm.br ^bb34(%317 : i64)
  ^bb42:  // pred: ^bb34
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%318 : i64)
  ^bb43(%321: i64):  // 2 preds: ^bb42, ^bb50
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%323 : i64)
  ^bb45(%326: i64):  // 2 preds: ^bb44, ^bb49
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%328 : i64)
  ^bb47(%331: i64):  // 2 preds: ^bb46, ^bb48
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mul %321, %336  : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mul %326, %338  : i64
    %340 = llvm.add %337, %339  : i64
    %341 = llvm.add %340, %331  : i64
    %342 = llvm.getelementptr %335[%341] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %343 = llvm.load %342 : !llvm.ptr<i32>
    %344 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mul %321, %345  : i64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mul %326, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.add %349, %334  : i64
    %351 = llvm.getelementptr %344[%350] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %343, %351 : !llvm.ptr<i32>
    %352 = llvm.add %331, %330  : i64
    llvm.br ^bb47(%352 : i64)
  ^bb49:  // pred: ^bb47
    %353 = llvm.add %326, %325  : i64
    llvm.br ^bb45(%353 : i64)
  ^bb50:  // pred: ^bb45
    %354 = llvm.add %321, %320  : i64
    llvm.br ^bb43(%354 : i64)
  ^bb51:  // pred: ^bb43
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.null : !llvm.ptr<i64>
    %358 = llvm.getelementptr %357[%355] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i64> to i64
    %360 = llvm.mlir.constant(16 : index) : i64
    %361 = llvm.add %359, %360  : i64
    %362 = llvm.call @malloc(%361) : (i64) -> !llvm.ptr<i8>
    %363 = llvm.bitcast %362 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i64> to i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.sub %360, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.urem %367, %360  : i64
    %369 = llvm.sub %367, %368  : i64
    %370 = llvm.inttoptr %369 : i64 to !llvm.ptr<i64>
    %371 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %372 = llvm.insertvalue %363, %371[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.insertvalue %370, %372[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.insertvalue %374, %373[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.insertvalue %355, %375[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %356, %376[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%378 : i64)
  ^bb52(%381: i64):  // 2 preds: ^bb51, ^bb53
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %383 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.getelementptr %383[%381] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %20, %384 : !llvm.ptr<i64>
    %385 = llvm.add %381, %380  : i64
    llvm.br ^bb52(%385 : i64)
  ^bb54:  // pred: ^bb52
    %386 = llvm.mlir.constant(4 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.null : !llvm.ptr<i64>
    %389 = llvm.getelementptr %388[%386] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i64> to i64
    %391 = llvm.mlir.constant(16 : index) : i64
    %392 = llvm.add %390, %391  : i64
    %393 = llvm.call @malloc(%392) : (i64) -> !llvm.ptr<i8>
    %394 = llvm.bitcast %393 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i64> to i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.sub %391, %396  : i64
    %398 = llvm.add %395, %397  : i64
    %399 = llvm.urem %398, %391  : i64
    %400 = llvm.sub %398, %399  : i64
    %401 = llvm.inttoptr %400 : i64 to !llvm.ptr<i64>
    %402 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %403 = llvm.insertvalue %394, %402[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.insertvalue %401, %403[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.insertvalue %405, %404[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.insertvalue %386, %406[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.insertvalue %387, %407[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%409 : i64)
  ^bb55(%412: i64):  // 2 preds: ^bb54, ^bb56
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %414 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.getelementptr %414[%412] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %416 = llvm.load %415 : !llvm.ptr<i64>
    %417 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %418 = llvm.load %417 : !llvm.ptr<i64>
    %419 = llvm.mul %416, %418  : i64
    %420 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.getelementptr %420[%412] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %419, %421 : !llvm.ptr<i64>
    %422 = llvm.add %412, %411  : i64
    llvm.br ^bb55(%422 : i64)
  ^bb57:  // pred: ^bb55
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.null : !llvm.ptr<i1>
    %426 = llvm.getelementptr %425[%423] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<i1> to i64
    %428 = llvm.mlir.constant(16 : index) : i64
    %429 = llvm.add %427, %428  : i64
    %430 = llvm.call @malloc(%429) : (i64) -> !llvm.ptr<i8>
    %431 = llvm.bitcast %430 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<i1> to i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.sub %428, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.urem %435, %428  : i64
    %437 = llvm.sub %435, %436  : i64
    %438 = llvm.inttoptr %437 : i64 to !llvm.ptr<i1>
    %439 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %440 = llvm.insertvalue %431, %439[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.insertvalue %438, %440[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.insertvalue %442, %441[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.insertvalue %423, %443[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.insertvalue %424, %444[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%446 : i64)
  ^bb58(%449: i64):  // 2 preds: ^bb57, ^bb59
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %451 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %453 = llvm.load %452 : !llvm.ptr<i64>
    %454 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.getelementptr %454[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %456 = llvm.load %455 : !llvm.ptr<i64>
    %457 = llvm.icmp "eq" %453, %456 : i64
    %458 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.getelementptr %458[%449] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %457, %459 : !llvm.ptr<i1>
    %460 = llvm.add %449, %448  : i64
    llvm.br ^bb58(%460 : i64)
  ^bb60:  // pred: ^bb58
    %461 = llvm.mlir.constant(4 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.null : !llvm.ptr<i64>
    %464 = llvm.getelementptr %463[%461] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %465 = llvm.ptrtoint %464 : !llvm.ptr<i64> to i64
    %466 = llvm.mlir.constant(16 : index) : i64
    %467 = llvm.add %465, %466  : i64
    %468 = llvm.call @malloc(%467) : (i64) -> !llvm.ptr<i8>
    %469 = llvm.bitcast %468 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %470 = llvm.ptrtoint %469 : !llvm.ptr<i64> to i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.sub %466, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.urem %473, %466  : i64
    %475 = llvm.sub %473, %474  : i64
    %476 = llvm.inttoptr %475 : i64 to !llvm.ptr<i64>
    %477 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %478 = llvm.insertvalue %469, %477[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.insertvalue %476, %478[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.mlir.constant(0 : index) : i64
    %481 = llvm.insertvalue %480, %479[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.insertvalue %461, %481[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.insertvalue %462, %482[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(4 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%484 : i64)
  ^bb61(%487: i64):  // 2 preds: ^bb60, ^bb62
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %489 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.getelementptr %489[%487] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %491 = llvm.load %490 : !llvm.ptr<i1>
    %492 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.getelementptr %492[%487] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %494 = llvm.load %493 : !llvm.ptr<i64>
    %495 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.getelementptr %495[%487] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %497 = llvm.load %496 : !llvm.ptr<i64>
    %498 = llvm.select %491, %494, %497 : i1, i64
    %499 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.getelementptr %499[%487] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %498, %500 : !llvm.ptr<i64>
    %501 = llvm.add %487, %486  : i64
    llvm.br ^bb61(%501 : i64)
  ^bb63:  // pred: ^bb61
    %502 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.getelementptr %502[%22] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %504 = llvm.load %503 : !llvm.ptr<i64>
    %505 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.getelementptr %505[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %507 = llvm.load %506 : !llvm.ptr<i64>
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mlir.constant(2 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(4 : index) : i64
    %512 = llvm.mul %511, %507  : i64
    %513 = llvm.mul %512, %504  : i64
    %514 = llvm.mlir.null : !llvm.ptr<i32>
    %515 = llvm.getelementptr %514[%513] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %516 = llvm.ptrtoint %515 : !llvm.ptr<i32> to i64
    %517 = llvm.mlir.constant(16 : index) : i64
    %518 = llvm.add %516, %517  : i64
    %519 = llvm.call @malloc(%518) : (i64) -> !llvm.ptr<i8>
    %520 = llvm.bitcast %519 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %521 = llvm.ptrtoint %520 : !llvm.ptr<i32> to i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.sub %517, %522  : i64
    %524 = llvm.add %521, %523  : i64
    %525 = llvm.urem %524, %517  : i64
    %526 = llvm.sub %524, %525  : i64
    %527 = llvm.inttoptr %526 : i64 to !llvm.ptr<i32>
    %528 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %529 = llvm.insertvalue %520, %528[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.insertvalue %527, %529[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.insertvalue %531, %530[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.insertvalue %504, %532[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.insertvalue %507, %533[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.insertvalue %508, %534[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.insertvalue %509, %535[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.insertvalue %512, %536[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.insertvalue %511, %537[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.insertvalue %509, %538[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.insertvalue %510, %539[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.mlir.constant(0 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%541 : i64)
  ^bb64(%543: i64):  // 2 preds: ^bb63, ^bb74
    %544 = llvm.icmp "slt" %543, %504 : i64
    llvm.cond_br %544, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%545 : i64)
  ^bb66(%547: i64):  // 2 preds: ^bb65, ^bb73
    %548 = llvm.icmp "slt" %547, %507 : i64
    llvm.cond_br %548, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(2 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%549 : i64)
  ^bb68(%552: i64):  // 2 preds: ^bb67, ^bb72
    %553 = llvm.icmp "slt" %552, %550 : i64
    llvm.cond_br %553, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %554 = llvm.mlir.constant(0 : index) : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%554 : i64)
  ^bb70(%557: i64):  // 2 preds: ^bb69, ^bb71
    %558 = llvm.icmp "slt" %557, %555 : i64
    llvm.cond_br %558, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %559 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mul %22, %560  : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mul %22, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.mlir.constant(2 : index) : i64
    %566 = llvm.mul %552, %565  : i64
    %567 = llvm.add %564, %566  : i64
    %568 = llvm.add %567, %557  : i64
    %569 = llvm.getelementptr %559[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %570 = llvm.load %569 : !llvm.ptr<i32>
    %571 = llvm.extractvalue %540[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.extractvalue %540[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.mul %543, %572  : i64
    %574 = llvm.mlir.constant(4 : index) : i64
    %575 = llvm.mul %547, %574  : i64
    %576 = llvm.add %573, %575  : i64
    %577 = llvm.mlir.constant(2 : index) : i64
    %578 = llvm.mul %552, %577  : i64
    %579 = llvm.add %576, %578  : i64
    %580 = llvm.add %579, %557  : i64
    %581 = llvm.getelementptr %571[%580] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %570, %581 : !llvm.ptr<i32>
    %582 = llvm.add %557, %556  : i64
    llvm.br ^bb70(%582 : i64)
  ^bb72:  // pred: ^bb70
    %583 = llvm.add %552, %551  : i64
    llvm.br ^bb68(%583 : i64)
  ^bb73:  // pred: ^bb68
    %584 = llvm.add %547, %546  : i64
    llvm.br ^bb66(%584 : i64)
  ^bb74:  // pred: ^bb66
    %585 = llvm.add %543, %542  : i64
    llvm.br ^bb64(%585 : i64)
  ^bb75:  // pred: ^bb64
    %586 = llvm.mlir.constant(1 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    %588 = llvm.mlir.constant(2 : index) : i64
    %589 = llvm.mlir.constant(2 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.constant(4 : index) : i64
    %592 = llvm.mlir.constant(4 : index) : i64
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mlir.null : !llvm.ptr<i32>
    %595 = llvm.getelementptr %594[%593] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %596 = llvm.ptrtoint %595 : !llvm.ptr<i32> to i64
    %597 = llvm.mlir.constant(16 : index) : i64
    %598 = llvm.add %596, %597  : i64
    %599 = llvm.call @malloc(%598) : (i64) -> !llvm.ptr<i8>
    %600 = llvm.bitcast %599 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %601 = llvm.ptrtoint %600 : !llvm.ptr<i32> to i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.sub %597, %602  : i64
    %604 = llvm.add %601, %603  : i64
    %605 = llvm.urem %604, %597  : i64
    %606 = llvm.sub %604, %605  : i64
    %607 = llvm.inttoptr %606 : i64 to !llvm.ptr<i32>
    %608 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %609 = llvm.insertvalue %600, %608[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %607, %609[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.insertvalue %611, %610[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %586, %612[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %587, %613[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %588, %614[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.insertvalue %589, %615[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.insertvalue %592, %616[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.insertvalue %591, %617[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.insertvalue %589, %618[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.insertvalue %590, %619[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.icmp "sgt" %504, %23 : i64
    %622 = llvm.icmp "sgt" %507, %23 : i64
    %623 = llvm.icmp "sgt" %504, %23 : i64
    %624 = llvm.icmp "sgt" %507, %23 : i64
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%625 : i64)
  ^bb76(%628: i64):  // 2 preds: ^bb75, ^bb86
    %629 = llvm.icmp "slt" %628, %626 : i64
    llvm.cond_br %629, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%630 : i64)
  ^bb78(%633: i64):  // 2 preds: ^bb77, ^bb85
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(2 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%635 : i64)
  ^bb80(%638: i64):  // 2 preds: ^bb79, ^bb84
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(2 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%640 : i64)
  ^bb82(%643: i64):  // 2 preds: ^bb81, ^bb83
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %645 = llvm.select %621, %628, %22 : i1, i64
    %646 = llvm.select %622, %633, %22 : i1, i64
    %647 = llvm.extractvalue %540[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %648 = llvm.extractvalue %540[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.mul %645, %648  : i64
    %650 = llvm.mlir.constant(4 : index) : i64
    %651 = llvm.mul %646, %650  : i64
    %652 = llvm.add %649, %651  : i64
    %653 = llvm.mlir.constant(2 : index) : i64
    %654 = llvm.mul %638, %653  : i64
    %655 = llvm.add %652, %654  : i64
    %656 = llvm.add %655, %643  : i64
    %657 = llvm.getelementptr %647[%656] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %658 = llvm.load %657 : !llvm.ptr<i32>
    %659 = llvm.select %623, %628, %22 : i1, i64
    %660 = llvm.select %624, %633, %22 : i1, i64
    %661 = llvm.extractvalue %540[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.extractvalue %540[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %663 = llvm.mul %659, %662  : i64
    %664 = llvm.mlir.constant(4 : index) : i64
    %665 = llvm.mul %660, %664  : i64
    %666 = llvm.add %663, %665  : i64
    %667 = llvm.mlir.constant(2 : index) : i64
    %668 = llvm.mul %638, %667  : i64
    %669 = llvm.add %666, %668  : i64
    %670 = llvm.add %669, %643  : i64
    %671 = llvm.getelementptr %661[%670] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %672 = llvm.load %671 : !llvm.ptr<i32>
    %673 = llvm.sub %658, %672  : i32
    %674 = llvm.extractvalue %620[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.mlir.constant(4 : index) : i64
    %676 = llvm.mul %628, %675  : i64
    %677 = llvm.mlir.constant(4 : index) : i64
    %678 = llvm.mul %633, %677  : i64
    %679 = llvm.add %676, %678  : i64
    %680 = llvm.mlir.constant(2 : index) : i64
    %681 = llvm.mul %638, %680  : i64
    %682 = llvm.add %679, %681  : i64
    %683 = llvm.add %682, %643  : i64
    %684 = llvm.getelementptr %674[%683] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %673, %684 : !llvm.ptr<i32>
    %685 = llvm.add %643, %642  : i64
    llvm.br ^bb82(%685 : i64)
  ^bb84:  // pred: ^bb82
    %686 = llvm.add %638, %637  : i64
    llvm.br ^bb80(%686 : i64)
  ^bb85:  // pred: ^bb80
    %687 = llvm.add %633, %632  : i64
    llvm.br ^bb78(%687 : i64)
  ^bb86:  // pred: ^bb78
    %688 = llvm.add %628, %627  : i64
    llvm.br ^bb76(%688 : i64)
  ^bb87:  // pred: ^bb76
    %689 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %690 = llvm.insertvalue %282, %689[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %691 = llvm.insertvalue %620, %690[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %691 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %72[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %72[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.getelementptr %77[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.mlir.constant(4 : i64) : i64
    %106 = llvm.call @omTensorCreateUntyped(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %110 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%106, %107, %109, %111) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %112 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%106, %112) : (!llvm.ptr<i8>, i64) -> ()
    %113 = llvm.call @omTensorGetShape(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %114 = llvm.call @omTensorGetStrides(%106) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %113[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %114[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %113[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %114[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(2 : i64) : i64
    %126 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %113[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %114[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(3 : i64) : i64
    %131 = llvm.extractvalue %73[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %113[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %73[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %114[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.getelementptr %77[%135] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %106, %136 : !llvm.ptr<ptr<i8>>
    %137 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %137 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
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


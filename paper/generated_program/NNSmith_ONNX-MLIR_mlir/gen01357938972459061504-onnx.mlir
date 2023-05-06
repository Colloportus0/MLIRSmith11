module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(0 : i64) : i64
    %19 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.mlir.null : !llvm.ptr<i32>
    %42 = llvm.getelementptr %41[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(16 : index) : i64
    %45 = llvm.add %43, %44  : i64
    %46 = llvm.call @malloc(%45) : (i64) -> !llvm.ptr<i8>
    %47 = llvm.bitcast %46 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.sub %44, %49  : i64
    %51 = llvm.add %48, %50  : i64
    %52 = llvm.urem %51, %44  : i64
    %53 = llvm.sub %51, %52  : i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr<i32>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.insertvalue %47, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %34, %60[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %35, %61[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %36, %62[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %39, %63[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %38, %64[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %36, %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %37, %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%68 : i64)
  ^bb1(%71: i64):  // 2 preds: ^bb0, ^bb11
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%73 : i64)
  ^bb3(%76: i64):  // 2 preds: ^bb2, ^bb10
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%78 : i64)
  ^bb5(%81: i64):  // 2 preds: ^bb4, ^bb9
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%83 : i64)
  ^bb7(%86: i64):  // 2 preds: ^bb6, ^bb8
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %88 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(4 : index) : i64
    %90 = llvm.mul %71, %89  : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mul %76, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mul %81, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.add %96, %86  : i64
    %98 = llvm.getelementptr %88[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.load %98 : !llvm.ptr<i32>
    %100 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.getelementptr %100[%86] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.icmp "sgt" %99, %102 : i32
    %104 = llvm.select %103, %99, %102 : i1, i32
    %105 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(4 : index) : i64
    %107 = llvm.mul %71, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %76, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %81, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.add %113, %86  : i64
    %115 = llvm.getelementptr %105[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %104, %115 : !llvm.ptr<i32>
    %116 = llvm.add %86, %85  : i64
    llvm.br ^bb7(%116 : i64)
  ^bb9:  // pred: ^bb7
    %117 = llvm.add %81, %80  : i64
    llvm.br ^bb5(%117 : i64)
  ^bb10:  // pred: ^bb5
    %118 = llvm.add %76, %75  : i64
    llvm.br ^bb3(%118 : i64)
  ^bb11:  // pred: ^bb3
    %119 = llvm.add %71, %70  : i64
    llvm.br ^bb1(%119 : i64)
  ^bb12:  // pred: ^bb1
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(2 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mlir.null : !llvm.ptr<i32>
    %129 = llvm.getelementptr %128[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<i32> to i64
    %131 = llvm.mlir.constant(16 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i32> to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %131, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.urem %138, %131  : i64
    %140 = llvm.sub %138, %139  : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr<i32>
    %142 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %123, %149[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %126, %150[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %125, %151[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %123, %152[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %124, %153[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%155 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb23
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%160 : i64)
  ^bb15(%163: i64):  // 2 preds: ^bb14, ^bb22
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%165 : i64)
  ^bb17(%168: i64):  // 2 preds: ^bb16, ^bb21
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%170 : i64)
  ^bb19(%173: i64):  // 2 preds: ^bb18, ^bb20
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %175 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mul %158, %176  : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mul %163, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mul %168, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.add %183, %173  : i64
    %185 = llvm.getelementptr %175[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.icmp "slt" %186, %188 : i32
    %190 = llvm.select %189, %188, %186 : i1, i32
    %191 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %192 = llvm.load %191 : !llvm.ptr<i32>
    %193 = llvm.icmp "slt" %190, %192 : i32
    %194 = llvm.select %193, %190, %192 : i1, i32
    %195 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mul %158, %196  : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mul %163, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %168, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.add %203, %173  : i64
    %205 = llvm.getelementptr %195[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %194, %205 : !llvm.ptr<i32>
    %206 = llvm.add %173, %172  : i64
    llvm.br ^bb19(%206 : i64)
  ^bb21:  // pred: ^bb19
    %207 = llvm.add %168, %167  : i64
    llvm.br ^bb17(%207 : i64)
  ^bb22:  // pred: ^bb17
    %208 = llvm.add %163, %162  : i64
    llvm.br ^bb15(%208 : i64)
  ^bb23:  // pred: ^bb15
    %209 = llvm.add %158, %157  : i64
    llvm.br ^bb13(%209 : i64)
  ^bb24:  // pred: ^bb13
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(4 : index) : i64
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mlir.null : !llvm.ptr<i64>
    %219 = llvm.getelementptr %218[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i64> to i64
    %221 = llvm.mlir.constant(16 : index) : i64
    %222 = llvm.add %220, %221  : i64
    %223 = llvm.call @malloc(%222) : (i64) -> !llvm.ptr<i8>
    %224 = llvm.bitcast %223 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %225 = llvm.ptrtoint %224 : !llvm.ptr<i64> to i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.sub %221, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.urem %228, %221  : i64
    %230 = llvm.sub %228, %229  : i64
    %231 = llvm.inttoptr %230 : i64 to !llvm.ptr<i64>
    %232 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %233 = llvm.insertvalue %224, %232[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %231, %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.insertvalue %235, %234[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %210, %236[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %211, %237[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %212, %238[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %216, %240[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %215, %241[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %213, %242[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %214, %243[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%245 : i64)
  ^bb25(%248: i64):  // 2 preds: ^bb24, ^bb35
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%250 : i64)
  ^bb27(%253: i64):  // 2 preds: ^bb26, ^bb34
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%255 : i64)
  ^bb29(%258: i64):  // 2 preds: ^bb28, ^bb33
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%260 : i64)
  ^bb31(%263: i64):  // 2 preds: ^bb30, ^bb32
    %264 = llvm.icmp "slt" %263, %261 : i64
    llvm.cond_br %264, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %265 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mul %248, %266  : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mul %253, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mul %258, %271  : i64
    %273 = llvm.add %270, %272  : i64
    %274 = llvm.add %273, %263  : i64
    %275 = llvm.getelementptr %265[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %276 = llvm.load %275 : !llvm.ptr<i32>
    %277 = llvm.sext %276 : i32 to i64
    %278 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mul %248, %279  : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mul %253, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %258, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.add %286, %263  : i64
    %288 = llvm.getelementptr %278[%287] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %277, %288 : !llvm.ptr<i64>
    %289 = llvm.add %263, %262  : i64
    llvm.br ^bb31(%289 : i64)
  ^bb33:  // pred: ^bb31
    %290 = llvm.add %258, %257  : i64
    llvm.br ^bb29(%290 : i64)
  ^bb34:  // pred: ^bb29
    %291 = llvm.add %253, %252  : i64
    llvm.br ^bb27(%291 : i64)
  ^bb35:  // pred: ^bb27
    %292 = llvm.add %248, %247  : i64
    llvm.br ^bb25(%292 : i64)
  ^bb36:  // pred: ^bb25
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mlir.null : !llvm.ptr<i64>
    %300 = llvm.getelementptr %299[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.ptrtoint %300 : !llvm.ptr<i64> to i64
    %302 = llvm.mlir.constant(16 : index) : i64
    %303 = llvm.add %301, %302  : i64
    %304 = llvm.call @malloc(%303) : (i64) -> !llvm.ptr<i8>
    %305 = llvm.bitcast %304 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.sub %302, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.urem %309, %302  : i64
    %311 = llvm.sub %309, %310  : i64
    %312 = llvm.inttoptr %311 : i64 to !llvm.ptr<i64>
    %313 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %314 = llvm.insertvalue %305, %313[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.insertvalue %312, %314[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.insertvalue %316, %315[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.insertvalue %293, %317[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.insertvalue %294, %318[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %295, %319[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.insertvalue %297, %320[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.insertvalue %295, %321[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %296, %322[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%324 : i64)
  ^bb37(%327: i64):  // 2 preds: ^bb36, ^bb44
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%329 : i64)
  ^bb39(%332: i64):  // 2 preds: ^bb38, ^bb43
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%334 : i64)
  ^bb41(%337: i64):  // 2 preds: ^bb40, ^bb42
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %339 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %327, %340  : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mul %332, %342  : i64
    %344 = llvm.add %341, %343  : i64
    %345 = llvm.add %344, %337  : i64
    %346 = llvm.getelementptr %339[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %346 : !llvm.ptr<i64>
    %347 = llvm.add %337, %336  : i64
    llvm.br ^bb41(%347 : i64)
  ^bb43:  // pred: ^bb41
    %348 = llvm.add %332, %331  : i64
    llvm.br ^bb39(%348 : i64)
  ^bb44:  // pred: ^bb39
    %349 = llvm.add %327, %326  : i64
    llvm.br ^bb37(%349 : i64)
  ^bb45:  // pred: ^bb37
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%350 : i64)
  ^bb46(%353: i64):  // 2 preds: ^bb45, ^bb56
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%355 : i64)
  ^bb48(%358: i64):  // 2 preds: ^bb47, ^bb55
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%360 : i64)
  ^bb50(%363: i64):  // 2 preds: ^bb49, ^bb54
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%365 : i64)
  ^bb52(%368: i64):  // 2 preds: ^bb51, ^bb53
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %370 = llvm.extractvalue %244[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mul %353, %371  : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mul %358, %373  : i64
    %375 = llvm.add %372, %374  : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mul %363, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.add %378, %368  : i64
    %380 = llvm.getelementptr %370[%379] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %381 = llvm.load %380 : !llvm.ptr<i64>
    %382 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mul %353, %383  : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mul %358, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.add %387, %368  : i64
    %389 = llvm.getelementptr %382[%388] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %390 = llvm.load %389 : !llvm.ptr<i64>
    %391 = llvm.add %390, %381  : i64
    %392 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mul %353, %393  : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mul %358, %395  : i64
    %397 = llvm.add %394, %396  : i64
    %398 = llvm.add %397, %368  : i64
    %399 = llvm.getelementptr %392[%398] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %391, %399 : !llvm.ptr<i64>
    %400 = llvm.add %368, %367  : i64
    llvm.br ^bb52(%400 : i64)
  ^bb54:  // pred: ^bb52
    %401 = llvm.add %363, %362  : i64
    llvm.br ^bb50(%401 : i64)
  ^bb55:  // pred: ^bb50
    %402 = llvm.add %358, %357  : i64
    llvm.br ^bb48(%402 : i64)
  ^bb56:  // pred: ^bb48
    %403 = llvm.add %353, %352  : i64
    llvm.br ^bb46(%403 : i64)
  ^bb57:  // pred: ^bb46
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(4 : index) : i64
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mlir.null : !llvm.ptr<i64>
    %411 = llvm.getelementptr %410[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.ptrtoint %411 : !llvm.ptr<i64> to i64
    %413 = llvm.mlir.constant(16 : index) : i64
    %414 = llvm.add %412, %413  : i64
    %415 = llvm.call @malloc(%414) : (i64) -> !llvm.ptr<i8>
    %416 = llvm.bitcast %415 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %417 = llvm.ptrtoint %416 : !llvm.ptr<i64> to i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.sub %413, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.urem %420, %413  : i64
    %422 = llvm.sub %420, %421  : i64
    %423 = llvm.inttoptr %422 : i64 to !llvm.ptr<i64>
    %424 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %425 = llvm.insertvalue %416, %424[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %426 = llvm.insertvalue %423, %425[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.insertvalue %427, %426[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %429 = llvm.insertvalue %404, %428[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %430 = llvm.insertvalue %405, %429[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %431 = llvm.insertvalue %406, %430[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.insertvalue %408, %431[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %433 = llvm.insertvalue %406, %432[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.insertvalue %407, %433[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.null : !llvm.ptr<i64>
    %437 = llvm.getelementptr %436[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %438 = llvm.ptrtoint %437 : !llvm.ptr<i64> to i64
    %439 = llvm.alloca %438 x i64 : (i64) -> !llvm.ptr<i64>
    %440 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %441 = llvm.insertvalue %439, %440[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %442 = llvm.insertvalue %439, %441[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.insertvalue %443, %442[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%445 : i64)
  ^bb58(%448: i64):  // 2 preds: ^bb57, ^bb68
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%450 : i64)
  ^bb60(%453: i64):  // 2 preds: ^bb59, ^bb67
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%455 : i64)
  ^bb62(%458: i64):  // 2 preds: ^bb61, ^bb66
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %460 = llvm.extractvalue %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %18, %460 : !llvm.ptr<i64>
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%461 : i64)
  ^bb64(%464: i64):  // 2 preds: ^bb63, ^bb65
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %466 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mul %448, %467  : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %453, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.add %471, %464  : i64
    %473 = llvm.getelementptr %466[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %474 = llvm.load %473 : !llvm.ptr<i64>
    %475 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mul %448, %476  : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mul %464, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.add %480, %458  : i64
    %482 = llvm.getelementptr %475[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %483 = llvm.load %482 : !llvm.ptr<i64>
    %484 = llvm.extractvalue %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %485 = llvm.load %484 : !llvm.ptr<i64>
    %486 = llvm.mul %474, %483  : i64
    %487 = llvm.add %485, %486  : i64
    %488 = llvm.extractvalue %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    llvm.store %487, %488 : !llvm.ptr<i64>
    %489 = llvm.add %464, %463  : i64
    llvm.br ^bb64(%489 : i64)
  ^bb66:  // pred: ^bb64
    %490 = llvm.extractvalue %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %491 = llvm.load %490 : !llvm.ptr<i64>
    %492 = llvm.extractvalue %434[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mul %448, %493  : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %453, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %458  : i64
    %499 = llvm.getelementptr %492[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %491, %499 : !llvm.ptr<i64>
    %500 = llvm.add %458, %457  : i64
    llvm.br ^bb62(%500 : i64)
  ^bb67:  // pred: ^bb62
    %501 = llvm.add %453, %452  : i64
    llvm.br ^bb60(%501 : i64)
  ^bb68:  // pred: ^bb60
    %502 = llvm.add %448, %447  : i64
    llvm.br ^bb58(%502 : i64)
  ^bb69:  // pred: ^bb58
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(4 : index) : i64
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mlir.null : !llvm.ptr<i64>
    %510 = llvm.getelementptr %509[%508] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %511 = llvm.ptrtoint %510 : !llvm.ptr<i64> to i64
    %512 = llvm.mlir.constant(16 : index) : i64
    %513 = llvm.add %511, %512  : i64
    %514 = llvm.call @malloc(%513) : (i64) -> !llvm.ptr<i8>
    %515 = llvm.bitcast %514 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %516 = llvm.ptrtoint %515 : !llvm.ptr<i64> to i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.sub %512, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.urem %519, %512  : i64
    %521 = llvm.sub %519, %520  : i64
    %522 = llvm.inttoptr %521 : i64 to !llvm.ptr<i64>
    %523 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %524 = llvm.insertvalue %515, %523[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %525 = llvm.insertvalue %522, %524[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.insertvalue %526, %525[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %528 = llvm.insertvalue %503, %527[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %529 = llvm.insertvalue %504, %528[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %530 = llvm.insertvalue %505, %529[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %531 = llvm.insertvalue %507, %530[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %532 = llvm.insertvalue %505, %531[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %533 = llvm.insertvalue %506, %532[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%534 : i64)
  ^bb70(%537: i64):  // 2 preds: ^bb69, ^bb77
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%539 : i64)
  ^bb72(%542: i64):  // 2 preds: ^bb71, ^bb76
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%544 : i64)
  ^bb74(%547: i64):  // 2 preds: ^bb73, ^bb75
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %549 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %550 = llvm.mlir.constant(4 : index) : i64
    %551 = llvm.mul %537, %550  : i64
    %552 = llvm.mlir.constant(2 : index) : i64
    %553 = llvm.mul %542, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.add %554, %547  : i64
    %556 = llvm.getelementptr %549[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %557 = llvm.load %556 : !llvm.ptr<i64>
    %558 = llvm.mlir.constant(false) : i1
    %559 = "llvm.intr.abs"(%557, %558) : (i64, i1) -> i64
    %560 = llvm.extractvalue %533[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %561 = llvm.mlir.constant(4 : index) : i64
    %562 = llvm.mul %537, %561  : i64
    %563 = llvm.mlir.constant(2 : index) : i64
    %564 = llvm.mul %542, %563  : i64
    %565 = llvm.add %562, %564  : i64
    %566 = llvm.add %565, %547  : i64
    %567 = llvm.getelementptr %560[%566] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %559, %567 : !llvm.ptr<i64>
    %568 = llvm.add %547, %546  : i64
    llvm.br ^bb74(%568 : i64)
  ^bb76:  // pred: ^bb74
    %569 = llvm.add %542, %541  : i64
    llvm.br ^bb72(%569 : i64)
  ^bb77:  // pred: ^bb72
    %570 = llvm.add %537, %536  : i64
    llvm.br ^bb70(%570 : i64)
  ^bb78:  // pred: ^bb70
    %571 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %572 = llvm.insertvalue %434, %571[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %573 = llvm.insertvalue %533, %572[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %573 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(0 : i64) : i64
    %97 = llvm.getelementptr %70[%96] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %97 : !llvm.ptr<ptr<i8>>
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.call @omTensorCreateUntyped(%98) : (i64) -> !llvm.ptr<i8>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.bitcast %101 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %103 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.bitcast %103 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%99, %100, %102, %104) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %105 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%99, %105) : (!llvm.ptr<i8>, i64) -> ()
    %106 = llvm.call @omTensorGetShape(%99) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %107 = llvm.call @omTensorGetStrides(%99) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %108 = llvm.mlir.constant(0 : i64) : i64
    %109 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.getelementptr %106[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %107[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %106[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %107[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(2 : i64) : i64
    %119 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.getelementptr %106[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %107[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.getelementptr %70[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %99, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %125 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<130 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<130 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


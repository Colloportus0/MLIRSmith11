module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 4 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(3 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.constant(4 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.mlir.null : !llvm.ptr<i32>
    %54 = llvm.getelementptr %53[%52] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %72 = llvm.insertvalue %46, %71[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %47, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %48, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %49, %74[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %51, %75[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %48, %76[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %49, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %50, %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %106 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %83, %107  : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %88, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.add %111, %93  : i64
    %113 = llvm.add %112, %98  : i64
    %114 = llvm.getelementptr %106[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %105, %114 : !llvm.ptr<i32>
    %115 = llvm.add %98, %97  : i64
    llvm.br ^bb7(%115 : i64)
  ^bb9:  // pred: ^bb7
    %116 = llvm.add %93, %92  : i64
    llvm.br ^bb5(%116 : i64)
  ^bb10:  // pred: ^bb5
    %117 = llvm.add %88, %87  : i64
    llvm.br ^bb3(%117 : i64)
  ^bb11:  // pred: ^bb3
    %118 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%118 : i64)
  ^bb12:  // pred: ^bb1
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%119 : i64)
  ^bb13(%122: i64):  // 2 preds: ^bb12, ^bb23
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%124 : i64)
  ^bb15(%127: i64):  // 2 preds: ^bb14, ^bb22
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%129 : i64)
  ^bb17(%132: i64):  // 2 preds: ^bb16, ^bb21
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%134 : i64)
  ^bb19(%137: i64):  // 2 preds: ^bb18, ^bb20
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.add %132, %139  : i64
    %141 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.add %122, %127  : i64
    %143 = llvm.add %142, %132  : i64
    %144 = llvm.add %143, %137  : i64
    %145 = llvm.getelementptr %141[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(4 : index) : i64
    %149 = llvm.mul %122, %148  : i64
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mul %127, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.add %152, %140  : i64
    %154 = llvm.add %153, %137  : i64
    %155 = llvm.getelementptr %147[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %146, %155 : !llvm.ptr<i32>
    %156 = llvm.add %137, %136  : i64
    llvm.br ^bb19(%156 : i64)
  ^bb21:  // pred: ^bb19
    %157 = llvm.add %132, %131  : i64
    llvm.br ^bb17(%157 : i64)
  ^bb22:  // pred: ^bb17
    %158 = llvm.add %127, %126  : i64
    llvm.br ^bb15(%158 : i64)
  ^bb23:  // pred: ^bb15
    %159 = llvm.add %122, %121  : i64
    llvm.br ^bb13(%159 : i64)
  ^bb24:  // pred: ^bb13
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%160 : i64)
  ^bb25(%163: i64):  // 2 preds: ^bb24, ^bb35
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%165 : i64)
  ^bb27(%168: i64):  // 2 preds: ^bb26, ^bb34
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%170 : i64)
  ^bb29(%173: i64):  // 2 preds: ^bb28, ^bb33
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%175 : i64)
  ^bb31(%178: i64):  // 2 preds: ^bb30, ^bb32
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.add %173, %180  : i64
    %182 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.add %163, %168  : i64
    %184 = llvm.add %183, %173  : i64
    %185 = llvm.add %184, %178  : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %187 = llvm.load %186 : !llvm.ptr<i32>
    %188 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mul %163, %189  : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %168, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.add %193, %181  : i64
    %195 = llvm.add %194, %178  : i64
    %196 = llvm.getelementptr %188[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %187, %196 : !llvm.ptr<i32>
    %197 = llvm.add %178, %177  : i64
    llvm.br ^bb31(%197 : i64)
  ^bb33:  // pred: ^bb31
    %198 = llvm.add %173, %172  : i64
    llvm.br ^bb29(%198 : i64)
  ^bb34:  // pred: ^bb29
    %199 = llvm.add %168, %167  : i64
    llvm.br ^bb27(%199 : i64)
  ^bb35:  // pred: ^bb27
    %200 = llvm.add %163, %162  : i64
    llvm.br ^bb25(%200 : i64)
  ^bb36:  // pred: ^bb25
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%201 : i64)
  ^bb37(%204: i64):  // 2 preds: ^bb36, ^bb47
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%206 : i64)
  ^bb39(%209: i64):  // 2 preds: ^bb38, ^bb46
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%211 : i64)
  ^bb41(%214: i64):  // 2 preds: ^bb40, ^bb45
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%216 : i64)
  ^bb43(%219: i64):  // 2 preds: ^bb42, ^bb44
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %221 = llvm.mlir.constant(3 : index) : i64
    %222 = llvm.add %214, %221  : i64
    %223 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.add %204, %209  : i64
    %225 = llvm.add %224, %214  : i64
    %226 = llvm.add %225, %219  : i64
    %227 = llvm.getelementptr %223[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mul %204, %230  : i64
    %232 = llvm.mlir.constant(4 : index) : i64
    %233 = llvm.mul %209, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.add %234, %222  : i64
    %236 = llvm.add %235, %219  : i64
    %237 = llvm.getelementptr %229[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %228, %237 : !llvm.ptr<i32>
    %238 = llvm.add %219, %218  : i64
    llvm.br ^bb43(%238 : i64)
  ^bb45:  // pred: ^bb43
    %239 = llvm.add %214, %213  : i64
    llvm.br ^bb41(%239 : i64)
  ^bb46:  // pred: ^bb41
    %240 = llvm.add %209, %208  : i64
    llvm.br ^bb39(%240 : i64)
  ^bb47:  // pred: ^bb39
    %241 = llvm.add %204, %203  : i64
    llvm.br ^bb37(%241 : i64)
  ^bb48:  // pred: ^bb37
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i32>
    %250 = llvm.getelementptr %249[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i32> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i32> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i32>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %242, %267[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %243, %268[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %244, %269[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %245, %270[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %247, %271[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %244, %272[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %245, %273[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %246, %274[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%276 : i64)
  ^bb49(%279: i64):  // 2 preds: ^bb48, ^bb59
    %280 = llvm.icmp "slt" %279, %277 : i64
    llvm.cond_br %280, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%281 : i64)
  ^bb51(%284: i64):  // 2 preds: ^bb50, ^bb58
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(4 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%286 : i64)
  ^bb53(%289: i64):  // 2 preds: ^bb52, ^bb57
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%291 : i64)
  ^bb55(%294: i64):  // 2 preds: ^bb54, ^bb56
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %296 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(4 : index) : i64
    %298 = llvm.mul %279, %297  : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mul %284, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.add %301, %289  : i64
    %303 = llvm.add %302, %294  : i64
    %304 = llvm.getelementptr %296[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %305 = llvm.load %304 : !llvm.ptr<i32>
    %306 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.add %279, %284  : i64
    %308 = llvm.add %307, %14  : i64
    %309 = llvm.add %308, %294  : i64
    %310 = llvm.getelementptr %306[%309] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.load %310 : !llvm.ptr<i32>
    %312 = llvm.add %305, %311  : i32
    %313 = llvm.extractvalue %275[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(4 : index) : i64
    %315 = llvm.mul %279, %314  : i64
    %316 = llvm.mlir.constant(4 : index) : i64
    %317 = llvm.mul %284, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.add %318, %289  : i64
    %320 = llvm.add %319, %294  : i64
    %321 = llvm.getelementptr %313[%320] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %312, %321 : !llvm.ptr<i32>
    %322 = llvm.add %294, %293  : i64
    llvm.br ^bb55(%322 : i64)
  ^bb57:  // pred: ^bb55
    %323 = llvm.add %289, %288  : i64
    llvm.br ^bb53(%323 : i64)
  ^bb58:  // pred: ^bb53
    %324 = llvm.add %284, %283  : i64
    llvm.br ^bb51(%324 : i64)
  ^bb59:  // pred: ^bb51
    %325 = llvm.add %279, %278  : i64
    llvm.br ^bb49(%325 : i64)
  ^bb60:  // pred: ^bb49
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.null : !llvm.ptr<i64>
    %329 = llvm.getelementptr %328[%326] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i64> to i64
    %331 = llvm.mlir.constant(16 : index) : i64
    %332 = llvm.add %330, %331  : i64
    %333 = llvm.call @malloc(%332) : (i64) -> !llvm.ptr<i8>
    %334 = llvm.bitcast %333 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i64> to i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.sub %331, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.urem %338, %331  : i64
    %340 = llvm.sub %338, %339  : i64
    %341 = llvm.inttoptr %340 : i64 to !llvm.ptr<i64>
    %342 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %343 = llvm.insertvalue %334, %342[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %341, %343[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.insertvalue %345, %344[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %347 = llvm.insertvalue %326, %346[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.insertvalue %327, %347[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%349 : i64)
  ^bb61(%352: i64):  // 2 preds: ^bb60, ^bb62
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %354 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.getelementptr %354[%352] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %355 : !llvm.ptr<i64>
    %356 = llvm.add %352, %351  : i64
    llvm.br ^bb61(%356 : i64)
  ^bb63:  // pred: ^bb61
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.null : !llvm.ptr<i64>
    %360 = llvm.getelementptr %359[%357] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %361 = llvm.ptrtoint %360 : !llvm.ptr<i64> to i64
    %362 = llvm.mlir.constant(16 : index) : i64
    %363 = llvm.add %361, %362  : i64
    %364 = llvm.call @malloc(%363) : (i64) -> !llvm.ptr<i8>
    %365 = llvm.bitcast %364 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %366 = llvm.ptrtoint %365 : !llvm.ptr<i64> to i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.sub %362, %367  : i64
    %369 = llvm.add %366, %368  : i64
    %370 = llvm.urem %369, %362  : i64
    %371 = llvm.sub %369, %370  : i64
    %372 = llvm.inttoptr %371 : i64 to !llvm.ptr<i64>
    %373 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %374 = llvm.insertvalue %365, %373[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.insertvalue %372, %374[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.insertvalue %376, %375[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.insertvalue %357, %377[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %358, %378[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%380 : i64)
  ^bb64(%383: i64):  // 2 preds: ^bb63, ^bb65
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %385 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.getelementptr %385[%383] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %387 = llvm.load %386 : !llvm.ptr<i64>
    %388 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %389 = llvm.load %388 : !llvm.ptr<i64>
    %390 = llvm.mul %387, %389  : i64
    %391 = llvm.extractvalue %379[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%383] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %390, %392 : !llvm.ptr<i64>
    %393 = llvm.add %383, %382  : i64
    llvm.br ^bb64(%393 : i64)
  ^bb66:  // pred: ^bb64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i1>
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i1> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i1> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i1>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.insertvalue %394, %414[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.insertvalue %395, %415[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%417 : i64)
  ^bb67(%420: i64):  // 2 preds: ^bb66, ^bb68
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %422 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %424 = llvm.load %423 : !llvm.ptr<i64>
    %425 = llvm.extractvalue %379[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.load %426 : !llvm.ptr<i64>
    %428 = llvm.icmp "eq" %424, %427 : i64
    %429 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.getelementptr %429[%420] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %428, %430 : !llvm.ptr<i1>
    %431 = llvm.add %420, %419  : i64
    llvm.br ^bb67(%431 : i64)
  ^bb69:  // pred: ^bb67
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.null : !llvm.ptr<i64>
    %435 = llvm.getelementptr %434[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %436 = llvm.ptrtoint %435 : !llvm.ptr<i64> to i64
    %437 = llvm.mlir.constant(16 : index) : i64
    %438 = llvm.add %436, %437  : i64
    %439 = llvm.call @malloc(%438) : (i64) -> !llvm.ptr<i8>
    %440 = llvm.bitcast %439 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %441 = llvm.ptrtoint %440 : !llvm.ptr<i64> to i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.sub %437, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.urem %444, %437  : i64
    %446 = llvm.sub %444, %445  : i64
    %447 = llvm.inttoptr %446 : i64 to !llvm.ptr<i64>
    %448 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %449 = llvm.insertvalue %440, %448[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.insertvalue %447, %449[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.insertvalue %451, %450[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.insertvalue %432, %452[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.insertvalue %433, %453[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(4 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%455 : i64)
  ^bb70(%458: i64):  // 2 preds: ^bb69, ^bb71
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %460 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.getelementptr %460[%458] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %462 = llvm.load %461 : !llvm.ptr<i1>
    %463 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.getelementptr %463[%458] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %465 = llvm.load %464 : !llvm.ptr<i64>
    %466 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.getelementptr %466[%458] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %468 = llvm.load %467 : !llvm.ptr<i64>
    %469 = llvm.select %462, %465, %468 : i1, i64
    %470 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.getelementptr %470[%458] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %469, %471 : !llvm.ptr<i64>
    %472 = llvm.add %458, %457  : i64
    llvm.br ^bb70(%472 : i64)
  ^bb72:  // pred: ^bb70
    %473 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.getelementptr %473[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.load %474 : !llvm.ptr<i64>
    %476 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.getelementptr %476[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %478 = llvm.load %477 : !llvm.ptr<i64>
    %479 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.getelementptr %479[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %481 = llvm.load %480 : !llvm.ptr<i64>
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mul %481, %482  : i64
    %485 = llvm.mul %484, %478  : i64
    %486 = llvm.mul %485, %475  : i64
    %487 = llvm.mlir.null : !llvm.ptr<i32>
    %488 = llvm.getelementptr %487[%486] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %489 = llvm.ptrtoint %488 : !llvm.ptr<i32> to i64
    %490 = llvm.mlir.constant(16 : index) : i64
    %491 = llvm.add %489, %490  : i64
    %492 = llvm.call @malloc(%491) : (i64) -> !llvm.ptr<i8>
    %493 = llvm.bitcast %492 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %494 = llvm.ptrtoint %493 : !llvm.ptr<i32> to i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.sub %490, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.urem %497, %490  : i64
    %499 = llvm.sub %497, %498  : i64
    %500 = llvm.inttoptr %499 : i64 to !llvm.ptr<i32>
    %501 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %502 = llvm.insertvalue %493, %501[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %500, %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.insertvalue %504, %503[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %475, %505[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %478, %506[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %482, %507[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %481, %508[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %485, %509[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.insertvalue %481, %511[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %483, %512[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%514 : i64)
  ^bb73(%516: i64):  // 2 preds: ^bb72, ^bb83
    %517 = llvm.icmp "slt" %516, %475 : i64
    llvm.cond_br %517, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%518 : i64)
  ^bb75(%520: i64):  // 2 preds: ^bb74, ^bb82
    %521 = llvm.icmp "slt" %520, %478 : i64
    llvm.cond_br %521, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(4 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%522 : i64)
  ^bb77(%525: i64):  // 2 preds: ^bb76, ^bb81
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%527 : i64)
  ^bb79(%529: i64):  // 2 preds: ^bb78, ^bb80
    %530 = llvm.icmp "slt" %529, %481 : i64
    llvm.cond_br %530, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %531 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mul %14, %532  : i64
    %534 = llvm.mlir.constant(4 : index) : i64
    %535 = llvm.mul %14, %534  : i64
    %536 = llvm.add %533, %535  : i64
    %537 = llvm.add %536, %525  : i64
    %538 = llvm.add %537, %14  : i64
    %539 = llvm.getelementptr %531[%538] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %540 = llvm.load %539 : !llvm.ptr<i32>
    %541 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.extractvalue %513[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.mul %516, %542  : i64
    %544 = llvm.extractvalue %513[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.mul %520, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.extractvalue %513[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.mul %525, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.add %549, %529  : i64
    %551 = llvm.getelementptr %541[%550] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %540, %551 : !llvm.ptr<i32>
    %552 = llvm.add %529, %528  : i64
    llvm.br ^bb79(%552 : i64)
  ^bb81:  // pred: ^bb79
    %553 = llvm.add %525, %524  : i64
    llvm.br ^bb77(%553 : i64)
  ^bb82:  // pred: ^bb77
    %554 = llvm.add %520, %519  : i64
    llvm.br ^bb75(%554 : i64)
  ^bb83:  // pred: ^bb75
    %555 = llvm.add %516, %515  : i64
    llvm.br ^bb73(%555 : i64)
  ^bb84:  // pred: ^bb73
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(4 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    %561 = llvm.mlir.constant(4 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.null : !llvm.ptr<i32>
    %564 = llvm.getelementptr %563[%562] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %565 = llvm.ptrtoint %564 : !llvm.ptr<i32> to i64
    %566 = llvm.mlir.constant(16 : index) : i64
    %567 = llvm.add %565, %566  : i64
    %568 = llvm.call @malloc(%567) : (i64) -> !llvm.ptr<i8>
    %569 = llvm.bitcast %568 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %570 = llvm.ptrtoint %569 : !llvm.ptr<i32> to i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.sub %566, %571  : i64
    %573 = llvm.add %570, %572  : i64
    %574 = llvm.urem %573, %566  : i64
    %575 = llvm.sub %573, %574  : i64
    %576 = llvm.inttoptr %575 : i64 to !llvm.ptr<i32>
    %577 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %578 = llvm.insertvalue %569, %577[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.insertvalue %576, %578[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.insertvalue %580, %579[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.insertvalue %556, %581[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.insertvalue %557, %582[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %584 = llvm.insertvalue %558, %583[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %559, %584[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %561, %585[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %558, %586[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %559, %587[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %560, %588[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%590 : i64)
  ^bb85(%593: i64):  // 2 preds: ^bb84, ^bb95
    %594 = llvm.icmp "slt" %593, %591 : i64
    llvm.cond_br %594, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %595 = llvm.mlir.constant(0 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%595 : i64)
  ^bb87(%598: i64):  // 2 preds: ^bb86, ^bb94
    %599 = llvm.icmp "slt" %598, %596 : i64
    llvm.cond_br %599, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(4 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%600 : i64)
  ^bb89(%603: i64):  // 2 preds: ^bb88, ^bb93
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%605 : i64)
  ^bb91(%608: i64):  // 2 preds: ^bb90, ^bb92
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %610 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.add %14, %14  : i64
    %612 = llvm.add %611, %14  : i64
    %613 = llvm.add %612, %14  : i64
    %614 = llvm.getelementptr %610[%613] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %615 = llvm.load %614 : !llvm.ptr<i32>
    %616 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.extractvalue %513[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.mul %593, %617  : i64
    %619 = llvm.extractvalue %513[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.mul %598, %619  : i64
    %621 = llvm.add %618, %620  : i64
    %622 = llvm.extractvalue %513[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.mul %603, %622  : i64
    %624 = llvm.add %621, %623  : i64
    %625 = llvm.add %624, %608  : i64
    %626 = llvm.getelementptr %616[%625] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %627 = llvm.load %626 : !llvm.ptr<i32>
    %628 = llvm.sub %615, %627  : i32
    %629 = llvm.extractvalue %589[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.mlir.constant(4 : index) : i64
    %631 = llvm.mul %593, %630  : i64
    %632 = llvm.mlir.constant(4 : index) : i64
    %633 = llvm.mul %598, %632  : i64
    %634 = llvm.add %631, %633  : i64
    %635 = llvm.add %634, %603  : i64
    %636 = llvm.add %635, %608  : i64
    %637 = llvm.getelementptr %629[%636] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %628, %637 : !llvm.ptr<i32>
    %638 = llvm.add %608, %607  : i64
    llvm.br ^bb91(%638 : i64)
  ^bb93:  // pred: ^bb91
    %639 = llvm.add %603, %602  : i64
    llvm.br ^bb89(%639 : i64)
  ^bb94:  // pred: ^bb89
    %640 = llvm.add %598, %597  : i64
    llvm.br ^bb87(%640 : i64)
  ^bb95:  // pred: ^bb87
    %641 = llvm.add %593, %592  : i64
    llvm.br ^bb85(%641 : i64)
  ^bb96:  // pred: ^bb85
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    %644 = llvm.mlir.constant(4 : index) : i64
    %645 = llvm.mlir.constant(1 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(4 : index) : i64
    %648 = llvm.mlir.constant(4 : index) : i64
    %649 = llvm.mlir.null : !llvm.ptr<i64>
    %650 = llvm.getelementptr %649[%648] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %651 = llvm.ptrtoint %650 : !llvm.ptr<i64> to i64
    %652 = llvm.mlir.constant(16 : index) : i64
    %653 = llvm.add %651, %652  : i64
    %654 = llvm.call @malloc(%653) : (i64) -> !llvm.ptr<i8>
    %655 = llvm.bitcast %654 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %656 = llvm.ptrtoint %655 : !llvm.ptr<i64> to i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.sub %652, %657  : i64
    %659 = llvm.add %656, %658  : i64
    %660 = llvm.urem %659, %652  : i64
    %661 = llvm.sub %659, %660  : i64
    %662 = llvm.inttoptr %661 : i64 to !llvm.ptr<i64>
    %663 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %664 = llvm.insertvalue %655, %663[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %665 = llvm.insertvalue %662, %664[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.mlir.constant(0 : index) : i64
    %667 = llvm.insertvalue %666, %665[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.insertvalue %642, %667[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %669 = llvm.insertvalue %643, %668[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.insertvalue %644, %669[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.insertvalue %645, %670[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %647, %671[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %644, %672[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %645, %673[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %646, %674[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.mlir.constant(0 : index) : i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%676 : i64)
  ^bb97(%679: i64):  // 2 preds: ^bb96, ^bb107
    %680 = llvm.icmp "slt" %679, %677 : i64
    llvm.cond_br %680, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %681 = llvm.mlir.constant(0 : index) : i64
    %682 = llvm.mlir.constant(1 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%681 : i64)
  ^bb99(%684: i64):  // 2 preds: ^bb98, ^bb106
    %685 = llvm.icmp "slt" %684, %682 : i64
    llvm.cond_br %685, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(4 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%686 : i64)
  ^bb101(%689: i64):  // 2 preds: ^bb100, ^bb105
    %690 = llvm.icmp "slt" %689, %687 : i64
    llvm.cond_br %690, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %691 = llvm.mlir.constant(0 : index) : i64
    %692 = llvm.mlir.constant(1 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%691 : i64)
  ^bb103(%694: i64):  // 2 preds: ^bb102, ^bb104
    %695 = llvm.icmp "slt" %694, %692 : i64
    llvm.cond_br %695, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %696 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %697 = llvm.mlir.constant(4 : index) : i64
    %698 = llvm.mul %679, %697  : i64
    %699 = llvm.mlir.constant(4 : index) : i64
    %700 = llvm.mul %684, %699  : i64
    %701 = llvm.add %698, %700  : i64
    %702 = llvm.add %701, %689  : i64
    %703 = llvm.add %702, %694  : i64
    %704 = llvm.getelementptr %696[%703] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %705 = llvm.load %704 : !llvm.ptr<i32>
    %706 = llvm.sext %705 : i32 to i64
    %707 = llvm.extractvalue %675[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.mlir.constant(4 : index) : i64
    %709 = llvm.mul %679, %708  : i64
    %710 = llvm.mlir.constant(4 : index) : i64
    %711 = llvm.mul %684, %710  : i64
    %712 = llvm.add %709, %711  : i64
    %713 = llvm.add %712, %689  : i64
    %714 = llvm.add %713, %694  : i64
    %715 = llvm.getelementptr %707[%714] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %706, %715 : !llvm.ptr<i64>
    %716 = llvm.add %694, %693  : i64
    llvm.br ^bb103(%716 : i64)
  ^bb105:  // pred: ^bb103
    %717 = llvm.add %689, %688  : i64
    llvm.br ^bb101(%717 : i64)
  ^bb106:  // pred: ^bb101
    %718 = llvm.add %684, %683  : i64
    llvm.br ^bb99(%718 : i64)
  ^bb107:  // pred: ^bb99
    %719 = llvm.add %679, %678  : i64
    llvm.br ^bb97(%719 : i64)
  ^bb108:  // pred: ^bb97
    %720 = llvm.mlir.constant(1 : index) : i64
    %721 = llvm.mlir.constant(4 : index) : i64
    %722 = llvm.mlir.constant(1 : index) : i64
    %723 = llvm.mlir.constant(1 : index) : i64
    %724 = llvm.mlir.constant(4 : index) : i64
    %725 = llvm.mlir.null : !llvm.ptr<i64>
    %726 = llvm.getelementptr %725[%724] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %727 = llvm.ptrtoint %726 : !llvm.ptr<i64> to i64
    %728 = llvm.mlir.constant(16 : index) : i64
    %729 = llvm.add %727, %728  : i64
    %730 = llvm.call @malloc(%729) : (i64) -> !llvm.ptr<i8>
    %731 = llvm.bitcast %730 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %732 = llvm.ptrtoint %731 : !llvm.ptr<i64> to i64
    %733 = llvm.mlir.constant(1 : index) : i64
    %734 = llvm.sub %728, %733  : i64
    %735 = llvm.add %732, %734  : i64
    %736 = llvm.urem %735, %728  : i64
    %737 = llvm.sub %735, %736  : i64
    %738 = llvm.inttoptr %737 : i64 to !llvm.ptr<i64>
    %739 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %740 = llvm.insertvalue %731, %739[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %741 = llvm.insertvalue %738, %740[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %742 = llvm.mlir.constant(0 : index) : i64
    %743 = llvm.insertvalue %742, %741[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %744 = llvm.insertvalue %720, %743[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %745 = llvm.insertvalue %721, %744[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %746 = llvm.insertvalue %722, %745[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %747 = llvm.insertvalue %721, %746[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %748 = llvm.insertvalue %722, %747[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %749 = llvm.insertvalue %723, %748[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %750 = llvm.mlir.constant(0 : index) : i64
    %751 = llvm.mlir.constant(1 : index) : i64
    %752 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%750 : i64)
  ^bb109(%753: i64):  // 2 preds: ^bb108, ^bb116
    %754 = llvm.icmp "slt" %753, %751 : i64
    llvm.cond_br %754, ^bb110, ^bb117
  ^bb110:  // pred: ^bb109
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.mlir.constant(4 : index) : i64
    %757 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%755 : i64)
  ^bb111(%758: i64):  // 2 preds: ^bb110, ^bb115
    %759 = llvm.icmp "slt" %758, %756 : i64
    llvm.cond_br %759, ^bb112, ^bb116
  ^bb112:  // pred: ^bb111
    %760 = llvm.mlir.constant(0 : index) : i64
    %761 = llvm.mlir.constant(1 : index) : i64
    %762 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%760 : i64)
  ^bb113(%763: i64):  // 2 preds: ^bb112, ^bb114
    %764 = llvm.icmp "slt" %763, %761 : i64
    llvm.cond_br %764, ^bb114, ^bb115
  ^bb114:  // pred: ^bb113
    %765 = llvm.extractvalue %749[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %766 = llvm.mlir.constant(4 : index) : i64
    %767 = llvm.mul %753, %766  : i64
    %768 = llvm.add %767, %758  : i64
    %769 = llvm.add %768, %763  : i64
    %770 = llvm.getelementptr %765[%769] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %770 : !llvm.ptr<i64>
    %771 = llvm.add %763, %762  : i64
    llvm.br ^bb113(%771 : i64)
  ^bb115:  // pred: ^bb113
    %772 = llvm.add %758, %757  : i64
    llvm.br ^bb111(%772 : i64)
  ^bb116:  // pred: ^bb111
    %773 = llvm.add %753, %752  : i64
    llvm.br ^bb109(%773 : i64)
  ^bb117:  // pred: ^bb109
    %774 = llvm.mlir.constant(0 : index) : i64
    %775 = llvm.mlir.constant(1 : index) : i64
    %776 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb118(%774 : i64)
  ^bb118(%777: i64):  // 2 preds: ^bb117, ^bb128
    %778 = llvm.icmp "slt" %777, %775 : i64
    llvm.cond_br %778, ^bb119, ^bb129
  ^bb119:  // pred: ^bb118
    %779 = llvm.mlir.constant(0 : index) : i64
    %780 = llvm.mlir.constant(1 : index) : i64
    %781 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb120(%779 : i64)
  ^bb120(%782: i64):  // 2 preds: ^bb119, ^bb127
    %783 = llvm.icmp "slt" %782, %780 : i64
    llvm.cond_br %783, ^bb121, ^bb128
  ^bb121:  // pred: ^bb120
    %784 = llvm.mlir.constant(0 : index) : i64
    %785 = llvm.mlir.constant(4 : index) : i64
    %786 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb122(%784 : i64)
  ^bb122(%787: i64):  // 2 preds: ^bb121, ^bb126
    %788 = llvm.icmp "slt" %787, %785 : i64
    llvm.cond_br %788, ^bb123, ^bb127
  ^bb123:  // pred: ^bb122
    %789 = llvm.mlir.constant(0 : index) : i64
    %790 = llvm.mlir.constant(1 : index) : i64
    %791 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb124(%789 : i64)
  ^bb124(%792: i64):  // 2 preds: ^bb123, ^bb125
    %793 = llvm.icmp "slt" %792, %790 : i64
    llvm.cond_br %793, ^bb125, ^bb126
  ^bb125:  // pred: ^bb124
    %794 = llvm.extractvalue %675[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %795 = llvm.mlir.constant(4 : index) : i64
    %796 = llvm.mul %777, %795  : i64
    %797 = llvm.mlir.constant(4 : index) : i64
    %798 = llvm.mul %782, %797  : i64
    %799 = llvm.add %796, %798  : i64
    %800 = llvm.add %799, %787  : i64
    %801 = llvm.add %800, %792  : i64
    %802 = llvm.getelementptr %794[%801] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %803 = llvm.load %802 : !llvm.ptr<i64>
    %804 = llvm.extractvalue %749[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %805 = llvm.mlir.constant(4 : index) : i64
    %806 = llvm.mul %782, %805  : i64
    %807 = llvm.add %806, %787  : i64
    %808 = llvm.add %807, %792  : i64
    %809 = llvm.getelementptr %804[%808] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %810 = llvm.load %809 : !llvm.ptr<i64>
    %811 = llvm.add %810, %803  : i64
    %812 = llvm.extractvalue %749[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %813 = llvm.mlir.constant(4 : index) : i64
    %814 = llvm.mul %782, %813  : i64
    %815 = llvm.add %814, %787  : i64
    %816 = llvm.add %815, %792  : i64
    %817 = llvm.getelementptr %812[%816] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %811, %817 : !llvm.ptr<i64>
    %818 = llvm.add %792, %791  : i64
    llvm.br ^bb124(%818 : i64)
  ^bb126:  // pred: ^bb124
    %819 = llvm.add %787, %786  : i64
    llvm.br ^bb122(%819 : i64)
  ^bb127:  // pred: ^bb122
    %820 = llvm.add %782, %781  : i64
    llvm.br ^bb120(%820 : i64)
  ^bb128:  // pred: ^bb120
    %821 = llvm.add %777, %776  : i64
    llvm.br ^bb118(%821 : i64)
  ^bb129:  // pred: ^bb118
    %822 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %823 = llvm.insertvalue %275, %822[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %824 = llvm.insertvalue %589, %823[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %825 = llvm.insertvalue %749, %824[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %825 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}


module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<4.95020294> : tensor<1x1x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x f32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x array<1 x f32>>>> to !llvm.ptr<f32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<f32>
    %39 = llvm.getelementptr %38[%33] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<f32> to i64
    %41 = llvm.mlir.constant(16 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<f32> to i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.sub %41, %46  : i64
    %48 = llvm.add %45, %47  : i64
    %49 = llvm.urem %48, %41  : i64
    %50 = llvm.sub %48, %49  : i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr<f32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %53 = llvm.insertvalue %44, %52[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %33, %56[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %34, %57[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %35, %58[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %36, %59[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %34, %60[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %35, %61[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %36, %62[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %37, %63[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%65 : i64)
  ^bb1(%68: i64):  // 2 preds: ^bb0, ^bb11
    %69 = llvm.icmp "slt" %68, %66 : i64
    llvm.cond_br %69, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%70 : i64)
  ^bb3(%73: i64):  // 2 preds: ^bb2, ^bb10
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%75 : i64)
  ^bb5(%78: i64):  // 2 preds: ^bb4, ^bb9
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%80 : i64)
  ^bb7(%83: i64):  // 2 preds: ^bb6, ^bb8
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %85 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.add %68, %73  : i64
    %87 = llvm.add %86, %78  : i64
    %88 = llvm.add %87, %83  : i64
    %89 = llvm.getelementptr %85[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = llvm.sitofp %90 : i32 to f32
    %92 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.add %68, %73  : i64
    %94 = llvm.add %93, %78  : i64
    %95 = llvm.add %94, %83  : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %91, %96 : !llvm.ptr<f32>
    %97 = llvm.add %83, %82  : i64
    llvm.br ^bb7(%97 : i64)
  ^bb9:  // pred: ^bb7
    %98 = llvm.add %78, %77  : i64
    llvm.br ^bb5(%98 : i64)
  ^bb10:  // pred: ^bb5
    %99 = llvm.add %73, %72  : i64
    llvm.br ^bb3(%99 : i64)
  ^bb11:  // pred: ^bb3
    %100 = llvm.add %68, %67  : i64
    llvm.br ^bb1(%100 : i64)
  ^bb12:  // pred: ^bb1
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.null : !llvm.ptr<f32>
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %108 = llvm.ptrtoint %107 : !llvm.ptr<f32> to i64
    %109 = llvm.mlir.constant(16 : index) : i64
    %110 = llvm.add %108, %109  : i64
    %111 = llvm.call @malloc(%110) : (i64) -> !llvm.ptr<i8>
    %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<f32> to i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.sub %109, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.urem %116, %109  : i64
    %118 = llvm.sub %116, %117  : i64
    %119 = llvm.inttoptr %118 : i64 to !llvm.ptr<f32>
    %120 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %121 = llvm.insertvalue %112, %120[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %119, %121[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.insertvalue %123, %122[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %101, %124[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %102, %125[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %103, %126[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %104, %127[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %102, %128[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %104, %130[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%133 : i64)
  ^bb13(%136: i64):  // 2 preds: ^bb12, ^bb23
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%138 : i64)
  ^bb15(%141: i64):  // 2 preds: ^bb14, ^bb22
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%143 : i64)
  ^bb17(%146: i64):  // 2 preds: ^bb16, ^bb21
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%148 : i64)
  ^bb19(%151: i64):  // 2 preds: ^bb18, ^bb20
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %153 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.add %136, %141  : i64
    %155 = llvm.add %154, %146  : i64
    %156 = llvm.add %155, %151  : i64
    %157 = llvm.getelementptr %153[%156] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %158 = llvm.load %157 : !llvm.ptr<f32>
    %159 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.add %136, %141  : i64
    %161 = llvm.add %160, %146  : i64
    %162 = llvm.add %161, %151  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %164 = llvm.load %163 : !llvm.ptr<f32>
    %165 = llvm.fsub %158, %164  : f32
    %166 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.add %136, %141  : i64
    %168 = llvm.add %167, %146  : i64
    %169 = llvm.add %168, %151  : i64
    %170 = llvm.getelementptr %166[%169] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %165, %170 : !llvm.ptr<f32>
    %171 = llvm.add %151, %150  : i64
    llvm.br ^bb19(%171 : i64)
  ^bb21:  // pred: ^bb19
    %172 = llvm.add %146, %145  : i64
    llvm.br ^bb17(%172 : i64)
  ^bb22:  // pred: ^bb17
    %173 = llvm.add %141, %140  : i64
    llvm.br ^bb15(%173 : i64)
  ^bb23:  // pred: ^bb15
    %174 = llvm.add %136, %135  : i64
    llvm.br ^bb13(%174 : i64)
  ^bb24:  // pred: ^bb13
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.null : !llvm.ptr<f32>
    %181 = llvm.getelementptr %180[%175] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<f32> to i64
    %183 = llvm.mlir.constant(16 : index) : i64
    %184 = llvm.add %182, %183  : i64
    %185 = llvm.call @malloc(%184) : (i64) -> !llvm.ptr<i8>
    %186 = llvm.bitcast %185 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %187 = llvm.ptrtoint %186 : !llvm.ptr<f32> to i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.sub %183, %188  : i64
    %190 = llvm.add %187, %189  : i64
    %191 = llvm.urem %190, %183  : i64
    %192 = llvm.sub %190, %191  : i64
    %193 = llvm.inttoptr %192 : i64 to !llvm.ptr<f32>
    %194 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %195 = llvm.insertvalue %186, %194[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %193, %195[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.insertvalue %197, %196[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %175, %198[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %176, %199[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %177, %200[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %178, %201[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %176, %202[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %177, %203[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %178, %204[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %179, %205[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%207 : i64)
  ^bb25(%210: i64):  // 2 preds: ^bb24, ^bb35
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%212 : i64)
  ^bb27(%215: i64):  // 2 preds: ^bb26, ^bb34
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%217 : i64)
  ^bb29(%220: i64):  // 2 preds: ^bb28, ^bb33
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %222 = llvm.mlir.constant(0 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%222 : i64)
  ^bb31(%225: i64):  // 2 preds: ^bb30, ^bb32
    %226 = llvm.icmp "slt" %225, %223 : i64
    llvm.cond_br %226, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %227 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.add %210, %215  : i64
    %229 = llvm.add %228, %220  : i64
    %230 = llvm.add %229, %225  : i64
    %231 = llvm.getelementptr %227[%230] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %232 = llvm.load %231 : !llvm.ptr<f32>
    %233 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.add %215, %220  : i64
    %235 = llvm.add %234, %225  : i64
    %236 = llvm.getelementptr %233[%235] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %237 = llvm.load %236 : !llvm.ptr<f32>
    %238 = llvm.fcmp "olt" %232, %13 : f32
    %239 = llvm.fmul %237, %232  : f32
    %240 = llvm.select %238, %239, %232 : i1, f32
    %241 = llvm.extractvalue %206[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.add %210, %215  : i64
    %243 = llvm.add %242, %220  : i64
    %244 = llvm.add %243, %225  : i64
    %245 = llvm.getelementptr %241[%244] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %240, %245 : !llvm.ptr<f32>
    %246 = llvm.add %225, %224  : i64
    llvm.br ^bb31(%246 : i64)
  ^bb33:  // pred: ^bb31
    %247 = llvm.add %220, %219  : i64
    llvm.br ^bb29(%247 : i64)
  ^bb34:  // pred: ^bb29
    %248 = llvm.add %215, %214  : i64
    llvm.br ^bb27(%248 : i64)
  ^bb35:  // pred: ^bb27
    %249 = llvm.add %210, %209  : i64
    llvm.br ^bb25(%249 : i64)
  ^bb36:  // pred: ^bb25
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.null : !llvm.ptr<i32>
    %256 = llvm.getelementptr %255[%250] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i32> to i64
    %258 = llvm.mlir.constant(16 : index) : i64
    %259 = llvm.add %257, %258  : i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr<i8>
    %261 = llvm.bitcast %260 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i32> to i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.sub %258, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.urem %265, %258  : i64
    %267 = llvm.sub %265, %266  : i64
    %268 = llvm.inttoptr %267 : i64 to !llvm.ptr<i32>
    %269 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %270 = llvm.insertvalue %261, %269[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %268, %270[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.insertvalue %272, %271[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %250, %273[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %251, %274[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %252, %275[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %253, %276[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%282 : i64)
  ^bb37(%285: i64):  // 2 preds: ^bb36, ^bb47
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%287 : i64)
  ^bb39(%290: i64):  // 2 preds: ^bb38, ^bb46
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%292 : i64)
  ^bb41(%295: i64):  // 2 preds: ^bb40, ^bb45
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%297 : i64)
  ^bb43(%300: i64):  // 2 preds: ^bb42, ^bb44
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %302 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.add %285, %290  : i64
    %304 = llvm.add %303, %295  : i64
    %305 = llvm.add %304, %300  : i64
    %306 = llvm.getelementptr %302[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.load %306 : !llvm.ptr<i32>
    %308 = llvm.sub %12, %307  : i32
    %309 = llvm.extractvalue %281[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.add %285, %290  : i64
    %311 = llvm.add %310, %295  : i64
    %312 = llvm.add %311, %300  : i64
    %313 = llvm.getelementptr %309[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %308, %313 : !llvm.ptr<i32>
    %314 = llvm.add %300, %299  : i64
    llvm.br ^bb43(%314 : i64)
  ^bb45:  // pred: ^bb43
    %315 = llvm.add %295, %294  : i64
    llvm.br ^bb41(%315 : i64)
  ^bb46:  // pred: ^bb41
    %316 = llvm.add %290, %289  : i64
    llvm.br ^bb39(%316 : i64)
  ^bb47:  // pred: ^bb39
    %317 = llvm.add %285, %284  : i64
    llvm.br ^bb37(%317 : i64)
  ^bb48:  // pred: ^bb37
    %318 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %319 = llvm.insertvalue %206, %318[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %320 = llvm.insertvalue %281, %319[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %320 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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


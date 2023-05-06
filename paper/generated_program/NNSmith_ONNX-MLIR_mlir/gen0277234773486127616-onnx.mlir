module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %12 = llvm.mlir.constant(0.0099999997764825821 : f64) : f64
    %13 = llvm.mlir.constant(0xFFF0000000000000 : f64) : f64
    %14 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.null : !llvm.ptr<f64>
    %21 = llvm.getelementptr %20[%15] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %22 = llvm.ptrtoint %21 : !llvm.ptr<f64> to i64
    %23 = llvm.mlir.constant(16 : index) : i64
    %24 = llvm.add %22, %23  : i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.bitcast %25 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<f64> to i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.sub %23, %28  : i64
    %30 = llvm.add %27, %29  : i64
    %31 = llvm.urem %30, %23  : i64
    %32 = llvm.sub %30, %31  : i64
    %33 = llvm.inttoptr %32 : i64 to !llvm.ptr<f64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.insertvalue %26, %34[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %15, %38[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %16, %42[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%47 : i64)
  ^bb1(%50: i64):  // 2 preds: ^bb0, ^bb11
    %51 = llvm.icmp "slt" %50, %48 : i64
    llvm.cond_br %51, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%52 : i64)
  ^bb3(%55: i64):  // 2 preds: ^bb2, ^bb10
    %56 = llvm.icmp "slt" %55, %53 : i64
    llvm.cond_br %56, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%57 : i64)
  ^bb5(%60: i64):  // 2 preds: ^bb4, ^bb9
    %61 = llvm.icmp "slt" %60, %58 : i64
    llvm.cond_br %61, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%62 : i64)
  ^bb7(%65: i64):  // 2 preds: ^bb6, ^bb8
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %67 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.add %50, %55  : i64
    %69 = llvm.add %68, %60  : i64
    %70 = llvm.add %69, %65  : i64
    %71 = llvm.getelementptr %67[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %72 = llvm.load %71 : !llvm.ptr<i32>
    %73 = llvm.sitofp %72 : i32 to f64
    %74 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.add %50, %55  : i64
    %76 = llvm.add %75, %60  : i64
    %77 = llvm.add %76, %65  : i64
    %78 = llvm.getelementptr %74[%77] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %73, %78 : !llvm.ptr<f64>
    %79 = llvm.add %65, %64  : i64
    llvm.br ^bb7(%79 : i64)
  ^bb9:  // pred: ^bb7
    %80 = llvm.add %60, %59  : i64
    llvm.br ^bb5(%80 : i64)
  ^bb10:  // pred: ^bb5
    %81 = llvm.add %55, %54  : i64
    llvm.br ^bb3(%81 : i64)
  ^bb11:  // pred: ^bb3
    %82 = llvm.add %50, %49  : i64
    llvm.br ^bb1(%82 : i64)
  ^bb12:  // pred: ^bb1
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.null : !llvm.ptr<f64>
    %89 = llvm.getelementptr %88[%83] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<f64> to i64
    %91 = llvm.mlir.constant(16 : index) : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.bitcast %93 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<f64> to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %91, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.urem %98, %91  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr<f64>
    %102 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %85, %108[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %86, %109[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.null : !llvm.ptr<f64>
    %117 = llvm.getelementptr %116[%115] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %118 = llvm.ptrtoint %117 : !llvm.ptr<f64> to i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.bitcast %119 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %121 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %122 = llvm.insertvalue %120, %121[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %123 = llvm.insertvalue %120, %122[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.insertvalue %124, %123[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.null : !llvm.ptr<f64>
    %128 = llvm.getelementptr %127[%126] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<f64> to i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %132 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %133 = llvm.insertvalue %131, %132[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %134 = llvm.insertvalue %131, %133[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.insertvalue %135, %134[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%137 : i64)
  ^bb13(%140: i64):  // 2 preds: ^bb12, ^bb29
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb14, ^bb30
  ^bb14:  // pred: ^bb13
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%142 : i64)
  ^bb15(%145: i64):  // 2 preds: ^bb14, ^bb28
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb16, ^bb29
  ^bb16:  // pred: ^bb15
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%147 : i64)
  ^bb17(%150: i64):  // 2 preds: ^bb16, ^bb27
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb18, ^bb28
  ^bb18:  // pred: ^bb17
    %152 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %14, %152 : !llvm.ptr<f64>
    %153 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %13, %153 : !llvm.ptr<f64>
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%154 : i64)
  ^bb19(%157: i64):  // 2 preds: ^bb18, ^bb20
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %159 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %160 = llvm.load %159 : !llvm.ptr<f64>
    %161 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.add %157, %140  : i64
    %163 = llvm.add %162, %145  : i64
    %164 = llvm.add %163, %150  : i64
    %165 = llvm.getelementptr %161[%164] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %166 = llvm.load %165 : !llvm.ptr<f64>
    %167 = llvm.fcmp "ogt" %160, %166 : f64
    %168 = llvm.select %167, %160, %166 : i1, f64
    %169 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %168, %169 : !llvm.ptr<f64>
    %170 = llvm.add %157, %156  : i64
    llvm.br ^bb19(%170 : i64)
  ^bb21:  // pred: ^bb19
    %171 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %172 = llvm.load %171 : !llvm.ptr<f64>
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%173 : i64)
  ^bb22(%176: i64):  // 2 preds: ^bb21, ^bb23
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %178 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %179 = llvm.load %178 : !llvm.ptr<f64>
    %180 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.add %176, %140  : i64
    %182 = llvm.add %181, %145  : i64
    %183 = llvm.add %182, %150  : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %185 = llvm.load %184 : !llvm.ptr<f64>
    %186 = llvm.fsub %185, %172  : f64
    %187 = llvm.intr.exp(%186)  : (f64) -> f64
    %188 = llvm.fadd %179, %187  : f64
    %189 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %188, %189 : !llvm.ptr<f64>
    %190 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.add %176, %140  : i64
    %192 = llvm.add %191, %145  : i64
    %193 = llvm.add %192, %150  : i64
    %194 = llvm.getelementptr %190[%193] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %187, %194 : !llvm.ptr<f64>
    %195 = llvm.add %176, %175  : i64
    llvm.br ^bb22(%195 : i64)
  ^bb24:  // pred: ^bb22
    %196 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %197 = llvm.load %196 : !llvm.ptr<f64>
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%198 : i64)
  ^bb25(%201: i64):  // 2 preds: ^bb24, ^bb26
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %203 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.add %201, %140  : i64
    %205 = llvm.add %204, %145  : i64
    %206 = llvm.add %205, %150  : i64
    %207 = llvm.getelementptr %203[%206] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %208 = llvm.load %207 : !llvm.ptr<f64>
    %209 = llvm.fdiv %208, %197  : f64
    %210 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.add %201, %140  : i64
    %212 = llvm.add %211, %145  : i64
    %213 = llvm.add %212, %150  : i64
    %214 = llvm.getelementptr %210[%213] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %209, %214 : !llvm.ptr<f64>
    %215 = llvm.add %201, %200  : i64
    llvm.br ^bb25(%215 : i64)
  ^bb27:  // pred: ^bb25
    %216 = llvm.add %150, %149  : i64
    llvm.br ^bb17(%216 : i64)
  ^bb28:  // pred: ^bb17
    %217 = llvm.add %145, %144  : i64
    llvm.br ^bb15(%217 : i64)
  ^bb29:  // pred: ^bb15
    %218 = llvm.add %140, %139  : i64
    llvm.br ^bb13(%218 : i64)
  ^bb30:  // pred: ^bb13
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.mlir.null : !llvm.ptr<f64>
    %225 = llvm.getelementptr %224[%219] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %226 = llvm.ptrtoint %225 : !llvm.ptr<f64> to i64
    %227 = llvm.mlir.constant(16 : index) : i64
    %228 = llvm.add %226, %227  : i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr<i8>
    %230 = llvm.bitcast %229 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<f64> to i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.sub %227, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.urem %234, %227  : i64
    %236 = llvm.sub %234, %235  : i64
    %237 = llvm.inttoptr %236 : i64 to !llvm.ptr<f64>
    %238 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %239 = llvm.insertvalue %230, %238[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %219, %242[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %220, %243[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %221, %244[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %222, %245[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %220, %246[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %222, %248[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %223, %249[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%251 : i64)
  ^bb31(%254: i64):  // 2 preds: ^bb30, ^bb41
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%256 : i64)
  ^bb33(%259: i64):  // 2 preds: ^bb32, ^bb40
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%261 : i64)
  ^bb35(%264: i64):  // 2 preds: ^bb34, ^bb39
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%266 : i64)
  ^bb37(%269: i64):  // 2 preds: ^bb36, ^bb38
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %271 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.add %254, %259  : i64
    %273 = llvm.add %272, %264  : i64
    %274 = llvm.add %273, %269  : i64
    %275 = llvm.getelementptr %271[%274] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %276 = llvm.load %275 : !llvm.ptr<f64>
    %277 = llvm.intr.floor(%276)  : (f64) -> f64
    %278 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.add %254, %259  : i64
    %280 = llvm.add %279, %264  : i64
    %281 = llvm.add %280, %269  : i64
    %282 = llvm.getelementptr %278[%281] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %277, %282 : !llvm.ptr<f64>
    %283 = llvm.add %269, %268  : i64
    llvm.br ^bb37(%283 : i64)
  ^bb39:  // pred: ^bb37
    %284 = llvm.add %264, %263  : i64
    llvm.br ^bb35(%284 : i64)
  ^bb40:  // pred: ^bb35
    %285 = llvm.add %259, %258  : i64
    llvm.br ^bb33(%285 : i64)
  ^bb41:  // pred: ^bb33
    %286 = llvm.add %254, %253  : i64
    llvm.br ^bb31(%286 : i64)
  ^bb42:  // pred: ^bb31
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.null : !llvm.ptr<f64>
    %293 = llvm.getelementptr %292[%287] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<f64> to i64
    %295 = llvm.mlir.constant(16 : index) : i64
    %296 = llvm.add %294, %295  : i64
    %297 = llvm.call @malloc(%296) : (i64) -> !llvm.ptr<i8>
    %298 = llvm.bitcast %297 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %299 = llvm.ptrtoint %298 : !llvm.ptr<f64> to i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.sub %295, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.urem %302, %295  : i64
    %304 = llvm.sub %302, %303  : i64
    %305 = llvm.inttoptr %304 : i64 to !llvm.ptr<f64>
    %306 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %307 = llvm.insertvalue %298, %306[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %305, %307[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.insertvalue %309, %308[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.insertvalue %287, %310[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.insertvalue %288, %311[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %289, %312[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %290, %313[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.insertvalue %288, %314[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %289, %315[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %290, %316[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %291, %317[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%319 : i64)
  ^bb43(%322: i64):  // 2 preds: ^bb42, ^bb53
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%324 : i64)
  ^bb45(%327: i64):  // 2 preds: ^bb44, ^bb52
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%329 : i64)
  ^bb47(%332: i64):  // 2 preds: ^bb46, ^bb51
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%334 : i64)
  ^bb49(%337: i64):  // 2 preds: ^bb48, ^bb50
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %339 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.add %322, %327  : i64
    %341 = llvm.add %340, %332  : i64
    %342 = llvm.add %341, %337  : i64
    %343 = llvm.getelementptr %339[%342] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %344 = llvm.load %343 : !llvm.ptr<f64>
    %345 = llvm.fcmp "olt" %344, %14 : f64
    %346 = llvm.fmul %344, %12  : f64
    %347 = llvm.select %345, %346, %344 : i1, f64
    %348 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.add %322, %327  : i64
    %350 = llvm.add %349, %332  : i64
    %351 = llvm.add %350, %337  : i64
    %352 = llvm.getelementptr %348[%351] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %347, %352 : !llvm.ptr<f64>
    %353 = llvm.add %337, %336  : i64
    llvm.br ^bb49(%353 : i64)
  ^bb51:  // pred: ^bb49
    %354 = llvm.add %332, %331  : i64
    llvm.br ^bb47(%354 : i64)
  ^bb52:  // pred: ^bb47
    %355 = llvm.add %327, %326  : i64
    llvm.br ^bb45(%355 : i64)
  ^bb53:  // pred: ^bb45
    %356 = llvm.add %322, %321  : i64
    llvm.br ^bb43(%356 : i64)
  ^bb54:  // pred: ^bb43
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.null : !llvm.ptr<i1>
    %363 = llvm.getelementptr %362[%357] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i1> to i64
    %365 = llvm.mlir.constant(16 : index) : i64
    %366 = llvm.add %364, %365  : i64
    %367 = llvm.call @malloc(%366) : (i64) -> !llvm.ptr<i8>
    %368 = llvm.bitcast %367 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %369 = llvm.ptrtoint %368 : !llvm.ptr<i1> to i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.sub %365, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.urem %372, %365  : i64
    %374 = llvm.sub %372, %373  : i64
    %375 = llvm.inttoptr %374 : i64 to !llvm.ptr<i1>
    %376 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %377 = llvm.insertvalue %368, %376[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %375, %377[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.insertvalue %379, %378[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %357, %380[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %358, %381[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %359, %382[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %360, %383[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %358, %384[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %360, %386[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %361, %387[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%389 : i64)
  ^bb55(%392: i64):  // 2 preds: ^bb54, ^bb65
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%394 : i64)
  ^bb57(%397: i64):  // 2 preds: ^bb56, ^bb64
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%399 : i64)
  ^bb59(%402: i64):  // 2 preds: ^bb58, ^bb63
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%404 : i64)
  ^bb61(%407: i64):  // 2 preds: ^bb60, ^bb62
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %409 = llvm.extractvalue %318[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.add %392, %397  : i64
    %411 = llvm.add %410, %402  : i64
    %412 = llvm.add %411, %407  : i64
    %413 = llvm.getelementptr %409[%412] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %414 = llvm.load %413 : !llvm.ptr<f64>
    %415 = llvm.fcmp "one" %414, %14 : f64
    %416 = llvm.extractvalue %388[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.add %392, %397  : i64
    %418 = llvm.add %417, %402  : i64
    %419 = llvm.add %418, %407  : i64
    %420 = llvm.getelementptr %416[%419] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %415, %420 : !llvm.ptr<i1>
    %421 = llvm.add %407, %406  : i64
    llvm.br ^bb61(%421 : i64)
  ^bb63:  // pred: ^bb61
    %422 = llvm.add %402, %401  : i64
    llvm.br ^bb59(%422 : i64)
  ^bb64:  // pred: ^bb59
    %423 = llvm.add %397, %396  : i64
    llvm.br ^bb57(%423 : i64)
  ^bb65:  // pred: ^bb57
    %424 = llvm.add %392, %391  : i64
    llvm.br ^bb55(%424 : i64)
  ^bb66:  // pred: ^bb55
    llvm.return %388 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

